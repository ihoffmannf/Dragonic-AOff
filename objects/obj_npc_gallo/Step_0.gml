/// @description  Control general

//////////////////////////

personaRoom = elegirIAObjetivoNPCs();

target = obj_pj;

if (!domado && personaRoom != -1 && instance_exists(personaRoom) && !personaRoom.muerto) {
    if (
    obj_pj.invisible ||
    obj_pj.muerto ||
    (x < __view_get( e__VW.XView, 0 ) || (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) ||
    (y < __view_get( e__VW.YView, 0 ) || (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
    ) {
        if (distance_to_object(personaRoom) <= 250) {
            target = personaRoom;
        }
    } else {
        if (distance_to_object(personaRoom) < distance_to_object(obj_pj)) {
            target = personaRoom;
        }
    }
}

if (!domado && target == obj_pj) {
    if (
    obj_pj.invisible ||
    obj_pj.muerto ||
    (x < __view_get( e__VW.XView, 0 ) || (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) ||
    (y < __view_get( e__VW.YView, 0 ) || (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
    ) {
        target = -1;
    }
}

if (!domado) {
    targetNPC = -1;
}

if (targetNPC != -1) {
    if (!instance_exists(targetNPC)) {
        targetNPC = -1;
    }
}

if (targetNPC != -1) {
    target = targetNPC;
}

//////////////////////////
        
if (!siguiendo && !inmovilizado && !paralizado) {

    siguiendo = true;
    puedeMoverse = true;
    
    if (!moviendose) {
        
        if (target != -1) {
        
            xInicio = x;
            yInicio = y;
            
            if (y > target.y) {
            
                bloqueo = place_meeting(x, y - 32, obj_bloqueo_agua);
                
                if (
                !place_meeting(x, y - 32, obj_pj) && 
                !place_meeting(x, y - 32, obj_npc_basic) && 
                !place_meeting(x, y - 32, obj_bloque_basic) && !place_meeting(x, y - 32, obj_telep) &&             
                !bloqueo
                ) {
                    alarm[1] = 1;
                    moviendose = true;
                    y -= spd;
                }
                
                direccion = 1;
                
            } else if (y < target.y) {
            
                bloqueo = place_meeting(x, y + 32, obj_bloqueo_agua);
            
                if (
                !place_meeting(x, y + 32, obj_pj) && 
                !place_meeting(x, y + 32, obj_npc_basic) && 
                !place_meeting(x, y + 32, obj_bloque_basic) && !place_meeting(x, y + 32, obj_telep) &&         
                !bloqueo
                ) {
                    alarm[1] = 1;
                    moviendose = true;
                    y += spd;
                }
                
                direccion = 0;
                
            } else if (x > target.x) {
            
                bloqueo = place_meeting(x - 32, y, obj_bloqueo_agua);
            
                if (
                !place_meeting(x - 32, y, obj_pj) && 
                !place_meeting(x - 32, y, obj_npc_basic) && 
                !place_meeting(x - 32, y, obj_bloque_basic) && !place_meeting(x - 32, y, obj_telep) &&   
                !bloqueo
                ) {
                    alarm[1] = 1;
                    moviendose = true;
                    x -= spd;
                }
                
                direccion = 2;
            
            } else if (x < target.x) {
            
                bloqueo = place_meeting(x + 32, y, obj_bloqueo_agua);
            
                if (
                !place_meeting(x + 32, y, obj_pj) && 
                !place_meeting(x + 32, y, obj_npc_basic) && 
                !place_meeting(x + 32, y, obj_bloque_basic) && !place_meeting(x + 32, y, obj_telep) &&   
                !bloqueo
                ) {
                    alarm[1] = 1;
                    moviendose = true;
                    x += spd;
                }
                
                direccion = 3;
                
            }
        
        } else {
            siguiendo = false;
        }
        
    }
    
}

if (puedeMoverse) {

    switch (direccion) {
        case 0:
            if ((yInicio - y) / 32 != round((yInicio - y) / 32)) {
                y += spd;
            } else {
                if (moviendose || puedeMoverse) {
                    moviendose = false;
                    puedeMoverse = false;
                    alarm[0] = 15.45;
                }
            }
            break;
        case 1:
            if ((y - yInicio) / 32 != round((y - yInicio) / 32)) {
                y -= spd;
            } else {
                if (moviendose || puedeMoverse) {
                    moviendose = false;
                    puedeMoverse = false;
                    alarm[0] = 15.45;
                }
            }
            break;
        case 2:
            if ((xInicio - x) / 32 != round((xInicio - x) / 32)) {
                x -= spd;
            } else {
                if (moviendose || puedeMoverse) {
                    moviendose = false;
                    puedeMoverse = false;
                    alarm[0] = 15.45;
                }
            }
            break;
        case 3:
            if ((x - xInicio) / 32 != round((x - xInicio) / 32)) {
                x += spd;
            } else {
                if (moviendose || puedeMoverse) {
                    moviendose = false;
                    puedeMoverse = false;
                    alarm[0] = 15.45;
                }
            }
            break;
    }
    
}

// Depth

if (
(x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
(y >= __view_get( e__VW.YView, 0 ) - __view_get( e__VW.WView, 0 ) * 0.5 && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5))
) {

    if (y < obj_pj.y) {
        depth = obj_pj.depth + obj_pj.y - y;
    } else if (y > obj_pj.y) {
        depth = obj_pj.depth - y + obj_pj.y;
    } else {
        depth = obj_pj.depth;
    }

}

// Salud

if (salud <= 0) {
    instance_destroy();
}




/// Control mouse

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
            
            if (!dobleClic) {
                dobleClic = true;
                if (alarm[5] == -1) {
                    alarm[5] = 15;
                }
            } else {
                
                // Domar
                
                if (!obj_pj.muerto) {
                    
                    if (!domado) {
                        
                        if (obj_pj.clase == 5) {
                        
                            if (!obj_mapas_mundo.mapas[room]) {
                        
                                var invoco = false;
                            
                                for (var i = 0; i < 3; i++) {
                                    if (obj_pj.criaturasInvocadas[i] != -1) {
                                        invoco = true;
                                        break;
                                    }
                                } 
                            
                                if (!invoco) {
                                    
                                    var tieneEspacio = false;
                                
                                    for (var i = 0; i < 3; i++) {
                                        if (obj_pj.criaturasHijas[i, 1] == -1) {
                                            tieneEspacio = true;
                                            break;
                                        }
                                    }    
                                
                                    if (tieneEspacio) {
                                    
                                        if ((obj_pj.skills[11] * obj_pj.atributos[3] / 6) >= puntosDomaNPC) {
                                            var tienePuntos = true;
                                        } else {
                                            var tienePuntos = false;
                                        }
                                        
                                        if (tienePuntos) {
                                            if (random(10) > 7.5) {
                                            
                                                // Doma
                                            
                                                var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                                idINFO.padre = obj_pj.id;
                                                idINFO.texto = "¡Domaste a la criatura!";
												
												obj_skills_libres.mostrado = false;
                                                
                                                domado = true;
                                                
                                                for (var j = 0; j < 3; j++) {
                                                    with (obj_pj.criaturasHijas[j, 0]) {
                                                        if (targetNPC == other.id) {
                                                            targetNPC = -1;
                                                        }
                                                    }
                                                }
                                                                        
                                                obj_pj.criaturasHijas[i, 0] = id;
                                                obj_pj.criaturasHijas[i, 1] = id.object_index;
                                                obj_pj.criaturasHijas[i, 2] = id.salud;
                                                obj_pj.criaturasHijas[i, 3] = id.roomInicial;
                                                
                                            } else {
                                                var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                                idINFO.padre = obj_pj.id;
                                                idINFO.texto = "¡No pudiste domar a la criatura!";
                                            }
                                            
                                            if (obj_pj.skills[11] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                                if (random(10) > 6.5) {
                                                    obj_skills_libres.mostrado = false;
                                                    obj_pj.skills[11]++;
                                                    var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                                    idSubirSkills.indice = 11;
                                                }
                                            }
                                            
                                        } else {
                                            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                            idINFO.padre = obj_pj.id;
                                            idINFO.texto = "¡No tenés suficientes puntos para domar!";
                                        }
                                        
                                    } else {
                                        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                        idINFO.padre = obj_pj.id;
                                        idINFO.texto = "¡No podés domar a más de 3 criaturas!";
                                    }
                                
                                } else {
                                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                    idINFO.padre = obj_pj.id;
                                    idINFO.texto = "¡No podés domar criaturas habiendo invocado otras!";
                                }
                            
                            } else {
                                var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                                idINFO.padre = obj_pj.id;
                                idINFO.texto = "¡No podés domar criaturas en una zona segura!";
                            }
                            
                        } else {
                            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                            idINFO.padre = obj_pj.id;
                            idINFO.texto = "¡Solo los druidas pueden domar criaturas!";
                        }
                        
                    } else {
                    
                        // Abandona
                                    
                        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                        idINFO.padre = obj_pj.id;
                        idINFO.texto = "¡Abandonaste a la criatura!";
                        
                        for (var i = 0; i < 3; i++) {
                            if (obj_pj.criaturasHijas[i, 0] == id) {
                                break;
                            }
                        }  
                        
                        domado = false;
                        obj_pj.criaturasHijas[i, 0] = -1;
                        obj_pj.criaturasHijas[i, 1] = -1;
                        
                    }    
                
                } else {
                        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                        idINFO.padre = obj_pj.id;
                        idINFO.texto = "¡Estás muerto!";
                }
                
                dobleClic = false;
            
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

