from fastapi import FastAPI, APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.models import Usuario
from app.schemas import UsuarioCreate, UsuarioLogin
import bcrypt

router = APIRouter()


# Registro de usuarios
@router.post("/registro")
def registrer_user(user: UsuarioCreate, db: Session = Depends(get_db)):
    # Mostrar los datos recibidos
    print(f"Datos recibidos: {user}")

    # Verificar si el usuario ya existe
    user_existence = db.query(Usuario).filter(Usuario.numeroDocumento == user.numeroDocumento).first()
    if user_existence:
        raise HTTPException(status_code=400, detail="El usuario ya existe")
    
    # Encriptar la contraseña
    hashed_password = bcrypt.hashpw(user.claveUsuario.encode('utf-8'), bcrypt.gensalt())

    # Crear nuevo usuario
    nuevo_usuario = Usuario(
        tipoDocumento=user.tipoDocumento,
        numeroDocumento=user.numeroDocumento,
        nombres=user.nombres,
        apellidos=user.apellidos,
        correoUsuario=user.correoUsuario,
        claveUsuario=hashed_password.decode('utf-8'),
        idRol=user.idRol,
        estado="pendiente"  # Estado inicial como pendiente
    )

    # Guardar el nuevo usuario en la base de datos
    db.add(nuevo_usuario)
    db.commit()
    db.refresh(nuevo_usuario)

    return {"message": "Usuario registrado exitosamente. Solicitud pendiente de aprobación"}



#usuarios pendientes
@router.get("/usuarios/pendientes")
def get_usuarios_pendientes(db: Session = Depends(get_db)):
    usuarios_pendientes = db.query(Usuario).filter(Usuario.estado == "pendiente").all()
    return usuarios_pendientes


@router.put("/usuarios/{idUsuario}/estado")
def update_estado_usuario(idUsuario: int, estado: str, db: Session = Depends(get_db)):

    # Buscar el usuario por su ID
    usuario = db.query(Usuario).filter(Usuario.idUsuario == idUsuario).first()
    
    # Si el usuario no existe, lanzar un error 404
    if not usuario:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    
    # Actualizar el estado del usuario (puede ser "aprobado" o "rechazado")
    usuario.estado = estado
    db.commit()  # Guardar los cambios en la base de datos
    
    # Devolver un mensaje de éxito
    return {"message": f"Estado del usuario actualizado a {estado}"}





#login
@router.post("/login")
def login(user: UsuarioLogin, db: Session = Depends(get_db)):

    #Verificar si el usuario existe
    usuario = db.query(Usuario).filter(Usuario.numeroDocumento == user.numeroDocumento).first()

    #validar si el usuario existe
    if not usuario:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    
    #validar si el usuario es aprobado
    if usuario.estado != "aprobado":
        raise HTTPException(status_code=403, detail="Usuario no aprobado")
    
    #validar la contraseña
    if not bcrypt.checkpw(user.claveUsuario.encode('utf-8'), usuario.claveUsuario.encode('utf-8')):
        raise HTTPException(status_code=401, detail="Contraseña incorrecta")
    
    return {"message": "Login exitoso", "rol": usuario.idRol, "nombres": usuario.nombres}
