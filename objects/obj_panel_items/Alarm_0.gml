/// @description  Transferir rápidamente

if (clicMantenido) {
    if (deviceMantenido != -1) {
    
        var device = deviceMantenido;
    
        var posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 144;
        var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
        
        if (!modoBanco) {
        
            if (
            (device_mouse_x(device) >= posX + 97 && device_mouse_x(device) <= posX + 113) &&
            (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
            ) {
            
                // Vender
                
                var cant = floor(real(campoCantidadS));
                
                if (sectorPj && cant > 0) {
                    if (indiceItem != -1) {
						if (cant > obj_inventario.cantInv[indiceItem])
							cant = obj_inventario.cantInv[indiceItem]
						var indiceItemAVender = obj_inventario.indiceInv[indiceItem];
                        if (indiceItemAVender != -1 && obj_inventario.cantInv[indiceItem] >= cant && itemVendible(indiceItemAVender)) {
                        
                            if (obj_pj.oro + precioItem * cant <= obj_pj.oroMax) {
                                obj_pj.oro += precioItem * cant;
                            } else {
                                obj_pj.oro = obj_pj.oroMax;
                            }
												
							obj_skills_libres.mostrado = false;
                        
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
        
        } else {
            
            if (
            (device_mouse_x(device) >= posX + 97 && device_mouse_x(device) <= posX + 113) &&
            (device_mouse_y(device) >= posY + 210 && device_mouse_y(device) <= posY + 223)
            ) {
            
                // Depositar
                
                var cant = floor(real(campoCantidadS));
                
                if (sectorPj && cant > 0) {
                    if (indiceItem != -1) {
						if (cant > obj_inventario.cantInv[indiceItem])
							cant = obj_inventario.cantInv[indiceItem];
                        if (obj_inventario.indiceInv[indiceItem] != -1 && obj_inventario.cantInv[indiceItem] >= cant) {
                        
                            var valido = false;
                            var existe = false;
                
                            for (var i = 0; i < 20; i++) {
                                if (idPadre.indiceNpc[i] == obj_inventario.indiceInv[indiceItem]) {
                                    if (idPadre.cantNpc[i] + cant <= 10000) {
                                    
                                        // Hay lugar en slot existente
                                        
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
							cant = idPadre.cantNpc[indiceItem];
                        if (idPadre.indiceNpc[indiceItem] != -1 && idPadre.cantNpc[indiceItem] >= cant) {
                                
                            var valido = false;
                            var existe = false;
            
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == idPadre.indiceNpc[indiceItem]) {
                                    if (obj_inventario.cantInv[i] + cant <= 10000) {
                                    
                                        // Hay lugar en slot existente
                                        
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
    
        alarm[0] = 2;
        
    }
}

