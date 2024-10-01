import React, { useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import './registro.css';

const ImagesB = require.context('../../assets', true);

const Registro = () => {
  const [tipoDocumento, settipoDocumento] = useState('');
  const [numeroDocumento, setnumeroDocumento] = useState('');
  const [nombres, setnombres] = useState('');
  const [apellidos, setapellidos] = useState('');
  const [correoUsuario, setcorreoUsuario] = useState('');
  const [claveUsuario, setclaveUsuario] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [idRol, setidRol] = useState('');
  const [error, setError] = useState('');
  const [isSubmitted, setIsSubmitted] = useState(false);
  const [passwordMatch, setPasswordMatch] = useState(true);

  // Estados para validar la contraseña
  const [isLengthValid, setIsLengthValid] = useState(false);
  const [hasUppercase, setHasUppercase] = useState(false);
  const [hasLowercase, setHasLowercase] = useState(false);
  const [hasNumber, setHasNumber] = useState(false);
  const [hasSpecialChar, setHasSpecialChar] = useState(false);

  const handlePasswordChange = (password) => {
    setclaveUsuario(password);

    // Validar si la contraseña cumple con las reglas
    setIsLengthValid(password.length >= 8);
    setHasUppercase(/[A-Z]/.test(password));
    setHasLowercase(/[a-z]/.test(password));
    setHasNumber(/\d/.test(password));
    setHasSpecialChar(/[!@#$%^&*(),.?":{}|<>]/.test(password));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Verificar si las contraseñas coinciden
    if (claveUsuario !== confirmPassword) {
      setPasswordMatch(false);
      return;
    } else {
      setPasswordMatch(true);
    }

    // Asegurarse de que todas las reglas de la contraseña se cumplan
    if (!isLengthValid || !hasUppercase || !hasLowercase || !hasNumber || !hasSpecialChar) {
      setError("Por favor, asegúrese de que la contraseña cumpla con todas las reglas.");
      return;
    }

    try {
      const response = await axios.post('http://localhost:8000/registro', {
        tipoDocumento,
        numeroDocumento,
        nombres,
        apellidos,
        correoUsuario,
        claveUsuario,
        idRol
      });
      console.log(response.data);
      setIsSubmitted(true);
    } catch (error) {
      console.error(error.response ? error.response.data : error);
      setError("Error al registrar usuario");
    }
  };

  return (
    <div className="regisyini">
      <div>
        <nav className="navbar nnn">
          <img src={ImagesB('./logosena.png')} width="90" height="90" alt="Logo SENA" />
          <img src={ImagesB('./logobienestech.png')} alt="Logo BienesTech" />
        </nav>

        <div className="container">
          <div className="form-container">
            <h2 className="h2r">Regístrate</h2>
            <form onSubmit={handleSubmit}>
        <div className="row">
            <div className="col-md-4 mb-3">
            <label htmlFor="document-type" className="form-label">Tipo de Documento</label>
            <select className="tp form-selectt" value={tipoDocumento} onChange={(e) => settipoDocumento(e.target.value)} required>
                <option value="">Seleccione una opción</option>
                <option value="C.C">Cédula de Ciudadania</option>
                <option value="C.E">Cédula de Extranjeria</option>
            </select>
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="document-number" className="form-label">Número de Documento</label>
            <input
                type="text"
                value={numeroDocumento}
                className="form-controll"
                id="document-number"
                required
                onChange={(e) => setnumeroDocumento(e.target.value)}
            />
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="first-name" className="form-label">Nombres</label>
            <input
                type="text"
                value={nombres}
                className="form-controll"
                id="first-name"
                required
                onChange={(e) => setnombres(e.target.value)}
            />
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="last-name" className="form-label">Apellidos</label>
            <input
                type="text"
                value={apellidos}
                className="form-controll"
                id="last-name"
                required
                onChange={(e) => setapellidos(e.target.value)}
            />
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="email" className="form-label">Correo</label>
            <input
                type="email"
                value={correoUsuario}
                className="form-controll"
                id="email"
                required
                onChange={(e) => setcorreoUsuario(e.target.value)}
            />
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="document-type" className="form-label">Rol</label>
            <br/>
                <select className="tp form-selectt" value={idRol} onChange={(e) => setidRol(e.target.value)} required>
                    <option value="">Seleccione una opción</option>
                    <option value="1">Administrador</option>
                    <option value="2">Coordinador</option>
                </select>
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="password" className="form-label">Contraseña</label>
            <input
                type="password"
                value={claveUsuario}
                className="form-controll"
                id="password"
                required
                onChange={(e) => handlePasswordChange(e.target.value)}
            />
            </div>
            <div className="col-md-4 mb-3">
            <label htmlFor="confirm-password" className="form-label">Confirmar Contraseña</label>
            <input
                type="password"
                value={confirmPassword}
                className="form-controll"
                id="confirm-password"
                required
                onChange={(e) => setConfirmPassword(e.target.value)}
            />
            {!passwordMatch && <p className="text-danger">Las contraseñas no coinciden.</p>}
            </div>

            
        </div>
        <div className="container">
            <p>Validación de Contraseña</p>
            <ul className="password-rules">
                <li className={isLengthValid ? 'valid' : ''}>Al menos 8 caracteres</li>
                <li className={hasUppercase ? 'valid' : ''}>Al menos una letra mayúscula</li>
                <li className={hasLowercase ? 'valid' : ''}>Al menos una letra minúscula</li>
                <li className={hasNumber ? 'valid' : ''}>Al menos un número</li>
                <li className={hasSpecialChar ? 'valid' : ''}>
                    Al menos un carácter especial (&quot;! @ # $ % ^ &amp; * , . ? : | &gt; &lt;&quot;)
                </li>
            </ul>
        </div>

        <div className="row mt-4">
            <div className="col-12 text-center">
            <button type="submit" className="btn btn-success submit-btn" disabled={isSubmitted}>
                {isSubmitted ? 'Enviando...' : 'Registrarme'}
            </button>
            <p></p>
            {error && <p>{error}</p>}
            </div>
        </div>
        
        </form>
            <p className="p">¿Ya está registrado? <Link to="/login">Iniciar sesión</Link></p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Registro;
