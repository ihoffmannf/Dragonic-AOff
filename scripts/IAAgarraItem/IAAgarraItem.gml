/// @description  IAAgarraItem(idIA)
/// @param idIA
function IAAgarraItem(argument0) {

	/// Agarrar items
    
	if (object_index == obj_oro) {

	    // Si es oro...
	    instance_destroy();
    
	} else if (object_index == obj_item) {

	    var existe = false;

	    for (var i = 0; i < 20; i++) {
    
	        if (argument0.vecItems[i] == indice) {
        
	            if (argument0.cantItems[i] + cantidad <= 10000) {
            
	                // Hay lugar en slot existente
                
	                existe = true;
	                argument0.cantItems[i] += cantidad;
	                instance_destroy();
                
	                break;
                
	            } else {
	                yaEncontroItem = false;
	                lukea = false;
	                alarm[5] = 1;
	            }
            
	        }
        
	    }
    
	    if (!existe) {
    
	        var agrego = false;
        
	        for (var i = 0; i < 20; i++) {
        
	            if (argument0.vecItems[i] == -1) {
            
	                // Hay lugar en slot nuevo
                
	                /*
                
	                En inventario:
                
	                indiceInv
	                tipoInv
	                cantInv
	                equipadoInv
	                generoInv
	                razaInv
                
	                datosItem:
                
	                tipoInv
	                generoInv
	                razaInv
                
	                */
            
	                agrego = true;                
                        
	                argument0.vecItems[i] = indice;
	                argument0.cantItems[i] = cantidad;
            
	                instance_destroy();
                
	                break;
                
	            }
            
	        }  
        
	        if (!agrego) {
	            yaEncontroItem = false;
	            lukea = false;
	            alarm[5] = 1;
	        }
        
	    }

	}



}
