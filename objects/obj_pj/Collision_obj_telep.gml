/// @description  Teletransporta

if (!teletransporta) {

    if (other.roomTP != -1) {

        if (other.nivelRequerido <= obj_pj.nivel) {        
        
            obj_personas_mundo.roomAnterior = room;
        
            obj_flecha_abajo.PJTelep = true;
            obj_flecha_arriba.PJTelep = true;
            obj_flecha_izq.PJTelep = true;
            obj_flecha_der.PJTelep = true;        
        
            if (other.roomTP != room) {
            
                /*
                with (obj_personas_mundo) {
                    limpiarIARoomActual();
                }
                */
    
                // NPCs
            
                // Spawneo NPCs que faltan
                
                for (var j = 0; j < 3; j++) {
                    if (criaturasHijas[j, 1] != -1) { // Si la tengo domada (guardada o no)...
                        if (criaturasHijas[j, 3] == room) { // Si pertenece a esta room
                            
                            // La spawneo
            
                            var multX = 16;
                            var multY = 16;
                            var xNuevo = 0;
                            var yNuevo = 0;
                            
                            do {
                            
                                xNuevo = multX * floor(random_range(2, room_width / multX - 32));
                                yNuevo = multY * floor(random_range(1, room_height / multY - 32));
                                var tile = tile_layer_find(10000000, xNuevo, yNuevo);
                            
                            } until (
                            xNuevo % 16 == 0 &&
                            yNuevo % 16 == 0 &&
                            xNuevo % 32 != 0 &&
                            yNuevo % 32 != 0 &&
                            tile != -1 && 
                            instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
                            instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
                            instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
                            instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
                            );
                            
                            instance_create(xNuevo, yNuevo, criaturasHijas[j, 1]);
                            
                            criaturasHijas[j, 3] = -1;
                            
                        }
                    }
                }
                
                // Fin Spawn
            
                obj_npcs_mundo.i = 0;
                
                with (obj_npc_basic) {
                    if (object_index != obj_persona) {
                        if (hostil) {
                            if (!domado && !invocado) {
                                if (roomInicial == room) {
                                    obj_npcs_mundo.NPCsRMActual[obj_npcs_mundo.i] = id; // Guardo todos los IDs de los NPCs de la room en un vector
                                    obj_npcs_mundo.i++;
                                }
                            }
                        }
                    }
                }
                
                var totalNPCs = obj_npcs_mundo.i;
                obj_npcs_mundo.i = 0;
                
                for (var i = 0; i < totalNPCs; i++) {
                    actualizarNPCsXRM(obj_npcs_mundo.NPCsRMActual[i]); // Le paso el ID del NPC para que lo guarde
                    obj_npcs_mundo.i++;
                }    
                
                // Items
            
                obj_items_mundo.i = 0;
                
                with (obj_item_basic) {
                    obj_items_mundo.ItemsRMActual[obj_items_mundo.i] = id; // Guardo todos los IDs de los items de la room en un vector
                    obj_items_mundo.i++;
                }
                
                var totalItems = obj_items_mundo.i;
                obj_items_mundo.i = 0;
                
                // Reinicio el vector de ítems de la room                
                
                with (obj_items_mundo) {
                    reiniciarArrayItemsRM(room);
                }         
                       
                for (var i = 0; i < totalItems; i++) {
                    actualizarItemsXRM(obj_items_mundo.ItemsRMActual[i]); // Le paso el ID del item para que lo guarde
                    obj_items_mundo.i++;
                }  
                
                // IA
                
                if (instance_number(obj_persona) > 0) {
                
                    IAsSiguenAlOtroMapa();
                
                    with (obj_persona) {    
                        if (salud > 0) {
                    
                            obj_personas_mundo.direccionPJ = obj_pj.direccion;                        
                            
                            if (obj_pj.invisible) {
                                if (random(10) > 7.5) {
                                    obj_personas_mundo.PJInvi = false;
                                } else {
                                    obj_personas_mundo.PJInvi = true;
                                }
                            } else {
                                obj_personas_mundo.PJInvi = false;
                            }
                            
                            // actualizarIAXRM(id); // Le paso el ID de la persona para que lo guarde                            
                            actualizarIAs();
                            
                        }        
                    }
                
                }
                
                // Teletransporte
                
                room_goto(other.roomTP);
                
                obj_pj.criaturasHijas[0, 0] = -1;
                obj_pj.criaturasHijas[1, 0] = -1;
                obj_pj.criaturasHijas[2, 0] = -1;
				
				if (!puedeInvocarMascotas()) {
	                obj_pj.criaturasHijas[0, 1] = -1;
	                obj_pj.criaturasHijas[1, 1] = -1;
	                obj_pj.criaturasHijas[2, 1] = -1;
				}
                
                obj_pj.criaturasInvocadas[0] = -1;
                obj_pj.criaturasInvocadas[1] = -1;
                obj_pj.criaturasInvocadas[2] = -1;
                
                if (other.object_index != obj_tp) {
                            
                    switch (direccion) {
                        case 0:
                            y -= 2048;
                            break;
                        case 1:
                            y += 2048;
                            break;
                        case 2:
                            x += 1760;
                            break;
                        case 3:
                            x -= 1760;
                            break;
                    }
                
                } else {
                    
                    while (pasos != 0) {
                        switch (direccion) {
                            case 0:
                                if (pasos < 13) {
                                    y += spd; 
                                    pasos++;
                                } else {
                                    y += spdUltimoPaso;
                                    y = floor(y);
                                    pasos = 0;
                                }     
                                break;  
                            case 1:
                                if (pasos < 13) {
                                    y -= spd; 
                                    pasos++;
                                } else {
                                    y -= spdUltimoPaso;
                                    y = floor(y);
                                    y++;
                                    pasos = 0;
                                }     
                                break;    
                            case 2:
                                if (pasos < 13) {
                                    x -= spd; 
                                    pasos++;
                                } else {
                                    x -= spdUltimoPaso;
                                    x = floor(x);
                                    x++;
                                    pasos = 0;
                                }     
                                break;   
                            case 3:
                                if (pasos < 13) {
                                    x += spd; 
                                    pasos++;
                                } else {
                                    x += spdUltimoPaso;
                                    x = floor(x);
                                    pasos = 0;
                                }     
                                break;                       
                        }
                    }                 
                    
                    x = other.xTP;
                    y = other.yTP;
                    
                    puedeMoverse = true;               
                    
                }
                
                if (!other.visible) {
                    teletransporta = true;
                }
                
                alarm[9] = 1;
                
            } else if (other.roomTP == room) {
                
                // Guardo criaturas hijas e invocadas
            
                for (var i = 0; i < 3; i++) {
                    if (obj_pj.criaturasInvocadas[i] != -1) {
                        with (obj_pj.criaturasInvocadas[i]) {
                            instance_destroy();
                        }
                        obj_pj.criaturasInvocadas[i] = -1;
                    }
                }
                
                for (var i = 0; i < 3; i++) {
                    if (obj_pj.criaturasHijas[i, 0] != -1) {
                        with (obj_pj.criaturasHijas[i, 0]) {
                            instance_destroy();
                        }
                        obj_pj.criaturasHijas[i, 0] = -1;
                    }
                } 
				
				if (!puedeInvocarMascotas()) {
	                obj_pj.criaturasHijas[0, 1] = -1;
	                obj_pj.criaturasHijas[1, 1] = -1;
	                obj_pj.criaturasHijas[2, 1] = -1;
				}
                
                // IA
                
                if (instance_number(obj_persona) > 0) {
                
                    IAsSiguenAlOtroMapa();
                
                    with (obj_persona) {    
                        if (salud > 0) {
                    
                            obj_personas_mundo.direccionPJ = obj_pj.direccion;
                            
                            if (obj_pj.invisible) {
                                if (random(10) > 7.5) {
                                    obj_personas_mundo.PJInvi = false;
                                } else {
                                    obj_personas_mundo.PJInvi = true;
                                }
                            } else {
                                obj_personas_mundo.PJInvi = false;
                            }
                            
                            // actualizarIAXRM(id); // Le paso el ID de la persona para que lo guarde
                            actualizarIAs();
                                                        
                        }        
                    }
                } /*else {
                    with (obj_personas_mundo) {
                        limpiarIAMundo();
                        crearIA();
                    }
                }*/         
                
                while (pasos != 0) {
                    switch (direccion) {
                        case 0:
                            if (pasos < 13) {
                                y += spd; 
                                pasos++;
                            } else {
                                y += spdUltimoPaso;
                                y = floor(y);
                                pasos = 0;
                            }     
                            break;  
                        case 1:
                            if (pasos < 13) {
                                y -= spd; 
                                pasos++;
                            } else {
                                y -= spdUltimoPaso;
                                y = floor(y);
                                y++;
                                pasos = 0;
                            }     
                            break;    
                        case 2:
                            if (pasos < 13) {
                                x -= spd; 
                                pasos++;
                            } else {
                                x -= spdUltimoPaso;
                                x = floor(x);
                                x++;
                                pasos = 0;
                            }     
                            break;   
                        case 3:
                            if (pasos < 13) {
                                x += spd; 
                                pasos++;
                            } else {
                                x += spdUltimoPaso;
                                x = floor(x);
                                pasos = 0;
                            }     
                            break;                       
                    }
                }                 
                    
                x = other.xTP;
                y = other.yTP;
                
                puedeMoverse = true;  
                
                if (!other.visible) {
                    teletransporta = true;
                }
                
                alarm[9] = 1;
                
            }
            
            obj_flecha_abajo.alarm[0] = 2;
            obj_flecha_arriba.alarm[0] = 2;
            obj_flecha_izq.alarm[0] = 2;
            obj_flecha_der.alarm[0] = 2;
            
        } else {        
        
            y = other.y + 64;
			with (obj_pj) {
		        alinearPJ();
		    }
            
            alarm[9] = 1;
                 
            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
            idINFO.texto = "¡Nivel menor a " + string(other.nivelRequerido) + "!";
            idINFO.padre = obj_pj.id;                
            
        }
    
    }

}



/* */
/*  */
