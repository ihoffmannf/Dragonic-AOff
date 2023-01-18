/// @description  Baja el tiempo de inmovilidad / parálisis de todos los NPCs / simulación movimiento

var datosIAMod;

for (var k = 0; k < totalMultiIA; k++) {

    datosIAMod = globalIA[k];

    if (datosIAMod[0] != -1) {
        
        if (datosIAMod[40] != room && !datosIAMod[43]) {
        
            // Inmovilidad / Parálisis
        
            if (datosIAMod[30] != -1) {
                if (datosIAMod[30] > 1) {
                    datosIAMod[30] -= 1;
                } else {
                    datosIAMod[26] = false;
                }
            }
            
            if (obj_pj.nivel >= 24) {
                if (datosIAMod[31] != -1) {
                    if (datosIAMod[31] > 1) {
                        datosIAMod[31] -= 1;
                    } else {
                        datosIAMod[31] = 240;
                        datosIAMod[26] = false;
                    }
                }
            }
            
            // Tiempo lejos del PJ
    
            datosIAMod[32] += 1;
            if (!datosIAMod[2]) {
                if (datosIAMod[32] >= 2700) {
                    datosIAMod[0] = -1;
                    obj_respawn_personas.alarm[0] = 1;
                }
            } else {
                if (datosIAMod[32] >= 3600) {
                    datosIAMod[0] = -1;
                    obj_respawn_personas.alarm[0] = 1;
                }
            }
            
            // Simulación de movimiento
            
            crea = false;
                
            if (datosIAMod[33] == -1) {
            
                // Teletransporte por obj_telep
            
                if (/*!datosIAMod[2] || */!datosIAMod[27] || PJInvi || obj_pj.muerto) {
                
                    // Cambio la dirección de la IA por la inversa del PJ
                
                    if (direccionPJ == datosIAMod[3]) {
                        switch (direccionPJ) {
                            case 0:
                                datosIAMod[3] = 1;
                                break;
                            case 1:
                                datosIAMod[3] = 0;
                                break;
                            case 2:
                                datosIAMod[3] = 3;
                                break;
                            case 3:
                                datosIAMod[3] = 2;
                                break;
                        }
                    }
                
                    if (random(10) > 5) {
                    
                        // Hago movimientos random en el caso de que no sea enemigo, este invi o no esté agitando
                    
                        switch (datosIAMod[3]) {
                            case 0:
                                datosIAMod[1] += 2;
                                if (datosIAMod[1] >= 2224) {
                                    datosIAMod[1] = 2192;
                                }
                                break;
                            case 1:
                                datosIAMod[1] -= 2;
                                if (datosIAMod[1] < 144) {
                                    datosIAMod[1] = 176;
                                }
                                break;
                            case 2:
                                datosIAMod[0] -= 2;
                                if (datosIAMod[0] < 320) {
                                    datosIAMod[0] = 352;
                                }
                                break;
                            case 3:
                                datosIAMod[0] += 2;
                                if (datosIAMod[0] >= 2080) {
                                    datosIAMod[0] = 2048;
                                }
                                break;
                        }
                        
                    }            
                
                    // direccionPJ = -1;
                    
                } else if (direccionPJ != -1 /*&& datosIAMod[2]*/ && datosIAMod[27] && !PJInvi && !datosIAMod[26] && datosIAMod[44] && !obj_pj.muerto) {
                
                    // Si es enemigo, agita, el PJ no esta invi y la IA no esta inmo...
                
                    switch (direccionPJ) {
                        case 0:
                            datosIAMod[1] += 2;
                            if (datosIAMod[1] >= 2224) {
                                crea = true;
                                datosIAMod[1] = 176;
                            }
                            break;
                        case 1:
                            datosIAMod[1] -= 2;
                            if (datosIAMod[1] < 144) {
                                crea = true;
                                datosIAMod[1] = 2192;
                            }
                            break;
                        case 2:
                            datosIAMod[0] -= 2;
                            if (datosIAMod[0] < 320) {
                                crea = true;
                                datosIAMod[0] = 2064;
                            }
                            break;
                        case 3:
                            datosIAMod[0] += 2;
                            if (datosIAMod[0] >= 2080) {
                                crea = true;
                                datosIAMod[0] = 320;
                            }
                            break;
                    }
                    
                    datosIAMod[3] = direccionPJ;
                    
                    if (crea) {
                        datosIAMod[43] = true;
						globalIA[k] = datosIAMod;
                        crearIADelMundo();
                    }
                    
                }
            
            } else {
            
                // Teletransporte por obj_tp
            
                if (/*!datosIAMod[2] ||*/ !datosIAMod[27] || PJInvi || obj_pj.muerto) {
                
                    // Cambio la dirección de la IA por la inversa del PJ
                
                    if (direccionPJ == datosIAMod[3]) {
                        switch (direccionPJ) {
                            case 0:
                                datosIAMod[3] = 1;
                                break;
                            case 1:
                                datosIAMod[3] = 0;
                                break;
                            case 2:
                                datosIAMod[3] = 3;
                                break;
                            case 3:
                                datosIAMod[3] = 2;
                                break;
                        }
                    }
                
                    if (random(10) > 5) {
                    
                        // Hago movimientos random en el caso de que no sea enemigo, este invi o no esté agitando
                    
                        switch (datosIAMod[3]) {
                            case 0:
                                datosIAMod[1] += 2;
                                if (datosIAMod[1] >= 2224) {
                                    datosIAMod[1] = 2192;
                                }
                                break;
                            case 1:
                                datosIAMod[1] -= 2;
                                if (datosIAMod[1] < 144) {
                                    datosIAMod[1] = 176;
                                }
                                break;
                            case 2:
                                datosIAMod[0] -= 2;
                                if (datosIAMod[0] < 320) {
                                    datosIAMod[0] = 352;
                                }
                                break;
                            case 3:
                                datosIAMod[0] += 2;
                                if (datosIAMod[0] >= 2080) {
                                    datosIAMod[0] = 2048;
                                }
                                break;
                        }
                        
                    }            
                
                    // direccionPJ = -1;
                    
                } else if (direccionPJ != -1 /*&& datosIAMod[2]*/ && datosIAMod[27] && !PJInvi && !datosIAMod[26] && datosIAMod[44] && !obj_pj.muerto) {
                
                    // Si es enemigo, agita, el PJ no esta invi y la IA no esta inmo...
                    
                    switch (direccionPJ) {
                        case 0:
                            if (datosIAMod[1] < datosIAMod[36]) {
                                datosIAMod[1] += 2;
                            }
                            break;
                        case 1:
                            if (datosIAMod[1] > datosIAMod[36]) {
                                datosIAMod[1] -= 2;
                            }
                            break;
                        case 2:
                            if (datosIAMod[0] > datosIAMod[35]) {
                                datosIAMod[0] -= 2;
                            }
                            break;
                        case 3:
                            if (datosIAMod[0] < datosIAMod[35]) {
                                datosIAMod[0] += 2;
                            }
                            break;
                    }
                    
                    if (datosIAMod[34] > 0) {
                        datosIAMod[34] -= 1.25;
                    } else {
                        crea = true;
                    }
                    
                    datosIAMod[3] = direccionPJ;
                    
                    if (crea) {
                        datosIAMod[43] = true;
						globalIA[k] = datosIAMod;
                        crearIADelMundo();
                    }
                    
                } 
            
            }
            
        }
    
    }
	
	if (!crea)
		globalIA[k] = datosIAMod;

}

/* */
/*  */
