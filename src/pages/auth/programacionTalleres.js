import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import Navbar from '../../components/navbar';
import PiePagina from '../../components/piePagina';

import "./admin.css";

const ProgramacionTalleres  = () => {
    return(
        <div className="agd-container">
            <Navbar/>
            <div className="container">
            <h2 className="mb-4 text-center h2A">Programación Talleres</h2>
            </div>
            <PiePagina/>
        </div>

    );
};

export default ProgramacionTalleres;
