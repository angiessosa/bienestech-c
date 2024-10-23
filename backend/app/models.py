from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Date, Time
from sqlalchemy.orm import relationship
from .database import Base


class Usuario(Base):
    __tablename__ = "usuarios"

    idUsuario = Column(Integer, primary_key=True, index=True)
    tipoDocumento = Column(String(50))
    numeroDocumento = Column(String(15), unique=True, index=True)
    nombres = Column(String(100))
    apellidos = Column(String(100))
    correoUsuario = Column(String(250))
    claveUsuario = Column(String(60))
    idRol = Column(Integer)
    estado = Column(String, default="pendiente")  # Estado por defecto "pendiente"
    areaEncargada = Column(String)


class Rol(Base):
    __tablename__ = "rol"

    idRol = Column(Integer, primary_key=True, index=True)
    tipoRol = Column(String(20))


class Taller(Base):
    __tablename__ = 'taller'
    idTaller = Column(Integer, primary_key=True, index=True)
    centroFormacion = Column(String)
    jornada = Column(String)
    coordinacion = Column(String)
    numFicha = Column(String)
    tema = Column(Integer)  # Puede ser una FK dependiendo de cómo lo tengas
    fechaYHora = Column(DateTime)
    observaciones = Column(String)


class Temas(Base):
    __tablename__ = "tematicas"

    idTematicas =  Column(Integer, primary_key=True, index=True)
    tema = Column(String, unique=True, index=True)


class UsuarioTaller(Base):
    __tablename__ = 'usuario_taller'

    idUsuarioTaller = Column(Integer, primary_key=True, index=True)
    idUsuario = Column(Integer, ForeignKey('usuarios.idUsuario'))
    idTaller = Column(Integer, ForeignKey('taller.idTaller'))


class Horarios(Base):
    __tablename__ = "horarios"

    idHorario =  Column(Integer, primary_key=True, index=True)
    idUsuario = Column(Integer, ForeignKey("usuarios.idUsuario"))
    idTaller = Column(Integer, ForeignKey("taller.idTaller"))
    fecha = Column(Date)
    horaInicio = Column(Time)
    horaFin = Column(Time)

class Ficha(Base):
    __tablename__ = "ficha"

    idFicha =  Column(Integer, primary_key=True, index=True)
    numFicha = Column(String(11))
    jornada =  Column(String(10))
    idPrograma = Column(Integer, ForeignKey("programa.idPrograma"))
    nombreCoordinacion = Column(String(100))

class Coordinacion(Base):
    __tablename__ = "coordinacion"

    idCoordinacion =   Column(Integer, primary_key=True, index=True)
    nombreCoordinacion = Column(String(100))

class Programa(Base):
    __tablename__ = "programa"

    idPrograma =   Column(Integer, primary_key=True, index=True)
    nombrePrograma = Column(String(100))