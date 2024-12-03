import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from "axios";
import Navbar from '../../components/navbar';
import PiePagina from '../../components/piePagina';
import "./admin.css";

const ImagesB = require.context('../../assets', true);

const Admin = () => {
    const navigate = useNavigate();

    // Estados para manejar datos y errores
    const [talleres, setTalleres] = useState([]);
    const [message, setMessage] = useState(null); // Mensaje de la API
    const [error, setError] = useState(null); // Mensaje de error

    // Manejar el cierre de sesión
    const handleLogout = () => {
        localStorage.removeItem('userRole');
        localStorage.removeItem('userName');
        navigate('/', { replace: true });
    };

    // Obtener los talleres al cargar el componente
    useEffect(() => {
        const fetchTalleres = async () => {
            try {
                // Llamar a la API para obtener los talleres
                const response = await axios.get("http://localhost:8000/buscarTalleres");
                console.log(response.data); // Verificar los datos en consola
                
                if (response.data.data) {
                    setTalleres(response.data.data); // Asignar talleres al estado
                }
                setMessage(response.data.message); // Guardar el mensaje de la respuesta

            } catch (error) {
                console.error("Error al obtener los talleres:", error);
                setError("No se pudieron cargar los talleres. Por favor, intenta más tarde.");
            }
        };
        
        fetchTalleres(); // Ejecutar la función
    }, []);

    // Renderizar el componente
    return (
        <div className="admin-container">
            {/* Barra de navegación */}
            <Navbar handleLogout={handleLogout} />

            <div className="container mt-4">
                <h2 className="h2A text-center">Talleres de hoy</h2>

                {/* Mostrar un error si ocurre */}
                {error && <div className="alert alert-danger">{error}</div>}

                {/* Mostrar talleres o un mensaje si no hay */}
                <div className="row talleres">
                    {talleres.length === 0 ? (
                        <p>{message}</p> // Mostrar mensaje si no hay talleres
                    ) : (
                        talleres.map((taller) => (
                            <div key={taller.idTaller} className="col-md-4 mb-4">
                                <div className="card">
                                    <div className="card-body">
                                        <h5 className="card-title text-verde">ID Taller: {taller.idTaller}</h5>
                                        <div className="text-verde">
                                            <p><strong>Fecha:</strong> {new Date(taller.fechaYHora).toLocaleDateString()}</p>
                                            <p><strong>Hora:</strong> {new Date(taller.fechaYHora).toLocaleTimeString()}</p>
                                            <p><strong>Temática:</strong> {taller.tema}</p>
                                            <p><strong>Nombre Profesional:</strong> {taller.nombre_profesional}</p>
                                            <p><strong>Num Ficha:</strong> {taller.numFicha}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        ))
                    )}
                </div>
            </div>

            {/* Pie de página */}
            <PiePagina />
        </div>
    );
};

export default Admin;
