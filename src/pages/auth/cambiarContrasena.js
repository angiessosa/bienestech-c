import React, { useState } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';
import NavIndex from '../../components/navindex';
import PiePagina from '../../components/piePagina';

const ImagesB = require.context('../../assets', true);


const RecuperarContraseña = () => {
  const [correoUsuario, setcorreoUsuario] = useState('');
  const [mensaje, setMensaje] = useState('');
  const [error, setError] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/recuperar-contraseña', { correoUsuario });
      setMensaje(response.data.message);
      setError('');
    } catch (error) {
      setError(error.response ? error.response.data.detail : 'Error al enviar la solicitud');
      setMensaje('');
    }
  };

  return (
    <div>
      <NavIndex/>
      <div className='container'>
        <div className='form-containerlogin'>
        <h2 className='h2r'>Cambiar Contraseña</h2>
      <form onSubmit={handleSubmit}>
        
        <label htmlFor="numeroDocumento">Correo Electrónico</label>
        <input
          type="text"
          id="numeroDocumento"
          className='form--input td opcion'
          value={correoUsuario}
          placeholder='Correo Electrónico'
          onChange={(e) => setcorreoUsuario(e.target.value)}
          required
        />
        <br/>
        <br/>
        <div className='col-12 text-center'>
        <button type="submit" className='btn btn-success submit-btn'>Enviar Instrucciones</button>
        </div>
        
      </form>
      <br/>
      {mensaje && <p>{mensaje}</p>}
      {error && <p className="text-danger">{error}</p>}
      <p className='p'><Link to="/login">Volver al inicio de sesión</Link></p>
  
      </div>
      </div>
      <PiePagina/>
    </div>
  );
};

export default RecuperarContraseña;
