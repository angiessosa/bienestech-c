import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import Navbar from '../../components/navbar';
import PiePagina from '../../components/piePagina';
import axios from 'axios';

const ConsultarFichas = () => {
    const navigate = useNavigate();
    const location = useLocation();
    const queryParams = new URLSearchParams(location.search);
    const turno = queryParams.get('turno') || 'diurna';  // Obtenemos el turno

    const [selectedCoordinacion, setSelectedCoordinacion] = useState('');
    const [selectedPrograma, setSelectedPrograma] = useState('');
    const [selectedFicha, setSelectedFicha] = useState('');
    const [fichas, setFichas] = useState([]);  // Para almacenar las fichas filtradas
    const [coordinaciones, setCoordinaciones] = useState([]);  // Para almacenar las opciones de coordinación
    const [programas, setProgramas] = useState([]);  // Para almacenar las opciones de programa
    const [numerosFichas, setNumerosFichas] = useState([]);  // Para almacenar las opciones de ficha

    const [showModal, setShowModal] = useState(false);

    // Función para manejar el logout
    const handleLogout = () => {
        localStorage.removeItem('userRole');
        localStorage.removeItem('userName');
        navigate('/', { replace: true });
    };

    // Función para buscar fichas filtradas
    const handleSearch = async () => {
        if (!selectedCoordinacion && !selectedPrograma && !selectedFicha) {
            setShowModal(true); // Mostrar modal si no se selecciona ningún filtro
        } else {
            try {
                const response = await axios.get(`http://localhost:8000/consultar-fichas`, {
                    params: {
                        jornada: turno,  // Pasamos el turno seleccionado como parte del filtro
                        coordinacion: selectedCoordinacion,
                        programa: selectedPrograma,
                        numeroFicha: selectedFicha
                    }
                });
                setFichas(response.data);  // Actualizamos las fichas obtenidas
            } catch (error) {
                console.error("Error al obtener las fichas", error);
            }
        }
    };

    // Función para obtener los valores de los filtros desde el backend
    const fetchOptions = async () => {
        try {
            const responseCoordinaciones = await axios.get('http://localhost:8000/coordinaciones');
            const responseProgramas = await axios.get('http://localhost:8000/programas');
            const responseFichas = await axios.get('http://localhost:8000/numeros-ficha');

            setCoordinaciones(responseCoordinaciones.data);
            setProgramas(responseProgramas.data);
            setNumerosFichas(responseFichas.data);
        } catch (error) {
            console.error("Error al obtener las opciones", error);
        }
    };

    // Cargar las opciones al montar el componente
    useEffect(() => {
        fetchOptions();
    }, []);

    const handleCloseModal = () => {
        setShowModal(false); // Cerrar el modal
    };


    return (
        <div className="fondo">
            <Navbar />
            <div className="container">
                <h2 className="h2">Consultar Fichas - {turno.toUpperCase()}</h2>
                <div className="row">
                    <div className="col-md-5"></div>
                    <div className="col-md-2"></div>
                </div>
            </div>

            <div className="container mt-5">
                <div className="row justify-content-center g-4">
                    <div className="col-md-4">
                        <div className="card-custom">
                            <label>Seleccione Coordinación: </label>
                            <input type="text" className="filter-input mb-2" placeholder="Buscar..." />
                            <select className="form-select" value={selectedCoordinacion} onChange={(e) => setSelectedCoordinacion(e.target.value)}>
                                <option value="">Seleccionar...</option>
                                {coordinaciones.map((coord) => (
                                    <option key={coord.id} value={coord.nombrecoordinacion}>{coord.nombrecoordinacion}</option>
                                ))}
                            </select>
                        </div>
                    </div>

                    <div className="col-md-4">
                        <div className="card-custom">
                            <label>Seleccione Programa:</label>
                            <input type="text" className="filter-input mb-2" placeholder="Buscar..." />
                            <select className="form-select" value={selectedPrograma} onChange={(e) => setSelectedPrograma(e.target.value)}>
                                <option value="">Seleccionar...</option>
                                {programas.map((prog) => (
                                    <option key={prog.id} value={prog.nombreprograma}>{prog.nombreprograma}</option>
                                ))}
                            </select>
                        </div>
                    </div>

                    <div className="col-md-4">
                        <div className="card-custom">
                            <label>Seleccione Número de Ficha: </label>
                            <input type="text" className="filter-input mb-2" placeholder="Buscar..." />
                            <select className="form-select" value={selectedFicha} onChange={(e) => setSelectedFicha(e.target.value)}>
                                <option value="">Seleccionar...</option>
                                {numerosFichas.map((ficha) => (
                                    <option key={ficha.id} value={ficha.numero_de_ficha}>{ficha.numero_de_ficha}</option>
                                ))}
                            </select>
                        </div>
                    </div>

                    <div className="d-flex justify-content-center mt-3">
                        <button className="btnBusa" type="button" onClick={handleSearch}>
                            <img width={30} height={30} src="icono_buscar.png" alt="Buscar" />
                            Buscar
                        </button>
                    </div>

                    {/* Modal */}
                    {showModal && (
                        <div className="d-flex justify-content-center container-modal sopcionF">
                            <div className="content-modal">
                                <h2 className="h22">Por favor seleccione una opción</h2>
                                <div className="btn-cerrar d-flex justify-content-center">
                                    <button className=" btn-cerrar btnOkF" onClick={handleCloseModal}>OK</button>
                                </div>
                            </div>
                        </div>
                    )}
                </div>
            </div>
            <PiePagina />
        </div>
    );
}

export default ConsultarFichas;