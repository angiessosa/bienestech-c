import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import NavbarCordi from "../../components/nabCordi";
import PiePagina from "../../components/piePagina";
import "./coordi.css";

const Perfil = () => {
    const [perfil, setPerfil] = useState({
        tipoDocumento: "",
        numeroDocumento: "",
        nombres: "",
        apellidos: "",
        claveUsuario: "",
    });

    const token = localStorage.getItem("access_token");

    const axiosConfig = {
        headers: {
            Authorization: `Bearer ${token}`,
        },
    };

    const obtenerDatosPerfil = async () => {
        try {
            const response = await axios.get("http://localhost:8000/perfil", axiosConfig);
            setPerfil(response.data);
        } catch (error) {
            console.error("Error al obtener los datos del perfil:", error);
            alert("No se pudieron cargar los datos del perfil.");
        }
    };

    const actualizarPerfil = async (e) => {
        e.preventDefault();
        try {
            await axios.put("http://localhost:8000/perfil", perfil, axiosConfig);
            alert("Perfil actualizado correctamente");
        } catch (error) {
            console.error("Error al actualizar el perfil:", error);
            alert("Error al actualizar el perfil");
        }
    };

    useEffect(() => {
        obtenerDatosPerfil();
    }, []);

    const handleChange = (e) => {
        setPerfil({
            ...perfil,
            [e.target.name]: e.target.value,
        });
    };

    return (
        <div>
            <NavbarCordi />
            <div className="fondoo">
                <div className="container containerr">
                    <div className="row justify-content-center">
                        <div className="col-md-6">
                            <h1 className="h1">Perfil</h1>
                            <form className="form-containerr perfil" onSubmit={actualizarPerfil}>
                                <div className="mb-3">
                                    <label htmlFor="tipoDocumento" className="form-label">Tipo Documento</label>
                                    <select
                                        id="tipoDocumento"
                                        name="tipoDocumento"
                                        className="form-select"
                                        value={perfil.tipoDocumento}
                                        onChange={handleChange}
                                    >
                                        <option value="">Seleccione una opción..</option>
                                        <option value="Cédula de Ciudadanía">Cédula de Ciudadanía</option>
                                        <option value="Cédula de extranjería">Cédula de extranjería</option>
                                    </select>
                                </div>
                                <div className="mb-3">
                                    <label className="form-label">Número de Documento</label>
                                    <input
                                        type="text"
                                        name="numeroDocumento"
                                        className="form-control"
                                        value={perfil.numeroDocumento}
                                        onChange={handleChange}
                                        placeholder="Ingresar.."
                                    />
                                </div>
                                <div className="mb-3">
                                    <label className="form-label">Nombre Completo</label>
                                    <input
                                        type="text"
                                        name="nombres"
                                        className="form-control"
                                        value={perfil.nombres}
                                        onChange={handleChange}
                                        placeholder="Ingresar.."
                                    />
                                </div>
                                <div className="mb-3">
                                    <label htmlFor="claveUsuario" className="form-label">Contraseña</label>
                                    <input
                                        type="password"
                                        name="claveUsuario"
                                        className="form-control"
                                        value={perfil.claveUsuario}
                                        onChange={handleChange}
                                        placeholder="Nueva contraseña"
                                    />
                                </div>
                                <div className="d-flex justify-content-center">
                                    <button type="submit" className="butonimportar">
                                        <img
                                            width="16"
                                            height="16"
                                            src="https://img.icons8.com/tiny-color/16/refresh.png"
                                            alt="refresh"
                                            style={{ marginRight: 10 }}
                                        />
                                        Actualizar
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <PiePagina />
        </div>
    );
};

export default Perfil;
