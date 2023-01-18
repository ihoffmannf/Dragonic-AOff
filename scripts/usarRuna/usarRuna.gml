/// @description  usarRuna()
function usarRuna() {

	/// Teletransporta

	if (!obj_pj.teletransporta) {

	    // NPCs

	    // Spawneo NPCs que faltan
    
	    for (var j = 0; j < 3; j++) {
	        if (obj_pj.criaturasHijas[j, 1] != -1) { // Si la tengo domada (guardada o no)...
	            if (obj_pj.criaturasHijas[j, 3] == room) { // Si pertenece a esta room
                
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
                
	                instance_create(xNuevo, yNuevo, obj_pj.criaturasHijas[j, 1]);
                
	                obj_pj.criaturasHijas[j, 3] = -1;
                
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
    
	    for (var i = 0; i < totalItems; i++) {
	        actualizarItemsXRM(obj_items_mundo.ItemsRMActual[i]); // Le paso el ID del item para que lo guarde
	        obj_items_mundo.i++;
	    }  
    
	    // IA
    
	    with (obj_persona) {    
	        if (salud > 0) {
        
	            sigue = false;
    
	            obj_personas_mundo.direccionPJ = obj_pj.direccion;
	            obj_personas_mundo.roomAnterior = room;
            
	            if (obj_pj.invisible) {
	                if (random(10) > 7.5) {
	                    obj_personas_mundo.PJInvi = false;
	                } else {
	                    obj_personas_mundo.PJInvi = true;
	                }
	            } else {
	                obj_personas_mundo.PJInvi = false;
	            }
            
	            actualizarIAs();
            
	        }        
	    }
    
	    // Teletransporte
    
	    room_goto(obj_pj.roomRuna);
		obj_pj.navega = false;
    
	    obj_pj.criaturasHijas[0, 0] = -1;
	    obj_pj.criaturasHijas[1, 0] = -1;
	    obj_pj.criaturasHijas[2, 0] = -1;
    
	    obj_pj.criaturasInvocadas[0] = -1;
	    obj_pj.criaturasInvocadas[1] = -1;
	    obj_pj.criaturasInvocadas[2] = -1;
    
	    teletransporta = true;

	}





}
