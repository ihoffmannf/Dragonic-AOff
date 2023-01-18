/// @description  Control general / Control mouse

if (mostrado) {
    
    if (posicionItem != -1) {
        if (!obj_inventario.equipadoInv[posicionItem]) {
            mostrado = false;
            posicionItem = -1;
        }
    }

    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5;
    y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5;   
     
} else {
    idPadre = -1;
    indiceItem = -1;
    descItem = "";
    validoItem = "";     
    elementosItem = "";
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

            if (mostrado) {
            
                obj_hechizos.moviendoHechizo = false;
                
                var posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 144;
                var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
                
                if (
                (device_mouse_x(device) >= posX + 8 && device_mouse_x(device) <= posX + 279) &&
                (device_mouse_y(device) >= posY + 47 && device_mouse_y(device) <= posY + 207)
                ) {
                
                    var modY = posY + 47;
                    
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
                        if (listaItems[indiceItem] != -1) {
                        
                            var datosItem = descripcionItem(listaItems[indiceItem]);
                            descItem = datosItem[0];
                            
                            datosItem = datosTrabajo(listaItems[indiceItem]);
                            
                            if (
                            listaItems[indiceItem] == 20 || listaItems[indiceItem] == 24 || listaItems[indiceItem] == 25 || listaItems[indiceItem] == 26 || listaItems[indiceItem] == 27 ||
                            listaItems[indiceItem] == 29 || listaItems[indiceItem] == 31 || listaItems[indiceItem] == 32 || listaItems[indiceItem] == 217 || listaItems[indiceItem] == 140 || listaItems[indiceItem] == 144 || listaItems[indiceItem] == 227
                            ) {
                                // Carpintería
                                elementosItem = "Leña: " + string(datosItem[2]);
                            } else if (
                            listaItems[indiceItem] == 41 || listaItems[indiceItem] == 42 || listaItems[indiceItem] == 43 || listaItems[indiceItem] == 44 || listaItems[indiceItem] == 45 || 
                            listaItems[indiceItem] == 61 || listaItems[indiceItem] == 66 || listaItems[indiceItem] == 67 || listaItems[indiceItem] == 68 || listaItems[indiceItem] == 69 || 
                            listaItems[indiceItem] == 70 || listaItems[indiceItem] == 97
                            ) {
                                // Sastrería
                                elementosItem = "Pieles de lobo: " + string(datosItem[2]);
                            } else {
                                // Herrería
                                if (datosItem[2] > 0) {
                                    elementosItem = "Hierro: " + string(datosItem[2]) + " ";
                                }
                                if (datosItem[3] > 0) {
                                    elementosItem += "Plata: " + string(datosItem[3]) + " ";
                                }
                                if (datosItem[4] > 0) {
                                    elementosItem += "Oro: " + string(datosItem[4]);
                                }
                            }
                                          
                            datosItem = configurarItem(listaItems[indiceItem]);
                            
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
                            
                                if (listaItems[indiceItem] == 144) {
                                    validoItem = "Podés usar este ítem (Ver manual para mas info.)";
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
                } else if (
                (device_mouse_x(device) >= posX + 122 && device_mouse_x(device) <= posX + 178) &&
                (device_mouse_y(device) >= posY + 211 && device_mouse_y(device) <= posY + 221)
                ) {
                
                    // Fabricar
                    
                    if (indiceItem != -1) {
                    
                        if (modo == 0 || modo == 2) {
                            
                            // Carpintería / Sastrería
                        
                            var indiceMaterial = 146;
                            var indiceSkill = 9;
                        
                            if (modo == 2) {
                                indiceMaterial = 28;
                                indiceSkill = 15;
                            }
                        
                            var materialesAcumulados = 0;
                        
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == indiceMaterial) {
                                    materialesAcumulados += obj_inventario.cantInv[i];
                                }    
                            }
                            
                            var datosItem = datosTrabajo(listaItems[indiceItem]);
                            
                            if (materialesAcumulados >= datosItem[2]) {
                    
                                var totalMeterialesNecesarios = datosItem[2];
                                var valido = false;
                                var existe = false;
                            
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    if (obj_inventario.indiceInv[i] == listaItems[indiceItem]) {
                                        if (obj_inventario.cantInv[i] + 1 <= 10000) {
                                        
                                            // Hay lugar en slot existente
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            existe = true;
                                            obj_inventario.cantInv[i]++;
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
                                            
                                            datosItem = configurarItem(listaItems[indiceItem]);
                                            
                                            obj_inventario.indiceInv[i] = listaItems[indiceItem];
                                            obj_inventario.tipoInv[i] = datosItem[0];
                                            obj_inventario.cantInv[i] = 1;
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
                                
                                    if (modo == 2 || random(10) > 6.5) {
                                        if (obj_pj.skills[indiceSkill] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                            obj_skills_libres.mostrado = false;
                                            obj_pj.skills[indiceSkill]++;
                                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                            idSubirSkills.indice = indiceSkill;
                                            alarm[0] = 1;
                                        }
                                    }
                                
                                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                        if (obj_inventario.indiceInv[i] == indiceMaterial) {
                                            if (obj_inventario.cantInv[i] > totalMeterialesNecesarios) {
                                            
                                                obj_inventario.cantInv[i] -= totalMeterialesNecesarios;
                                                totalMeterialesNecesarios = 0;
                                                break;
                                                
                                            } else if (obj_inventario.cantInv[i] == totalMeterialesNecesarios) {
                                                
                                                obj_inventario.cantInv[i] -= totalMeterialesNecesarios;
                                                totalMeterialesNecesarios = 0;
                                            
                                                if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                    obj_inventario.seleccionado = -1;
                                                }
                                                
                                                if (i == obj_inventario.posSeleccionado) {
                                                    obj_inventario.posSeleccionado = -1;
                                                }
                                            
                                                obj_inventario.cantInv[i] = 0;
                                                obj_inventario.indiceInv[i] = -1;
                                                obj_inventario.tipoInv[i] = "";
                                                obj_inventario.equipadoInv[i] = false;
                                                obj_inventario.nombreInv[i] = "Vacío";              
                                                
                                                break;
                                                
                                            } else {
                                            
                                                totalMeterialesNecesarios -= obj_inventario.cantInv[i];
                                            
                                                if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                    obj_inventario.seleccionado = -1;
                                                }
                                                
                                                if (i == obj_inventario.posSeleccionado) {
                                                    obj_inventario.posSeleccionado = -1;
                                                }
                                            
                                                obj_inventario.cantInv[i] = 0;
                                                obj_inventario.indiceInv[i] = -1;
                                                obj_inventario.tipoInv[i] = "";
                                                obj_inventario.equipadoInv[i] = false;
                                                obj_inventario.nombreInv[i] = "Vacío";  
                                                
                                            }
                                        }    
                                    }
                                
                                }
                                
                            }
                            
                        } else {
                        
                            // Herrería
                            
                            /*
                            
                                Lingotes:
                            
                                Hierro = 151;
                                Plata = 152;
                                Oro = 153;
                                
                            */
                        
                            var lingotesHAcumulados = 0;
                            var lingotesPAcumulados = 0;
                            var lingotesOAcumulados = 0;
                        
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == 151 || obj_inventario.indiceInv[i] == 152 || obj_inventario.indiceInv[i] == 153) {
                                    switch (obj_inventario.indiceInv[i]) {
                                        case 151:                    
                                            lingotesHAcumulados += obj_inventario.cantInv[i];
                                            break;
                                        case 152:                    
                                            lingotesPAcumulados += obj_inventario.cantInv[i];
                                            break;
                                        case 153:                    
                                            lingotesOAcumulados += obj_inventario.cantInv[i];
                                            break;
                                    }
                                }    
                            }
                            
                            var datosItem = datosTrabajo(listaItems[indiceItem]);
                            
                            if (
                            lingotesHAcumulados >= datosItem[2] && 
                            lingotesPAcumulados >= datosItem[3] && 
                            lingotesOAcumulados >= datosItem[4]
                            ) {
                    
                                var totalMaterialesNecesarios;
                                totalMaterialesNecesarios[0] = datosItem[2];
                                totalMaterialesNecesarios[1] = datosItem[3];
                                totalMaterialesNecesarios[2] = datosItem[4];
                                
                                var iAux = 0;
                                var indiceMaterial = 151;
                                var valido = false;
                                var existe = false;
                            
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    if (obj_inventario.indiceInv[i] == listaItems[indiceItem]) {
                                        if (obj_inventario.cantInv[i] + 1 <= 10000) {
                                        
                                            // Hay lugar en slot existente
                                            
                                            clicMantenido = true;
                                            deviceMantenido = device;
                                            if (alarm[1] == -1) {
                                                alarm[1] = 60;
                                            }
                                            
                                            existe = true;
                                            obj_inventario.cantInv[i]++;
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
                                            
                                            datosItem = configurarItem(listaItems[indiceItem]);
                                            
                                            obj_inventario.indiceInv[i] = listaItems[indiceItem];
                                            obj_inventario.tipoInv[i] = datosItem[0];
                                            obj_inventario.cantInv[i] = 1;
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
                                
                                    if (random(10) > 4.5) {
                                        if (obj_pj.skills[10] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                            obj_skills_libres.mostrado = false;
                                            obj_pj.skills[10]++;
                                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                            idSubirSkills.indice = 10;
                                            alarm[0] = 1;
                                        }
                                    }
                                    
                                    repeat (3) {
                                    
                                        for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                            if (obj_inventario.indiceInv[i] == indiceMaterial) {
                                                if (obj_inventario.cantInv[i] > totalMaterialesNecesarios[iAux]) {
                                                
                                                    obj_inventario.cantInv[i] -= totalMaterialesNecesarios[iAux];
                                                    totalMaterialesNecesarios[iAux] = 0;
                                                    break;
                                                    
                                                } else if (obj_inventario.cantInv[i] == totalMaterialesNecesarios[iAux]) {
                                                    
                                                    obj_inventario.cantInv[i] -= totalMaterialesNecesarios[iAux];
                                                    totalMaterialesNecesarios[iAux] = 0;
                                                
                                                    if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                        obj_inventario.seleccionado = -1;
                                                    }
                                                    
                                                    if (i == obj_inventario.posSeleccionado) {
                                                        obj_inventario.posSeleccionado = -1;
                                                    }
                                                
                                                    obj_inventario.cantInv[i] = 0;
                                                    obj_inventario.indiceInv[i] = -1;
                                                    obj_inventario.tipoInv[i] = "";
                                                    obj_inventario.equipadoInv[i] = false;
                                                    obj_inventario.nombreInv[i] = "Vacío";              
                                                    
                                                    break;
                                                    
                                                } else {
                                                
                                                    totalMaterialesNecesarios[iAux] -= obj_inventario.cantInv[i];
                                                
                                                    if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                        obj_inventario.seleccionado = -1;
                                                    }
                                                    
                                                    if (i == obj_inventario.posSeleccionado) {
                                                        obj_inventario.posSeleccionado = -1;
                                                    }
                                                
                                                    obj_inventario.cantInv[i] = 0;
                                                    obj_inventario.indiceInv[i] = -1;
                                                    obj_inventario.tipoInv[i] = "";
                                                    obj_inventario.equipadoInv[i] = false;
                                                    obj_inventario.nombreInv[i] = "Vacío";  
                                                    
                                                }
                                            }    
                                        }
                                        
                                        iAux++;
                                        indiceMaterial++;
                                    
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

/* */
/*  */
