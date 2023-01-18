/// @description  Control general / Control mouse

if (!visible) {
    tirando = false;
}

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
    
        if (device_mouse_check_button_pressed(device, mb_left)) {
            
            if (!dobleClic) {
            
                // /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                // Seleccionar item
                // /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
                if (visible && !obj_pj.muerto) {
                
                    if (!obj_tecla_T.teclaApretada) {
                    
                        var posX = 0;
                        var posY = 0;
                            
                        if (
                        device_mouse_x(device) >= __view_get( e__VW.XView, 1 ) + 121 &&
                        device_mouse_x(device) <= __view_get( e__VW.XView, 1 ) + 120 + 320 &&
                        device_mouse_y(device) >= __view_get( e__VW.YView, 1 ) + 8 &&
                        device_mouse_y(device) <= __view_get( e__VW.YView, 1 ) + 7 + 64
                        ) {
                        
                            obj_control_devices.devicesL[device] = true;
                        
                            obj_hechizos.moviendoHechizo = false;
                              
                            // Doble clic
                            
                            dobleClic = true;
                            if (alarm[6] == -1) {
                                alarm[6] = 15;
                            }
                        
                            var posX = device_mouse_x(device);
                            var posY = device_mouse_y(device);
                            
                            posX = posX - __view_get( e__VW.XView, 1 ) - 120;
                            posY = posY - room_height + __view_get( e__VW.HView, 1 ) - 7;
                            
                            var posItem = 0;
                            
                            if (posY <= 32) {
                            
                                // Arriba
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            } else {
                            
                                // Abajo
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i + 10;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            }
                            
                            // TRABAJO CON EL ITEM
                            
							if (obj_mover_inventario.moviendoItem && seleccionado != -1) {
							
								dobleClic = false;
                                
								if (indiceInv[posItem] == -1) {
									
									var datosItemMovido = configurarItem(seleccionado);
                                                
                                    indiceInv[posItem] = seleccionado;
                                    tipoInv[posItem] = datosItemMovido[0];
                                    cantInv[posItem] = cantInv[posSeleccionado];
                                    generoInv[posItem] = datosItemMovido[1];
                                    razaInv[posItem] = datosItemMovido[2];
                                    nroSkillInv[posItem] = datosItemMovido[3];
                                    skillRequeridoInv[posItem] = datosItemMovido[4];
                                    clase0ValidaInv[posItem] = datosItemMovido[5];
                                    clase1ValidaInv[posItem] = datosItemMovido[6];
                                    clase2ValidaInv[posItem] = datosItemMovido[7];
                                    clase3ValidaInv[posItem] = datosItemMovido[8];
                                    clase4ValidaInv[posItem] = datosItemMovido[9];
                                    clase5ValidaInv[posItem] = datosItemMovido[10];
                                    clase6ValidaInv[posItem] = datosItemMovido[11];
                                    clase7ValidaInv[posItem] = datosItemMovido[12];
                                    clase8ValidaInv[posItem] = datosItemMovido[13];
                                    nombreInv[posItem] = datosItemMovido[14];
								
									indiceInv[posSeleccionado] = -1;
									cantInv[posSeleccionado] = 0;
									tipoInv[posSeleccionado] = "";
								    nombreInv[posSeleccionado] = "Vacío";
									equipadoInv[posItem] = equipadoInv[posSeleccionado];
								    equipadoInv[posSeleccionado] = false;
									
								} else {

									var datosItemMovido = configurarItem(seleccionado);
									
									var indiceInvAux = indiceInv[posItem];
									var tipoInvAux = tipoInv[posItem];
									var cantInvAux = cantInv[posItem];
									var generoInvAux = generoInv[posItem];
									var razaInvAux = razaInv[posItem];
									var nroSkillInvAux = nroSkillInv[posItem];
									var skillRequeridoInvAux = skillRequeridoInv[posItem];
									var clase0ValidaInvAux = clase0ValidaInv[posItem];
									var clase1ValidaInvAux = clase1ValidaInv[posItem];
									var clase2ValidaInvAux = clase2ValidaInv[posItem];
									var clase3ValidaInvAux = clase3ValidaInv[posItem];
									var clase4ValidaInvAux = clase4ValidaInv[posItem];
									var clase5ValidaInvAux = clase5ValidaInv[posItem];
									var clase6ValidaInvAux = clase6ValidaInv[posItem];
									var clase7ValidaInvAux = clase7ValidaInv[posItem];
									var clase8ValidaInvAux = clase8ValidaInv[posItem];
									var nombreInvAux = nombreInv[posItem];
									var equipadoInvAux = equipadoInv[posItem];
									
									indiceInv[posItem] = seleccionado;
                                    tipoInv[posItem] = datosItemMovido[0];
                                    cantInv[posItem] = cantInv[posSeleccionado];
                                    generoInv[posItem] = datosItemMovido[1];
                                    razaInv[posItem] = datosItemMovido[2];
                                    nroSkillInv[posItem] = datosItemMovido[3];
                                    skillRequeridoInv[posItem] = datosItemMovido[4];
                                    clase0ValidaInv[posItem] = datosItemMovido[5];
                                    clase1ValidaInv[posItem] = datosItemMovido[6];
                                    clase2ValidaInv[posItem] = datosItemMovido[7];
                                    clase3ValidaInv[posItem] = datosItemMovido[8];
                                    clase4ValidaInv[posItem] = datosItemMovido[9];
                                    clase5ValidaInv[posItem] = datosItemMovido[10];
                                    clase6ValidaInv[posItem] = datosItemMovido[11];
                                    clase7ValidaInv[posItem] = datosItemMovido[12];
                                    clase8ValidaInv[posItem] = datosItemMovido[13];
                                    nombreInv[posItem] = datosItemMovido[14];
									equipadoInv[posItem] = equipadoInv[posSeleccionado];
									
									indiceInv[posSeleccionado] = indiceInvAux;
									tipoInv[posSeleccionado] = tipoInvAux;
									cantInv[posSeleccionado] = cantInvAux;
									generoInv[posSeleccionado] = generoInvAux;
									razaInv[posSeleccionado] = razaInvAux;
									nroSkillInv[posSeleccionado] = nroSkillInvAux;
									skillRequeridoInv[posSeleccionado] = skillRequeridoInvAux;
									clase0ValidaInv[posSeleccionado] = clase0ValidaInvAux;
									clase1ValidaInv[posSeleccionado] = clase1ValidaInvAux;
									clase2ValidaInv[posSeleccionado] = clase2ValidaInvAux;
									clase3ValidaInv[posSeleccionado] = clase3ValidaInvAux;
									clase4ValidaInv[posSeleccionado] = clase4ValidaInvAux;
									clase5ValidaInv[posSeleccionado] = clase5ValidaInvAux;
									clase6ValidaInv[posSeleccionado] = clase6ValidaInvAux;
									clase7ValidaInv[posSeleccionado] = clase7ValidaInvAux;
									clase8ValidaInv[posSeleccionado] = clase8ValidaInvAux;
									nombreInv[posSeleccionado] = nombreInvAux;
									equipadoInv[posSeleccionado] = equipadoInvAux;
									
								}
							
                                seleccionado = indiceInv[posItem];
                                posSeleccionado = posItem;
                                posDobleClic = posItem;
								obj_mover_inventario.moviendoItem = false;
							
							} else if (indiceInv[posItem] != -1) {
                                
                                var antesSeleccionado = seleccionado;
                                var posAntesSeleccionado = posSeleccionado;
                                
                                seleccionado = indiceInv[posItem];
                                posSeleccionado = posItem;
                                posDobleClic = posItem;
                                alarm[2] = 15;
                                
                                var validoRaza = false;
                                var validoGenero = false;
                                var validoSkill = false;
                                var validoClase = false;
                                
                                // Raza
                                
                                if (
                                razaInv[posItem] == -1 ||
                                razaInv[posItem] == obj_pj.nroRaza
                                ) {
                                    validoRaza = true;
                                } else {
                                    switch (razaInv[posItem]) {
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
                                generoInv[posItem] == -1 ||
                                generoInv[posItem] == obj_pj.genero
                                ) {
                                    validoGenero = true;
                                }
                                
                                // Clase
                                
                                switch (obj_pj.clase) {
                                    case 0:
                                        if (clase0ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 1:
                                        if (clase1ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 2:
                                        if (clase2ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 3:
                                        if (clase3ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 4:
                                        if (clase4ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 5:
                                        if (clase5ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 6:
                                        if (clase6ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 7:
                                        if (clase7ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                    case 8:
                                        if (clase8ValidaInv[posItem]) {
                                            validoClase = true;
                                        }
                                        break;
                                }
                                
                                // Skills
                                
                                if (obj_pj.skills[nroSkillInv[posItem]] >= skillRequeridoInv[posItem]) {
                                    validoSkill = true;
                                }
                                
                                if (!validoRaza) {
                                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                    idINFO.padre = obj_pj.id;
                                    idINFO.texto = "¡Tu raza no puede usar este ítem!"; 
                                } else if (!validoGenero) {
                                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                    idINFO.padre = obj_pj.id;
                                    idINFO.texto = "¡Tu género no puede usar este ítem!"; 
                                } else if (!validoClase) {
                                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                    idINFO.padre = obj_pj.id;
                                    idINFO.texto = "¡Tu clase no puede usar este ítem!"; 
                                } else if (!validoSkill) {
                                    idFaltaSkill = instance_create(obj_pj.x, obj_pj.y, obj_efecto_falta_skill);
                                    idFaltaSkill.nroSkill = nroSkillInv[posItem];
                                    idFaltaSkill.skillRequerido = skillRequeridoInv[posItem];
                                }                
                                
                                if (validoRaza && validoGenero && validoSkill && validoClase) {
									
									obj_skills_libres.mostrado = false;
                                
                                    if (cantInv[posItem] >= 1) {
                                        if (tipoInv[posItem] == "arma") {
                                            if (obj_pj.armaEnInv != posItem) {
                                            
                                                obj_pj.armaActual = indiceInv[posItem];
                                                obj_pj.armaEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "arma") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                equipadoInv[posItem] = true;
                                                reproducirSonido(snd_equiparODesequiparArma, false, false);
                                                
                                            } else {
                                                if (indiceInv[posItem] < 21 || indiceInv[posItem] > 27) {
                                                    obj_pj.armaActual = -1;
                                                    obj_pj.armaEnInv = -1;
                                                    equipadoInv[posItem] = false;
                                                    reproducirSonido(snd_equiparODesequiparArma, false, false);
                                                } else {
                                                    if (antesSeleccionado == indiceInv[posItem] && posAntesSeleccionado == posItem) {
                                                        obj_pj.armaActual = -1;
                                                        obj_pj.armaEnInv = -1;
                                                        equipadoInv[posItem] = false;
                                                        reproducirSonido(snd_equiparODesequiparArma, false, false);
                                                    }
                                                }
                                            }
                                        } else if (tipoInv[posItem] == "flecha") {
                                            if (obj_pj.flechaEnInv != posItem) {
                                            
                                                obj_pj.flechaActual = indiceInv[posItem];
                                                obj_pj.flechaEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "flecha") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                equipadoInv[posItem] = true;
                                                
                                            } else {
                                                obj_pj.flechaActual = -1;
                                                obj_pj.flechaEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        } else if (tipoInv[posItem] == "ropa") {
                                            if (obj_pj.ropaEnInv != posItem) {
                                            
                                                obj_pj.desnudo = false;
                                                obj_pj.ropaActual = indiceInv[posItem];
                                                obj_pj.ropaEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "ropa") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                equipadoInv[posItem] = true;
                                                obj_pj.ropaIndexada = false;
                                                
                                            } else {
                                                obj_pj.desnudo = true;
                                                obj_pj.ropaActual = -1;
                                                obj_pj.ropaEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        } else if (tipoInv[posItem] == "escudo") {
                                            if (obj_pj.escudoEnInv != posItem) {
                                            
                                                obj_pj.escudoActual = indiceInv[posItem];
                                                obj_pj.escudoEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "escudo") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                equipadoInv[posItem] = true;
                                                
                                            } else {
                                                obj_pj.escudoActual = -1;
                                                obj_pj.escudoEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        } else if (tipoInv[posItem] == "casco") {
                                            if (obj_pj.cascoEnInv != posItem) {
                                            
                                                obj_pj.cascoActual = indiceInv[posItem];
                                                obj_pj.cascoEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "casco") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                equipadoInv[posItem] = true;
                                                
                                            } else {
                                                obj_pj.cascoActual = -1;
                                                obj_pj.cascoEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        } else if (tipoInv[posItem] == "laud") {
                                            if (obj_pj.laudEnInv != posItem) {
                                            
                                                obj_pj.laudActual = indiceInv[posItem];
                                                obj_pj.laudEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "laud") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                obj_pj.laudEquipado = true;
                                                equipadoInv[posItem] = true;
                                                
                                            } else {
                                                obj_pj.laudEquipado = false;
                                                obj_pj.laudActual = -1;
                                                obj_pj.laudEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        } else if (tipoInv[posItem] == "trabajo") {
                                            if (obj_pj.trabajoEnInv != posItem) {
                                            
                                                obj_pj.trabajoActual = indiceInv[posItem];
                                                obj_pj.trabajoEnInv = posItem;
                                                
                                                var i = 0;
                                                
                                                repeat (maximoInv) {
                                                    if (tipoInv[i] == "trabajo") {
                                                        equipadoInv[i] = false;
                                                    }
                                                    i++;
                                                }
                                                
                                                obj_pj.trabajoEquipado = true;
                                                equipadoInv[posItem] = true;
                                                
                                            } else {
                                                obj_pj.trabajoEquipado = false;
                                                obj_pj.trabajoActual = -1;
                                                obj_pj.trabajoEnInv = -1;
                                                equipadoInv[posItem] = false;
                                            }
                                        }
                                    } else {
                                        seleccionado = -1;
                                    }
                                    
                                } else {
                                    // seleccionado = -1;
                                }
                                
                            }
                         
                            obj_control_devices.devicesL[device] = false;
                               
                        }
                    
                    } else {
                        alarm[0] = 1;
                    }
                
                } else if (visible && obj_pj.muerto) {
                    
                    if (!obj_tecla_T.teclaApretada) {
                    
                        var posX = 0;
                        var posY = 0;
                            
                        if (
                        device_mouse_x(device) >= __view_get( e__VW.XView, 1 ) + 121 &&
                        device_mouse_x(device) <= __view_get( e__VW.XView, 1 ) + 120 + 320 &&
                        device_mouse_y(device) >= __view_get( e__VW.YView, 1 ) + 8 &&
                        device_mouse_y(device) <= __view_get( e__VW.YView, 1 ) + 7 + 64
                        ) {
                        
                            obj_control_devices.devicesL[device] = true;
                
                            obj_hechizos.moviendoHechizo = false;
                        
                            var posX = device_mouse_x(device);
                            var posY = device_mouse_y(device);
                            
                            posX = posX - __view_get( e__VW.XView, 1 ) - 120;
                            posY = posY - room_height + __view_get( e__VW.HView, 1 ) - 7;
                            
                            var posItem = 0;
                            
                            if (posY <= 32) {
                            
                                // Arriba
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            } else {
                            
                                // Abajo
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i + 10;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            }
                            
                            // TRABAJO CON EL ITEM
                
                            if (indiceInv[posItem] != -1) {
                                if (tipoInv[posItem] == "barca" || tipoInv[posItem] == "runa") {
									obj_skills_libres.mostrado = false;
                                    seleccionado = indiceInv[posItem];
                                    posSeleccionado = posItem;
                                } else {
                                    seleccionado = -1;
                                    posSeleccionado = -1;
                                }
                            } else {
                                seleccionado = -1;
                                posSeleccionado = -1;
                            }
                            
                            obj_control_devices.devicesL[device] = false;
                            
                        }            
                            
                    }
                                        
                } 
            
            } else {
            
                // /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                // Tirar item de a 1
                // /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                alarm[6] = -1;
                dobleClic = false;
                              
                tileInvalido = false;
                  
                with (obj_pj) {
                    if (place_meeting(x, y, obj_tile_invalido)) {
                        other.tileInvalido = true;
                    }
                }
                
                if (visible && !obj_pj.muerto && !obj_pj.navega && !tileInvalido) {
                
                    if (!obj_tecla_T.teclaApretada) {
                    
                        var posX = 0;
                        var posY = 0;
                            
                        if (
                        device_mouse_x(device) >= __view_get( e__VW.XView, 1 ) + 121 &&
                        device_mouse_x(device) <= __view_get( e__VW.XView, 1 ) + 120 + 320 &&
                        device_mouse_y(device) >= __view_get( e__VW.YView, 1 ) + 8 &&
                        device_mouse_y(device) <= __view_get( e__VW.YView, 1 ) + 7 + 64
                        ) {
                        
                            obj_control_devices.devicesL[device] = true;
                
                            obj_hechizos.moviendoHechizo = false;
                        
                            var posX = device_mouse_x(device);
                            var posY = device_mouse_y(device);
                            
                            posX = posX - __view_get( e__VW.XView, 1 ) - 120;
                            posY = posY - room_height + __view_get( e__VW.HView, 1 ) - 7;
                            
                            var posItem = 0;
                            
                            if (posY <= 32) {
                            
                                // Arriba
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            } else {
                            
                                // Abajo
                                
                                var i = 0;
                                
                                repeat (10) {
                                    if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                                        posItem = i + 10;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            }
                            
                            // TRABAJO CON EL ITEM
                            
                            if (indiceInv[posItem] != -1) {
                            
                                if (posItem == posDobleClic) {
                                                    
                                    deviceDC = device;
                                    alarm[5] = 60;
                                
                                    seleccionado = indiceInv[posItem];
                                    posSeleccionado = posItem;
                                    
                                    if (cantInv[posItem] >= 1) {
                                        if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
                                        
                                            valido = true;
                                            
                                            if (!tiraDeA1) {
                                                tiraDeA1 = true;
                                            }
                                            
                                            alarm[1] = 120;
                                        
                                            if (
                                            !position_meeting(obj_pj.x, obj_pj.y - 16, obj_item) &&
                                            !position_meeting(obj_pj.x, obj_pj.y - 16, obj_oro)
                                            ) {
                                                var idItemTirado = instance_create(obj_pj.x, obj_pj.y, obj_item);
                                                idItemTirado.superpone = true;
                                                idItemTirado.indice = indiceInv[posItem];
                                                idItemTirado.cantidad = 1;
                                                idItemTirado.tipo = tipoInv[posItem];
                                            } else if (position_meeting(obj_pj.x, obj_pj.y - 16, obj_item)) {
                                                var idItemTirado = instance_position(obj_pj.x, obj_pj.y - 16, obj_item);
                                                if (idItemTirado.indice == indiceInv[posItem] && idItemTirado.cantidad < 10000) {
                                                    idItemTirado.cantidad++;
                                                } else {
                                                    valido = false;
                                                }
                                            }
                                            
                                            if (valido) {
                                                if (cantInv[posItem] > 1) {
                                                    cantInv[posItem]--;
                                                } else {
                                                
                                                    if (indiceInv[posItem] == seleccionado) {
                                                        seleccionado = -1;
                                                    }
                                                    
                                                    if (posItem == posSeleccionado) {
                                                        posSeleccionado = -1;
                                                    }
                                                    
                                                    if (tipoInv[posItem] == "ropa" && posItem == obj_pj.ropaEnInv) {
                                                        obj_pj.desnudo = true;
                                                        obj_pj.ropaActual = -1;
                                                        obj_pj.ropaEnInv = -1;
                                                        obj_pj.ropaIndexada = false;
                                                    } else if (tipoInv[posItem] == "arma" && posItem == obj_pj.armaEnInv) {
                                                        obj_pj.armaActual = -1;
                                                        obj_pj.armaEnInv = -1;
                                                        reproducirSonido(snd_equiparODesequiparArma, false, false);
                                                    } else if (tipoInv[posItem] == "flecha" && posItem == obj_pj.flechaEnInv) {
                                                        obj_pj.flechaActual = -1;
                                                        obj_pj.flechaEnInv = -1;
                                                    } else if (tipoInv[posItem] == "casco" && posItem == obj_pj.cascoEnInv) {
                                                        obj_pj.cascoActual = -1;
                                                        obj_pj.cascoEnInv = -1;
                                                    } else if (tipoInv[posItem] == "escudo" && posItem == obj_pj.escudoEnInv) {
                                                        obj_pj.escudoActual = -1;
                                                        obj_pj.escudoEnInv = -1;
                                                    } else if (tipoInv[posItem] == "laud" && posItem == obj_pj.laudEnInv) {
                                                        obj_pj.laudActual = -1;
                                                        obj_pj.laudEnInv = -1;
                                                        obj_pj.laudEquipado = false;
                                                    } else if (tipoInv[posItem] == "trabajo" && posItem == obj_pj.trabajoEnInv) {
                                                        obj_pj.trabajoActual = -1;
                                                        obj_pj.trabajoEnInv = -1;
                                                        obj_pj.trabajoEquipado = false;
                                                        obj_panel_trabajos.mostrado = false;
                                                    }
                                                
                                                    cantInv[posItem] = 0;
                                                    indiceInv[posItem] = -1;
                                                    tipoInv[posItem] = "";
                                                    equipadoInv[posItem] = false;
                                                    nombreInv[posItem] = "Vacío";
                                                    
                                                }
                                            }
                                            
                                        }
                                    }
                                }
                            
                            }
                            
                            obj_control_devices.devicesL[device] = false;
                            
                        }
                    
                    } else {
                        alarm[0] = 1;
                    }
                
                }
            
            }
            
        }      
        
    }

}

