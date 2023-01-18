/// @description  actualizarNPCsXRM(ID)
/// @param ID
function actualizarNPCsXRM(argument0) {

	if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {
    
	    with (argument0) {
                    
	        // Lo guardo y lo destruyo
        
	        var datosNPC;
        
	        datosNPC[0] = object_index;
	        datosNPC[1] = salud;
	        datosNPC[2] = x;
	        datosNPC[3] = y;
	        datosNPC[4] = inmovilizado;
	        datosNPC[5] = paralizado;
	        datosNPC[6] = direccion;
	        datosNPC[7] = alarm[4];
        
	        if (moviendose || puedeMoverse) { // Si se está moviendo...
        
	            switch (direccion) { // Controlo la dirección para saber si sumo/resto a la x/y
	                case 0: // Está avanzando hacia abajo  
	                    while (y % 16 != 0 || y % 32 == 0) {
	                        y++;
	                    }
	                    break;
	                case 1: // Está avanzando hacia arriba  
	                    while (y % 16 != 0 || y % 32 == 0) {
	                        y--;
	                    }
	                    break;
	                case 2: // Está avanzando hacia la izquierda  
	                    while (x % 16 != 0 || x % 32 == 0) {
	                        x--;
	                    }
	                    break;
	                case 3: // Está avanzando hacia la izquierda  
	                    while (x % 16 != 0 || x % 32 == 0) {
	                        x++;
	                    }
	                    break;
	            }
        
	            datosNPC[2] = x;
	            datosNPC[3] = y;
            
	        }
        
	        obj_npcs_mundo.NPCsXRM[room, obj_npcs_mundo.i] = datosNPC;
        
	        instance_destroy();
                    
	    }

	}



}
