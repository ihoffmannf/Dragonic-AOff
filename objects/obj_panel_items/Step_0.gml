/// @description  Control general / control mouse

if (!modoBanco) {
    if (idPadre != -1) {
        if (instance_exists(idPadre)) {
            if (
            (idPadre.x < __view_get( e__VW.XView, 0 ) || idPadre.x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) ||
            (idPadre.y < __view_get( e__VW.YView, 0 ) || idPadre.y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
            ) {
               mostrado = false; 
            }
        } else {
            mostrado = false;  
        }
    }
} else {
    if (idBanquero != -1) {
        if (instance_exists(idBanquero)) {
            if (
            (idBanquero.x < __view_get( e__VW.XView, 0 ) || idBanquero.x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) ||
            (idBanquero.y < __view_get( e__VW.YView, 0 ) || idBanquero.y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
            ) {
               mostrado = false; 
            }
        } else {
            mostrado = false;  
        }
    }
}


if (mostrado) {
    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5;
    y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5;    
} else {
    idPadre = -1;
    idBanquero = -1;
    indiceItem = -1;
    descItem = "";
    precioItem = 0;
    validoItem = "";     
    modoBanco = false;
    deviceMantenido = -1;
    clicMantenido = false;
    alarm[0] = -1;
    alarm[1] = -1;
}

// Control mouse

var device = -1;

if (
device_mouse_check_button(0, mb_left) ||
device_mouse_check_button(1, mb_left) ||
device_mouse_check_button(2, mb_left) ||
device_mouse_check_button(3, mb_left) ||
device_mouse_check_button(4, mb_left)
) {

    device = elegirDeviceLibre();

    if (device != -1) {
    
        if (device_mouse_check_button_pressed(device, mb_left) && position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {
        
            obj_control_devices.devicesL[device] = true;
            
            // Clic

            // //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            // MODO COMÚN
            // //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            if (mostrado && !modoBanco) {
            
                obj_hechizos.moviendoHechizo = false;
                
                var posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 144;
                var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
                
                if (
                (device_mouse_x(device) >= posX + 150 && device_mouse_x(device) <= posX + 279) &&
                (device_mouse_y(device) >= posY + 47 && device_mouse_y(device) <= posY + 207)
                ) {
                
                    var modY = posY + 47;
                
                    sectorNpc = false;
                    sectorPj = true;
                    
                    indiceItem = -1;
                    
                    if (device_mouse_y(device) >= modY && device_mouse_y(device) < modY + 8 * 1) {
                        indiceItem = 0;
                    } else if (device_mouse_y(device) >= modY + 8 * 1 && device_mouse_y(device) < modY + 8 * 2) {
                        indiceItem = 1;
                    } else if (device_mouse_y(device) >= modY + 8 * 2 && device_mouse_y(device) < modY + 8 * 3) {
                        indiceItem = 2;
                    } else if (device_mouse_y(device) >= modY + 8 * 3 && device_mouse_y(device) < modY + 8 * 4) {
                        indiceItem = 3;
                    } else if (device_mouse_y(device) >= modY + 8 * 4 && device_mouse_y(device) < modY + 8 * 5) {
                        indiceItem = 4;
                    } else if (device_mouse_y(device) >= modY + 8 * 5 && device_mouse_y(device) < modY + 8 * 6) {
                        indiceItem = 5;
                    } else if (device_mouse_y(device) >= modY + 8 * 6 && device_mouse_y(device) < modY + 8 * 7) {
                        indiceItem = 6;
                    } else if (device_mouse_y(device) >= modY + 8 * 7 && device_mouse_y(device) < modY + 8 * 8) {
                        indiceItem = 7;
                    } else if (device_mouse_y(device) >= modY + 8 * 8 && device_mouse_y(device) < modY + 8 * 9) {
                        indiceItem = 8;
                    } else if (device_mouse_y(device) >= modY + 8 * 9 && device_mouse_y(device) < modY + 8 * 10) {
                        indiceItem = 9;
                    } else if (device_mouse_y(device) >= modY + 8 * 10 && device_mouse_y(device) < modY + 8 * 11) {
                        indiceItem = 10;
                    } else if (device_mouse_y(device) >= modY + 8 * 11 && device_mouse_y(device) < modY + 8 * 12) {
                        indiceItem = 11;
                    } else if (device_mouse_y(device) >= modY + 8 * 12 && device_mouse_y(device) < modY + 8 * 13) {
                        indiceItem = 12;
                    } else if (device_mouse_y(device) >= modY + 8 * 13 && device_mouse_y(device) < modY + 8 * 14) {
                        indiceItem = 13;
                    } else if (device_mouse_y(device) >= modY + 8 * 14 && device_mouse_y(device) < modY + 8 * 15) {
                        indiceItem = 14;
                    } else if (device_mouse_y(device) >= modY + 8 * 15 && device_mouse_y(device) < modY + 8 * 16) {
                        indiceItem = 15;
                    } else if (device_mouse_y(device) >= modY + 8 * 16 && device_mouse_y(device) < modY + 8 * 17) {
                        indiceItem = 16;
                    } else if (device_mouse_y(device) >= modY + 8 * 17 && device_mouse_y(device) < modY + 8 * 18) {
                        indiceItem = 17;
                    } else if (device_mouse_y(device) >= modY + 8 * 18 && device_mouse_y(device) < modY + 8 * 19) {
                        indiceItem = 18;
                    } else if (device_mouse_y(device) >= modY + 8 * 19 && device_mouse_y(device) < modY + 8 * 20) {
                        indiceItem = 19;
                    }
                    
                    if (indiceItem != -1) {
                        if (obj_inventario.indiceInv[indiceItem] != -1) {
                        
                            var datosItem = descripcionItem(obj_inventario.indiceInv[indiceItem]);
                            descItem = datosItem[0];
                            precioItem = datosItem[1];
                            
                            datosItem = configurarItem(obj_inventario.indiceInv[indiceItem]);
                            
                            var validoRaza = false;
                            var validoGenero = false;
                            var validoSkill = false;
                            var validoClase = false;
                            
                            // Raza
                            
                            if (
                            datosItem[2] == -1 ||
                            datosItem[2] == obj_pj.nroRaza
                            ) {
                                validoRaza = true;
                            } else {
                                switch (datosItem[2]) {
                                    case 5:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 6:
                                        if (obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 7:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 8:
                                        if (obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 9:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 10:
                                        if (obj_pj.nroRaza != 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                }
                            }
                            
                            // Género
                            
                            if (
                            datosItem[1] == -1 ||
                            datosItem[1] == obj_pj.genero
                            ) {
                                validoGenero = true;
                            }
                            
                            // Clase
                            
                            switch (obj_pj.clase) {
                                case 0:
                                    if (datosItem[5]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 1:
                                    if (datosItem[6]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 2:
                                    if (datosItem[7]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 3:
                                    if (datosItem[8]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 4:
                                    if (datosItem[9]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 5:
                                    if (datosItem[10]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 6:
                                    if (datosItem[11]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 7:
                                    if (datosItem[12]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 8:
                                    if (datosItem[13]) {
                                        validoClase = true;
                                    }
                                    break;
                            }
                            
                            // Skills
                            
                            if (obj_pj.skills[datosItem[3]] >= datosItem[4]) {
                                validoSkill = true;
                            }
                            
                            // Valido todo
                            
                            if (validoSkill && validoClase && validoGenero && validoRaza) {
                            
                                if (obj_inventario.indiceInv[indiceItem] == 144) {
                                    validoItem = "Podés usar este ítem (Ver manual para mas info.)";
                                } else if (obj_inventario.indiceInv[indiceItem] >= 120 && obj_inventario.indiceInv[indiceItem] <= 139) {
                                    validoItem = "Podés aprender este hechizo (Ver manual para mas info.)";
                                } else {
                                    validoItem = "Podés usar este ítem";
                                }
                                    
                            } else {
                                if (!validoRaza) {
                                    validoItem = "Tu raza no puede usar este ítem";
                                } else if (!validoGenero) {
                                    validoItem = "Tu género no puede usar este ítem";
                                } else if (!validoClase) {
                                    validoItem = "Tu clase no puede usar este ítem";
                                } else if (!validoSkill) {
                                    validoItem = "No tienes suficientes skillpoints para usar este ítem";
                                }
                            }
                            
                        }
                    }
                    
                } else if (
                (device_mouse_x(device) >= posX + 8 && device_mouse_x(device) <= posX + 137) &&
                (device_mouse_y(device) >= posY + 47 && device_mouse_y(device) <= posY + 207)
                ) {
                
                    var modY = posY + 47;
                
                    sectorNpc = true;
                    sectorPj = false;
                    
                    indiceItem = -1;
                    
                    if (device_mouse_y(device) >= modY && device_mouse_y(device) < modY + 8 * 1) {
                        indiceItem = 0;
                    } else if (device_mouse_y(device) >= modY + 8 * 1 && device_mouse_y(device) < modY + 8 * 2) {
                        indiceItem = 1;
                    } else if (device_mouse_y(device) >= modY + 8 * 2 && device_mouse_y(device) < modY + 8 * 3) {
                        indiceItem = 2;
                    } else if (device_mouse_y(device) >= modY + 8 * 3 && device_mouse_y(device) < modY + 8 * 4) {
                        indiceItem = 3;
                    } else if (device_mouse_y(device) >= modY + 8 * 4 && device_mouse_y(device) < modY + 8 * 5) {
                        indiceItem = 4;
                    } else if (device_mouse_y(device) >= modY + 8 * 5 && device_mouse_y(device) < modY + 8 * 6) {
                        indiceItem = 5;
                    } else if (device_mouse_y(device) >= modY + 8 * 6 && device_mouse_y(device) < modY + 8 * 7) {
                        indiceItem = 6;
                    } else if (device_mouse_y(device) >= modY + 8 * 7 && device_mouse_y(device) < modY + 8 * 8) {
                        indiceItem = 7;
                    } else if (device_mouse_y(device) >= modY + 8 * 8 && device_mouse_y(device) < modY + 8 * 9) {
                        indiceItem = 8;
                    } else if (device_mouse_y(device) >= modY + 8 * 9 && device_mouse_y(device) < modY + 8 * 10) {
                        indiceItem = 9;
                    } else if (device_mouse_y(device) >= modY + 8 * 10 && device_mouse_y(device) < modY + 8 * 11) {
                        indiceItem = 10;
                    } else if (device_mouse_y(device) >= modY + 8 * 11 && device_mouse_y(device) < modY + 8 * 12) {
                        indiceItem = 11;
                    } else if (device_mouse_y(device) >= modY + 8 * 12 && device_mouse_y(device) < modY + 8 * 13) {
                        indiceItem = 12;
                    } else if (device_mouse_y(device) >= modY + 8 * 13 && device_mouse_y(device) < modY + 8 * 14) {
                        indiceItem = 13;
                    } else if (device_mouse_y(device) >= modY + 8 * 14 && device_mouse_y(device) < modY + 8 * 15) {
                        indiceItem = 14;
                    } else if (device_mouse_y(device) >= modY + 8 * 15 && device_mouse_y(device) < modY + 8 * 16) {
                        indiceItem = 15;
                    } else if (device_mouse_y(device) >= modY + 8 * 16 && device_mouse_y(device) < modY + 8 * 17) {
                        indiceItem = 16;
                    } else if (device_mouse_y(device) >= modY + 8 * 17 && device_mouse_y(device) < modY + 8 * 18) {
                        indiceItem = 17;
                    } else if (device_mouse_y(device) >= modY + 8 * 18 && device_mouse_y(device) < modY + 8 * 19) {
                        indiceItem = 18;
                    } else if (device_mouse_y(device) >= modY + 8 * 19 && device_mouse_y(device) < modY + 8 * 20) {
                        indiceItem = 19;
                    }
                    
                    if (indiceItem != -1) {
                        if (instance_exists(idPadre)) {
                            if (idPadre.indiceNpc[indiceItem] != -1) {
                            
                                var datosItem = descripcionItem(idPadre.indiceNpc[indiceItem]);
                                descItem = datosItem[0];
                                        
                                var modPrecio = 1;
                                
                                if (obj_pj.skills[16] >= 0 && obj_pj.skills[16] <= 10) {
                                    modPrecio = 1;
                                } else if (obj_pj.skills[16] >= 11 && obj_pj.skills[16] <= 20) {
                                    modPrecio = 1.15;
                                }  else if (obj_pj.skills[16] >= 21 && obj_pj.skills[16] <= 30) {
                                    modPrecio = 1.25;
                                }  else if (obj_pj.skills[16] >= 31 && obj_pj.skills[16] <= 40) {
                                    modPrecio = 1.35;
                                }  else if (obj_pj.skills[16] >= 41 && obj_pj.skills[16] <= 50) {
                                    modPrecio = 1.45;
                                }  else if (obj_pj.skills[16] >= 51 && obj_pj.skills[16] <= 60) {
                                    modPrecio = 1.5;
                                }  else if (obj_pj.skills[16] >= 61 && obj_pj.skills[16] <= 70) {
                                    modPrecio = 1.65;
                                }  else if (obj_pj.skills[16] >= 71 && obj_pj.skills[16] <= 80) {
                                    modPrecio = 1.75;
                                }  else if (obj_pj.skills[16] >= 81 && obj_pj.skills[16] <= 90) {
                                    modPrecio = 1.85;
                                }  else if (obj_pj.skills[16] >= 91 && obj_pj.skills[16] <= 99) {
                                    modPrecio = 1.95;
                                } else {
                                    modPrecio = 2;
                                }
                                
                                precioItem = floor((datosItem[1] * 2) / modPrecio);
                                
                                if (precioItem <= 0) {
                                    precioItem = 1;
                                }
                                              
                                datosItem = configurarItem(idPadre.indiceNpc[indiceItem]);
                                
                                var validoRaza = false;
                                var validoGenero = false;
                                var validoSkill = false;
                                var validoClase = false;
                                
                                // Raza
                                
                                if (
                                datosItem[2] == -1 ||
                                datosItem[2] == obj_pj.nroRaza
                                ) {
                                    validoRaza = true;
                                } else {
                                    switch (datosItem[2]) {
                                        case 5:
                                            if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                                validoRaza = true;
                                            }
                                            break;
                                        case 6:
                                            if (obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                                validoRaza = true;
                                            }
                                            break;
                                        case 7:
                                            if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1) {
                                                validoRaza = true;
                                            }
                                            break;
                                        case 8:
                                            if (obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                                validoRaza = true;
                                            }
                                            break;
                                        case 9:
                                            if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                                validoRaza = true;
                                            }
                                            break;
                                        case 10:
                                            if (obj_pj.nroRaza != 2) {
                                                validoRaza = true;
                                            }
                                            break;
                                    }
                                }
                                
                                // Género
                                
                                if (
                                datosItem[1] == -1 ||
                                datosItem[1] == obj_pj.genero
                                ) {
                                    validoGenero = true;
                                }
                                
                                // Clase
                                
                                switch (obj_pj.clase) {
                                    case 0:
                                        if (datosItem[5]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 1:
                                        if (datosItem[6]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 2:
                                        if (datosItem[7]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 3:
                                        if (datosItem[8]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 4:
                                        if (datosItem[9]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 5:
                                        if (datosItem[10]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 6:
                                        if (datosItem[11]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 7:
                                        if (datosItem[12]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 8:
                                        if (datosItem[13]) {
                                            validoClase = true;
                                        }
                                        break;
                                }
                                
                                // Skills
                                
                                if (obj_pj.skills[datosItem[3]] >= datosItem[4]) {
                                    validoSkill = true;
                                }
                                
                                // Valido todo
                            
                                if (validoSkill && validoClase && validoGenero && validoRaza) {
                                
                                    if (idPadre.indiceNpc[indiceItem] == 144) {
                                        validoItem = "Podés usar este ítem (Ver manual para mas info.)";
                                    } else if (idPadre.indiceNpc[indiceItem] >= 120 && idPadre.indiceNpc[indiceItem] <= 139) {
                                        validoItem = "Podés aprender este hechizo (Ver manual para mas info.)";
                                    } else {
                                        validoItem = "Podés usar este ítem";
                                    }
                                
                                    
                                } else {
                                    if (!validoRaza) {
                                        validoItem = "Tu raza no puede usar este ítem";
                                    } else if (!validoGenero) {
                                        validoItem = "Tu género no puede usar este ítem";
                                    } else if (!validoClase) {
                                        validoItem = "Tu clase no puede usar este ítem";
                                    } else if (!validoSkill) {
                                        validoItem = "No tienes suficientes skillpoints para usar este ítem";
                                    }
                                }
                                
                            }
                        }
                    }
                    
                } else if (device_mouse_x(device) >= posX + 272 && device_mouse_y(device) <= posY + 15) {
                    mostrado = false;   
                    image_index = 0;
                    campoCantidadS = "1";
                } else if (
                (device_mouse_x(device) >= posX + 122 && device_mouse_x(device) <= posX + 167) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Abro o cierro el numpad
                     
                    if (image_index == 0) {
                        image_index = 1;
                    } else {
                        image_index = 0;
                    }                  
                    
                    campoCantidadS = "0";  
                    
                } else if (                
                (device_mouse_x(device) >= posX + 288 && device_mouse_x(device) <= posX + 336) &&
                (device_mouse_y(device) >= posY + 74 && device_mouse_y(device) <= posY + 134)
                ) {
                
                    // Escribo con el numpad
                     
                    if (image_index == 1) {
                        
                        var indiceNPX = -1;
                        var indiceNPY = -1;
                    
                        if ((device_mouse_x(device) >= posX + 288 && device_mouse_x(device) < posX + 304)) {
                            // Puede ser el 1, el 4 o el 7
                            indiceNPX = 0;
                        } else if ((device_mouse_x(device) >= posX + 304 && device_mouse_x(device) < posX + 320)) {
                            // Puede ser el 2, el 5 o el 8
                            indiceNPX = 1;
                        } else if ((device_mouse_x(device) >= posX + 320 && device_mouse_x(device) < posX + 336)) {
                            // Puede ser el 3, el 6 o el 9
                            indiceNPX = 2;
                        }
                        
                        if ((device_mouse_y(device) >= posY + 74 && device_mouse_y(device) < posY + 89)) {
                            // Puede ser el 1, el 2 o el 3
                            indiceNPY = 0;
                        } else if ((device_mouse_y(device) >= posY + 89 && device_mouse_y(device) < posY + 104)) {
                            // Puede ser el 4, el 5 o el 6
                            indiceNPY = 1;
                        } else if ((device_mouse_y(device) >= posY + 104 && device_mouse_y(device) < posY + 119)) {
                            // Puede ser el 7, el 8 o el 9
                            indiceNPY = 2;
                        } else if ((device_mouse_y(device) >= posY + 119 && device_mouse_y(device) < posY + 134)) {
                            // Puede ser el 0, o el botón "Borrar"
                            indiceNPY = 3;
                        }
                        
                        if (indiceNPX != -1 && indiceNPY != -1) {
                            if (numPad[indiceNPY, indiceNPX] != -1) {
                                var cantidadParcial = floor(real(campoCantidadS + string(numPad[indiceNPY, indiceNPX])));
                                if (cantidadParcial <= 10000) {
                                    if (campoCantidadS != "0") {
                                        campoCantidadS = string(cantidadParcial);    
                                    } else {
                                        campoCantidadS = string(numPad[indiceNPY, indiceNPX]);
                                    }                                    
                                }                                
                            } else {
                                campoCantidadS = "0";
                            }
                        }
                    
                    }              
                    
                } else if (
                (device_mouse_x(device) >= posX + 97 && device_mouse_x(device) <= posX + 113) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Vender
                    
                    var cant = floor(real(campoCantidadS));
                    
                    if (sectorPj && cant > 0) {
                        if (indiceItem != -1) {
							var indiceItemAVender = obj_inventario.indiceInv[indiceItem];
							if (cant > obj_inventario.cantInv[indiceItem])
								cant = obj_inventario.cantInv[indiceItem]
                            if (indiceItemAVender != -1 && obj_inventario.cantInv[indiceItem] >= cant && itemVendible(indiceItemAVender)) {
                            
                                clicMantenido = true;
                                deviceMantenido = device;
                                if (alarm[1] == -1) {
                                    alarm[1] = 60;
                                }
                            
                                if (obj_pj.oro + precioItem * cant <= obj_pj.oroMax) {
                                    obj_pj.oro += precioItem * cant;
                                } else {
                                    obj_pj.oro = obj_pj.oroMax;
                                }
												
								obj_skills_libres.mostrado = false;
                            
                                if (obj_inventario.cantInv[indiceItem] > cant) {
                                    obj_inventario.cantInv[indiceItem] -= cant;
                                } else {
                                
                                    if (indiceItemAVender == obj_inventario.seleccionado) {
                                        obj_inventario.seleccionado = -1;
                                    }
                                    
                                    if (indiceItem == obj_inventario.posSeleccionado) {
                                        obj_inventario.posSeleccionado = -1;
                                    }
                                    
                                    if (obj_inventario.tipoInv[indiceItem] == "ropa" && indiceItem == obj_pj.ropaEnInv) {
                                        obj_pj.desnudo = true;
                                        obj_pj.ropaActual = -1;
                                        obj_pj.ropaEnInv = -1;
                                        obj_pj.ropaIndexada = false;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "arma" && indiceItem == obj_pj.armaEnInv) {
                                        obj_pj.armaActual = -1;
                                        obj_pj.armaEnInv = -1;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "flecha" && indiceItem == obj_pj.flechaEnInv) {
                                        obj_pj.flechaActual = -1;
                                        obj_pj.flechaEnInv = -1;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "casco" && indiceItem == obj_pj.cascoEnInv) {
                                        obj_pj.cascoActual = -1;
                                        obj_pj.cascoEnInv = -1;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "escudo" && indiceItem == obj_pj.escudoEnInv) {
                                        obj_pj.escudoActual = -1;
                                        obj_pj.escudoEnInv = -1;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "laud" && indiceItem == obj_pj.laudEnInv) {
                                        obj_pj.laudActual = -1;
                                        obj_pj.laudEnInv = -1;
                                        obj_pj.laudEquipado = false;
                                    } else if (obj_inventario.tipoInv[indiceItem] == "trabajo" && indiceItem == obj_pj.trabajoEnInv) {
                                        obj_pj.trabajoActual = -1;
                                        obj_pj.trabajoEnInv = -1;
                                        obj_pj.trabajoEquipado = false;
                                        obj_panel_trabajos.mostrado = false;
                                    }
                                    
                                    obj_inventario.cantInv[indiceItem] = 0;
                                    obj_inventario.indiceInv[indiceItem] = -1;
                                    obj_inventario.tipoInv[indiceItem] = "";
                                    obj_inventario.equipadoInv[indiceItem] = false;
                                    obj_inventario.nombreInv[indiceItem] = "Vacío";
                                    
                                }
                            
                                if (random(10) > 6.5) {
                                    if (obj_pj.skills[16] < 100) {
                                        if (obj_pj.skills[16] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                            obj_skills_libres.mostrado = false;
                                            obj_pj.skills[16]++;
                                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                            idSubirSkills.indice = 16;
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                    
                } else if (
                (device_mouse_x(device) >= posX + 176 && device_mouse_x(device) <= posX + 192) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Comprar
                    
                    var cant = floor(real(campoCantidadS));
                    
                    if (sectorNpc && cant > 0) {
                        if (indiceItem != -1) {
                            if (idPadre.indiceNpc[indiceItem] != -1) {
                                if (obj_pj.oro >= precioItem * cant) {
                                    
                                    var existe = false;
                    
                                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                        if (obj_inventario.indiceInv[i] == idPadre.indiceNpc[indiceItem]) {
                                            if (obj_inventario.cantInv[i] + cant <= 10000) {
                                                // Hay lugar en slot existente
                                                
                                                clicMantenido = true;
                                                deviceMantenido = device;
                                                if (alarm[1] == -1) {
                                                    alarm[1] = 60;
                                                }
                                                
                                                existe = true;
                                                obj_pj.oro -= precioItem * cant;
                                                obj_inventario.cantInv[i] += cant;
												
												obj_skills_libres.mostrado = false;
                                                
                                                if (random(10) > 6.5) {
                                                    if (obj_pj.skills[16] < 100) {
                                                        if (obj_pj.skills[16] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                                        
                                                            obj_skills_libres.mostrado = false;
                                                            obj_pj.skills[16]++;
                                                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                                            idSubirSkills.indice = 16;
                                                            
                                                            var datosItem = descripcionItem(idPadre.indiceNpc[indiceItem]);
                                                                    
                                                            var modPrecio = 1;
                                                            
                                                            if (obj_pj.skills[16] >= 0 && obj_pj.skills[16] <= 10) {
                                                                modPrecio = 1;
                                                            } else if (obj_pj.skills[16] >= 11 && obj_pj.skills[16] <= 20) {
                                                                modPrecio = 1.15;
                                                            }  else if (obj_pj.skills[16] >= 21 && obj_pj.skills[16] <= 30) {
                                                                modPrecio = 1.25;
                                                            }  else if (obj_pj.skills[16] >= 31 && obj_pj.skills[16] <= 40) {
                                                                modPrecio = 1.35;
                                                            }  else if (obj_pj.skills[16] >= 41 && obj_pj.skills[16] <= 50) {
                                                                modPrecio = 1.45;
                                                            }  else if (obj_pj.skills[16] >= 51 && obj_pj.skills[16] <= 60) {
                                                                modPrecio = 1.5;
                                                            }  else if (obj_pj.skills[16] >= 61 && obj_pj.skills[16] <= 70) {
                                                                modPrecio = 1.65;
                                                            }  else if (obj_pj.skills[16] >= 71 && obj_pj.skills[16] <= 80) {
                                                                modPrecio = 1.75;
                                                            }  else if (obj_pj.skills[16] >= 81 && obj_pj.skills[16] <= 90) {
                                                                modPrecio = 1.85;
                                                            }  else if (obj_pj.skills[16] >= 91 && obj_pj.skills[16] <= 99) {
                                                                modPrecio = 1.95;
                                                            } else {
                                                                modPrecio = 2;
                                                            }
                                                            
                                                            precioItem = floor((datosItem[1] * 2) / modPrecio);
                                                            
                                                            if (precioItem <= 0) {
                                                                precioItem = 1;
                                                            }
                                                            
                                                        }
                                                    }
                                                }
                                                
                                                break;
                                            }
                                        }
                                    }
                                    
                                    if (!existe) {
                                        for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                        
                                            if (obj_inventario.indiceInv[i] == -1) {
                                            
                                                // Hay lugar en slot nuevo
                                                
                                                clicMantenido = true;
                                                deviceMantenido = device;
                                                if (alarm[1] == -1) {
                                                    alarm[1] = 60;
                                                }
                                                
                                                obj_pj.oro -= precioItem * cant;
												
												obj_skills_libres.mostrado = false;
                                                
                                                datosItem = configurarItem(idPadre.indiceNpc[indiceItem]);
                                                
                                                obj_inventario.indiceInv[i] = idPadre.indiceNpc[indiceItem];
                                                obj_inventario.tipoInv[i] = datosItem[0];
                                                obj_inventario.cantInv[i] = cant;
                                                obj_inventario.generoInv[i] = datosItem[1];
                                                obj_inventario.razaInv[i] = datosItem[2];
                                                obj_inventario.nroSkillInv[i] = datosItem[3];
                                                obj_inventario.skillRequeridoInv[i] = datosItem[4];
                                                obj_inventario.clase0ValidaInv[i] = datosItem[5];
                                                obj_inventario.clase1ValidaInv[i] = datosItem[6];
                                                obj_inventario.clase2ValidaInv[i] = datosItem[7];
                                                obj_inventario.clase3ValidaInv[i] = datosItem[8];
                                                obj_inventario.clase4ValidaInv[i] = datosItem[9];
                                                obj_inventario.clase5ValidaInv[i] = datosItem[10];
                                                obj_inventario.clase6ValidaInv[i] = datosItem[11];
                                                obj_inventario.clase7ValidaInv[i] = datosItem[12];
                                                obj_inventario.clase8ValidaInv[i] = datosItem[13];
                                                obj_inventario.nombreInv[i] = datosItem[14];
                                                
                                                if (random(10) > 6.5) {
                                                    if (obj_pj.skills[16] < 100) {
                                                        if (obj_pj.skills[16] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                                        
                                                            obj_skills_libres.mostrado = false;
                                                            obj_pj.skills[16]++;
                                                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                                            idSubirSkills.indice = 16;
                                                            
                                                            var datosItem = descripcionItem(idPadre.indiceNpc[indiceItem]);
                                                                    
                                                            var modPrecio = 1;
                                                            
                                                            if (obj_pj.skills[16] >= 0 && obj_pj.skills[16] <= 10) {
                                                                modPrecio = 1;
                                                            } else if (obj_pj.skills[16] >= 11 && obj_pj.skills[16] <= 20) {
                                                                modPrecio = 1.15;
                                                            }  else if (obj_pj.skills[16] >= 21 && obj_pj.skills[16] <= 30) {
                                                                modPrecio = 1.25;
                                                            }  else if (obj_pj.skills[16] >= 31 && obj_pj.skills[16] <= 40) {
                                                                modPrecio = 1.35;
                                                            }  else if (obj_pj.skills[16] >= 41 && obj_pj.skills[16] <= 50) {
                                                                modPrecio = 1.45;
                                                            }  else if (obj_pj.skills[16] >= 51 && obj_pj.skills[16] <= 60) {
                                                                modPrecio = 1.5;
                                                            }  else if (obj_pj.skills[16] >= 61 && obj_pj.skills[16] <= 70) {
                                                                modPrecio = 1.65;
                                                            }  else if (obj_pj.skills[16] >= 71 && obj_pj.skills[16] <= 80) {
                                                                modPrecio = 1.75;
                                                            }  else if (obj_pj.skills[16] >= 81 && obj_pj.skills[16] <= 90) {
                                                                modPrecio = 1.85;
                                                            }  else if (obj_pj.skills[16] >= 91 && obj_pj.skills[16] <= 99) {
                                                                modPrecio = 1.95;
                                                            } else {
                                                                modPrecio = 2;
                                                            }
                                                            
                                                            precioItem = floor((datosItem[1] * 2) / modPrecio);
                                                            
                                                            if (precioItem <= 0) {
                                                                precioItem = 1;
                                                            }
                                                            
                                                        }
                                                    }
                                                }
                                                
                                                break;
                                                
                                            }
                                            
                                        }  
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                }
                
            }
            
            // //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            // MODO BANCO
            // //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            if (mostrado && modoBanco) {
            
                obj_hechizos.moviendoHechizo = false;
                
                var posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 144;
                var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
                
                if (
                (device_mouse_x(device) >= posX + 150 && device_mouse_x(device) <= posX + 279) &&
                (device_mouse_y(device) >= posY + 47 && device_mouse_y(device) <= posY + 207)
                ) {
                
                    var modY = posY + 47;
                
                    sectorNpc = false;
                    sectorPj = true;
                    
                    indiceItem = -1;
                    
                    if (device_mouse_y(device) >= modY && device_mouse_y(device) < modY + 8 * 1) {
                        indiceItem = 0;
                    } else if (device_mouse_y(device) >= modY + 8 * 1 && device_mouse_y(device) < modY + 8 * 2) {
                        indiceItem = 1;
                    } else if (device_mouse_y(device) >= modY + 8 * 2 && device_mouse_y(device) < modY + 8 * 3) {
                        indiceItem = 2;
                    } else if (device_mouse_y(device) >= modY + 8 * 3 && device_mouse_y(device) < modY + 8 * 4) {
                        indiceItem = 3;
                    } else if (device_mouse_y(device) >= modY + 8 * 4 && device_mouse_y(device) < modY + 8 * 5) {
                        indiceItem = 4;
                    } else if (device_mouse_y(device) >= modY + 8 * 5 && device_mouse_y(device) < modY + 8 * 6) {
                        indiceItem = 5;
                    } else if (device_mouse_y(device) >= modY + 8 * 6 && device_mouse_y(device) < modY + 8 * 7) {
                        indiceItem = 6;
                    } else if (device_mouse_y(device) >= modY + 8 * 7 && device_mouse_y(device) < modY + 8 * 8) {
                        indiceItem = 7;
                    } else if (device_mouse_y(device) >= modY + 8 * 8 && device_mouse_y(device) < modY + 8 * 9) {
                        indiceItem = 8;
                    } else if (device_mouse_y(device) >= modY + 8 * 9 && device_mouse_y(device) < modY + 8 * 10) {
                        indiceItem = 9;
                    } else if (device_mouse_y(device) >= modY + 8 * 10 && device_mouse_y(device) < modY + 8 * 11) {
                        indiceItem = 10;
                    } else if (device_mouse_y(device) >= modY + 8 * 11 && device_mouse_y(device) < modY + 8 * 12) {
                        indiceItem = 11;
                    } else if (device_mouse_y(device) >= modY + 8 * 12 && device_mouse_y(device) < modY + 8 * 13) {
                        indiceItem = 12;
                    } else if (device_mouse_y(device) >= modY + 8 * 13 && device_mouse_y(device) < modY + 8 * 14) {
                        indiceItem = 13;
                    } else if (device_mouse_y(device) >= modY + 8 * 14 && device_mouse_y(device) < modY + 8 * 15) {
                        indiceItem = 14;
                    } else if (device_mouse_y(device) >= modY + 8 * 15 && device_mouse_y(device) < modY + 8 * 16) {
                        indiceItem = 15;
                    } else if (device_mouse_y(device) >= modY + 8 * 16 && device_mouse_y(device) < modY + 8 * 17) {
                        indiceItem = 16;
                    } else if (device_mouse_y(device) >= modY + 8 * 17 && device_mouse_y(device) < modY + 8 * 18) {
                        indiceItem = 17;
                    } else if (device_mouse_y(device) >= modY + 8 * 18 && device_mouse_y(device) < modY + 8 * 19) {
                        indiceItem = 18;
                    } else if (device_mouse_y(device) >= modY + 8 * 19 && device_mouse_y(device) < modY + 8 * 20) {
                        indiceItem = 19;
                    }
                    
                    if (indiceItem != -1) {
                        if (obj_inventario.indiceInv[indiceItem] != -1) {
                        
                            var datosItem = descripcionItem(obj_inventario.indiceInv[indiceItem]);
                            descItem = datosItem[0];
                            precioItem = datosItem[1];
                            
                            datosItem = configurarItem(obj_inventario.indiceInv[indiceItem]);
                            
                            var validoRaza = false;
                            var validoGenero = false;
                            var validoSkill = false;
                            var validoClase = false;
                            
                            // Raza
                            
                            if (
                            datosItem[2] == -1 ||
                            datosItem[2] == obj_pj.nroRaza
                            ) {
                                validoRaza = true;
                            } else {
                                switch (datosItem[2]) {
                                    case 5:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 6:
                                        if (obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 7:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 8:
                                        if (obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 9:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 10:
                                        if (obj_pj.nroRaza != 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                }
                            }
                            
                            // Género
                            
                            if (
                            datosItem[1] == -1 ||
                            datosItem[1] == obj_pj.genero
                            ) {
                                validoGenero = true;
                            }
                            
                            // Clase
                            
                            switch (obj_pj.clase) {
                                case 0:
                                    if (datosItem[5]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 1:
                                    if (datosItem[6]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 2:
                                    if (datosItem[7]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 3:
                                    if (datosItem[8]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 4:
                                    if (datosItem[9]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 5:
                                    if (datosItem[10]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 6:
                                    if (datosItem[11]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 7:
                                    if (datosItem[12]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 8:
                                    if (datosItem[13]) {
                                        validoClase = true;
                                    }
                                    break;
                            }
                            
                            // Skills
                            
                            if (obj_pj.skills[datosItem[3]] >= datosItem[4]) {
                                validoSkill = true;
                            }
                            
                            // Valido todo
                            
                            if (validoSkill && validoClase && validoGenero && validoRaza) {
                            
                                if (obj_inventario.indiceInv[indiceItem] == 144) {
                                    validoItem = "Podés usar este ítem (Ver manual para mas info.)";
                                } else if (obj_inventario.indiceInv[indiceItem] >= 120 && obj_inventario.indiceInv[indiceItem] <= 139) {
                                    validoItem = "Podés aprender este hechizo (Ver manual para mas info.)";
                                } else {
                                    validoItem = "Podés usar este ítem";
                                }
                                    
                            } else {
                                if (!validoRaza) {
                                    validoItem = "Tu raza no puede usar este ítem";
                                } else if (!validoGenero) {
                                    validoItem = "Tu género no puede usar este ítem";
                                } else if (!validoClase) {
                                    validoItem = "Tu clase no puede usar este ítem";
                                } else if (!validoSkill) {
                                    validoItem = "No tenés suficientes skillpoints para usar este ítem";
                                }
                            }
                            
                        }
                    }
                    
                } else if (
                (device_mouse_x(device) >= posX + 8 && device_mouse_x(device) <= posX + 137) &&
                (device_mouse_y(device) >= posY + 47 && device_mouse_y(device) <= posY + 207)
                ) {
                
                    var modY = posY + 47;
                
                    sectorNpc = true;
                    sectorPj = false;
                    
                    indiceItem = -1;
                    
                    if (device_mouse_y(device) >= modY && device_mouse_y(device) < modY + 8 * 1) {
                        indiceItem = 0;
                    } else if (device_mouse_y(device) >= modY + 8 * 1 && device_mouse_y(device) < modY + 8 * 2) {
                        indiceItem = 1;
                    } else if (device_mouse_y(device) >= modY + 8 * 2 && device_mouse_y(device) < modY + 8 * 3) {
                        indiceItem = 2;
                    } else if (device_mouse_y(device) >= modY + 8 * 3 && device_mouse_y(device) < modY + 8 * 4) {
                        indiceItem = 3;
                    } else if (device_mouse_y(device) >= modY + 8 * 4 && device_mouse_y(device) < modY + 8 * 5) {
                        indiceItem = 4;
                    } else if (device_mouse_y(device) >= modY + 8 * 5 && device_mouse_y(device) < modY + 8 * 6) {
                        indiceItem = 5;
                    } else if (device_mouse_y(device) >= modY + 8 * 6 && device_mouse_y(device) < modY + 8 * 7) {
                        indiceItem = 6;
                    } else if (device_mouse_y(device) >= modY + 8 * 7 && device_mouse_y(device) < modY + 8 * 8) {
                        indiceItem = 7;
                    } else if (device_mouse_y(device) >= modY + 8 * 8 && device_mouse_y(device) < modY + 8 * 9) {
                        indiceItem = 8;
                    } else if (device_mouse_y(device) >= modY + 8 * 9 && device_mouse_y(device) < modY + 8 * 10) {
                        indiceItem = 9;
                    } else if (device_mouse_y(device) >= modY + 8 * 10 && device_mouse_y(device) < modY + 8 * 11) {
                        indiceItem = 10;
                    } else if (device_mouse_y(device) >= modY + 8 * 11 && device_mouse_y(device) < modY + 8 * 12) {
                        indiceItem = 11;
                    } else if (device_mouse_y(device) >= modY + 8 * 12 && device_mouse_y(device) < modY + 8 * 13) {
                        indiceItem = 12;
                    } else if (device_mouse_y(device) >= modY + 8 * 13 && device_mouse_y(device) < modY + 8 * 14) {
                        indiceItem = 13;
                    } else if (device_mouse_y(device) >= modY + 8 * 14 && device_mouse_y(device) < modY + 8 * 15) {
                        indiceItem = 14;
                    } else if (device_mouse_y(device) >= modY + 8 * 15 && device_mouse_y(device) < modY + 8 * 16) {
                        indiceItem = 15;
                    } else if (device_mouse_y(device) >= modY + 8 * 16 && device_mouse_y(device) < modY + 8 * 17) {
                        indiceItem = 16;
                    } else if (device_mouse_y(device) >= modY + 8 * 17 && device_mouse_y(device) < modY + 8 * 18) {
                        indiceItem = 17;
                    } else if (device_mouse_y(device) >= modY + 8 * 18 && device_mouse_y(device) < modY + 8 * 19) {
                        indiceItem = 18;
                    } else if (device_mouse_y(device) >= modY + 8 * 19 && device_mouse_y(device) < modY + 8 * 20) {
                        indiceItem = 19;
                    }
                    
                    if (indiceItem != -1) {
                        if (idPadre.indiceNpc[indiceItem] != -1) {
                        
                            var datosItem = descripcionItem(idPadre.indiceNpc[indiceItem]);
                            descItem = datosItem[0];
                                          
                            datosItem = configurarItem(idPadre.indiceNpc[indiceItem]);
                            
                            var validoRaza = false;
                            var validoGenero = false;
                            var validoSkill = false;
                            var validoClase = false;
                            
                            // Raza
                            
                            if (
                            datosItem[2] == -1 ||
                            datosItem[2] == obj_pj.nroRaza
                            ) {
                                validoRaza = true;
                            } else {
                                switch (datosItem[2]) {
                                    case 5:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 6:
                                        if (obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 7:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 8:
                                        if (obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 9:
                                        if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 3 || obj_pj.nroRaza == 4) {
                                            validoRaza = true;
                                        }
                                        break;
                                    case 10:
                                        if (obj_pj.nroRaza != 2) {
                                            validoRaza = true;
                                        }
                                        break;
                                }
                            }
                            
                            // Género
                            
                            if (
                            datosItem[1] == -1 ||
                            datosItem[1] == obj_pj.genero
                            ) {
                                validoGenero = true;
                            }
                            
                            // Clase
                            
                            switch (obj_pj.clase) {
                                case 0:
                                    if (datosItem[5]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 1:
                                    if (datosItem[6]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 2:
                                    if (datosItem[7]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 3:
                                    if (datosItem[8]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 4:
                                    if (datosItem[9]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 5:
                                    if (datosItem[10]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 6:
                                    if (datosItem[11]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 7:
                                    if (datosItem[12]) {
                                        validoClase = true;
                                    }
                                    break;
                                case 8:
                                    if (datosItem[13]) {
                                        validoClase = true;
                                    }
                                    break;
                            }
                            
                            // Skills
                            
                            if (obj_pj.skills[datosItem[3]] >= datosItem[4]) {
                                validoSkill = true;
                            }
                            
                            // Valido todo
                        
                            if (validoSkill && validoClase && validoGenero && validoRaza) {
                            
                                if (idPadre.indiceNpc[indiceItem] == 144) {
                                    validoItem = "Podés usar este ítem (Ver manual para mas info.)";
                                } else if (idPadre.indiceNpc[indiceItem] >= 120 && idPadre.indiceNpc[indiceItem] <= 139) {
                                    validoItem = "Podés aprender este hechizo (Ver manual para mas info.)";
                                } else {
                                    validoItem = "Podés usar este ítem";
                                }
                            
                                
                            } else {
                                if (!validoRaza) {
                                    validoItem = "Tu raza no puede usar este ítem";
                                } else if (!validoGenero) {
                                    validoItem = "Tu género no puede usar este ítem";
                                } else if (!validoClase) {
                                    validoItem = "Tu clase no puede usar este ítem";
                                } else if (!validoSkill) {
                                    validoItem = "No tenés suficientes skillpoints para usar este ítem";
                                }
                            }
                            
                        }
                    }
                    
                } else if (device_mouse_x(device) >= posX + 272 && device_mouse_y(device) <= posY + 15) {
                    mostrado = false;   
                    image_index = 0;
                    campoCantidadS = "1";
                } else if (
                (device_mouse_x(device) >= posX + 122 && device_mouse_x(device) <= posX + 167) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Abro o cierro el numpad
                     
                    if (image_index == 0) {
                        image_index = 1;
                    } else {
                        image_index = 0;
                    }                    
                    
                    campoCantidadS = "0";
                    
                } else if (                
                (device_mouse_x(device) >= posX + 288 && device_mouse_x(device) <= posX + 336) &&
                (device_mouse_y(device) >= posY + 74 && device_mouse_y(device) <= posY + 134)
                ) {
                
                    // Escribo con el numpad
                     
                    if (image_index == 1) {
                        
                        var indiceNPX = -1;
                        var indiceNPY = -1;
                    
                        if ((device_mouse_x(device) >= posX + 288 && device_mouse_x(device) < posX + 304)) {
                            // Puede ser el 1, el 4 o el 7
                            indiceNPX = 0;
                        } else if ((device_mouse_x(device) >= posX + 304 && device_mouse_x(device) < posX + 320)) {
                            // Puede ser el 2, el 5 o el 8
                            indiceNPX = 1;
                        } else if ((device_mouse_x(device) >= posX + 320 && device_mouse_x(device) < posX + 336)) {
                            // Puede ser el 3, el 6 o el 9
                            indiceNPX = 2;
                        }
                        
                        if ((device_mouse_y(device) >= posY + 74 && device_mouse_y(device) < posY + 89)) {
                            // Puede ser el 1, el 2 o el 3
                            indiceNPY = 0;
                        } else if ((device_mouse_y(device) >= posY + 89 && device_mouse_y(device) < posY + 104)) {
                            // Puede ser el 4, el 5 o el 6
                            indiceNPY = 1;
                        } else if ((device_mouse_y(device) >= posY + 104 && device_mouse_y(device) < posY + 119)) {
                            // Puede ser el 7, el 8 o el 9
                            indiceNPY = 2;
                        } else if ((device_mouse_y(device) >= posY + 119 && device_mouse_y(device) < posY + 134)) {
                            // Puede ser el 0, o el botón "Borrar"
                            indiceNPY = 3;
                        }
                        
                        if (indiceNPX != -1 && indiceNPY != -1) {
                            if (numPad[indiceNPY, indiceNPX] != -1) {
                                var cantidadParcial = floor(real(campoCantidadS + string(numPad[indiceNPY, indiceNPX])));
                                if (cantidadParcial <= 10000) {
                                    if (campoCantidadS != "0") {
                                        campoCantidadS = string(cantidadParcial);    
                                    } else {
                                        campoCantidadS = string(numPad[indiceNPY, indiceNPX]);
                                    }                                    
                                }                                
                            } else {
                                campoCantidadS = "0";
                            }
                        }
                    
                    }             
                    
                } else if (
                (device_mouse_x(device) >= posX + 97 && device_mouse_x(device) <= posX + 113) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Depositar
                    
                    var cant = floor(real(campoCantidadS));
                    
                    if (sectorPj && cant > 0) {
                        if (indiceItem != -1) {
							if (cant > obj_inventario.cantInv[indiceItem])
								cant = obj_inventario.cantInv[indiceItem]
                            if (obj_inventario.indiceInv[indiceItem] != -1 && obj_inventario.cantInv[indiceItem] >= cant) {
                            
                                var valido = false;
                                var existe = false;
                    
                                for (var i = 0; i < 20; i++) {
                                    if (idPadre.indiceNpc[i] == obj_inventario.indiceInv[indiceItem]) {
                                        if (idPadre.cantNpc[i] + cant <= 10000) {
                                        
                                            // Hay lugar en slot existente
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            existe = true;
                                            idPadre.cantNpc[i] += cant;
                                            valido = true;
                                            break;
                                            
                                        }
                                    }
                                }
                                
                                if (!existe) {
                                    for (var i = 0; i < 20; i++) {
                                    
                                        if (idPadre.indiceNpc[i] == -1) {
                                        
                                            // Hay lugar en slot nuevo
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            datosItem = configurarItem(obj_inventario.indiceInv[indiceItem]);
                                            
                                            idPadre.indiceNpc[i] = obj_inventario.indiceInv[indiceItem];
                                            idPadre.cantNpc[i] = cant;
                                            idPadre.nombreNpc[i] = datosItem[14];
                                            
                                            valido = true;
                                            
                                            break;
                                            
                                        }
                                        
                                    }  
                                }
                            
                                if (valido) {
                                    
                                    if (obj_inventario.cantInv[indiceItem] > cant) {
                                        obj_inventario.cantInv[indiceItem] -= cant;
                                    } else {
                                    
                                        if (obj_inventario.indiceInv[indiceItem] == obj_inventario.seleccionado) {
                                            obj_inventario.seleccionado = -1;
                                        }
                                        
                                        if (indiceItem == obj_inventario.posSeleccionado) {
                                            obj_inventario.posSeleccionado = -1;
                                        }
                                        
                                        if (obj_inventario.tipoInv[indiceItem] == "ropa" && indiceItem == obj_pj.ropaEnInv) {
                                            obj_pj.desnudo = true;
                                            obj_pj.ropaActual = -1;
                                            obj_pj.ropaEnInv = -1;
                                            obj_pj.ropaIndexada = false;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "arma" && indiceItem == obj_pj.armaEnInv) {
                                            obj_pj.armaActual = -1;
                                            obj_pj.armaEnInv = -1;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "flecha" && indiceItem == obj_pj.flechaEnInv) {
                                            obj_pj.flechaActual = -1;
                                            obj_pj.flechaEnInv = -1;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "casco" && indiceItem == obj_pj.cascoEnInv) {
                                            obj_pj.cascoActual = -1;
                                            obj_pj.cascoEnInv = -1;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "escudo" && indiceItem == obj_pj.escudoEnInv) {
                                            obj_pj.escudoActual = -1;
                                            obj_pj.escudoEnInv = -1;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "laud" && indiceItem == obj_pj.laudEnInv) {
                                            obj_pj.laudActual = -1;
                                            obj_pj.laudEnInv = -1;
                                            obj_pj.laudEquipado = false;
                                        } else if (obj_inventario.tipoInv[indiceItem] == "trabajo" && indiceItem == obj_pj.trabajoEnInv) {
                                            obj_pj.trabajoActual = -1;
                                            obj_pj.trabajoEnInv = -1;
                                            obj_pj.trabajoEquipado = false;
                                            obj_panel_trabajos.mostrado = false;
                                        }
                                        
                                        obj_inventario.cantInv[indiceItem] = 0;
                                        obj_inventario.indiceInv[indiceItem] = -1;
                                        obj_inventario.tipoInv[indiceItem] = "";
                                        obj_inventario.equipadoInv[indiceItem] = false;
                                        obj_inventario.nombreInv[indiceItem] = "Vacío";
                                        
                                    }
                                
                                }
                                
                            }
                        }
                    }
                    
                } else if (
                (device_mouse_x(device) >= posX + 176 && device_mouse_x(device) <= posX + 192) &&
                (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
                ) {
                
                    // Retirar
                    
                    var cant = floor(real(campoCantidadS));
                    
                    if (sectorNpc && cant > 0) {
                        if (indiceItem != -1) {
							if (cant > idPadre.cantNpc[indiceItem])
								cant = idPadre.cantNpc[indiceItem]
                            if (idPadre.indiceNpc[indiceItem] != -1 && idPadre.cantNpc[indiceItem] >= cant) {
                                    
                                var valido = false;
                                var existe = false;
                
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    if (obj_inventario.indiceInv[i] == idPadre.indiceNpc[indiceItem]) {
                                        if (obj_inventario.cantInv[i] + cant <= 10000) {
                                        
                                            // Hay lugar en slot existente
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            existe = true;
                                            obj_inventario.cantInv[i] += cant;
                                            valido = true;
                                            break;
                                            
                                        }
                                    }
                                }
                                
                                if (!existe) {
                                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    
                                        if (obj_inventario.indiceInv[i] == -1) {
                                        
                                            // Hay lugar en slot nuevo
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            datosItem = configurarItem(idPadre.indiceNpc[indiceItem]);
                                            
                                            obj_inventario.indiceInv[i] = idPadre.indiceNpc[indiceItem];
                                            obj_inventario.tipoInv[i] = datosItem[0];
                                            obj_inventario.cantInv[i] = cant;
                                            obj_inventario.generoInv[i] = datosItem[1];
                                            obj_inventario.razaInv[i] = datosItem[2];
                                            obj_inventario.nroSkillInv[i] = datosItem[3];
                                            obj_inventario.skillRequeridoInv[i] = datosItem[4];
                                            obj_inventario.clase0ValidaInv[i] = datosItem[5];
                                            obj_inventario.clase1ValidaInv[i] = datosItem[6];
                                            obj_inventario.clase2ValidaInv[i] = datosItem[7];
                                            obj_inventario.clase3ValidaInv[i] = datosItem[8];
                                            obj_inventario.clase4ValidaInv[i] = datosItem[9];
                                            obj_inventario.clase5ValidaInv[i] = datosItem[10];
                                            obj_inventario.clase6ValidaInv[i] = datosItem[11];
                                            obj_inventario.clase7ValidaInv[i] = datosItem[12];
                                            obj_inventario.clase8ValidaInv[i] = datosItem[13];
                                            obj_inventario.nombreInv[i] = datosItem[14];
                                            
                                            valido = true;
                                            
                                            break;
                                            
                                        }
                                        
                                    }  
                                }
                                
                                if (valido) {
                                
                                    if (idPadre.cantNpc[indiceItem] > cant) {
                                        idPadre.cantNpc[indiceItem] -= cant;
                                    } else {                            
                                        idPadre.cantNpc[indiceItem] = 0;
                                        idPadre.indiceNpc[indiceItem] = -1;
                                        idPadre.nombreNpc[indiceItem] = "Vacío";                            
                                    }
                                
                                }
                                
                            }
                        }
                    }
                    
                }
                
            }
                
            obj_control_devices.devicesL[device] = false;
        
        }
        
    }

}

