/// @description  IAAgarraIndiceItemForzado(indiceItem)
/// @param indiceItem
function IAAgarraIndiceItemForzado(argument0){

	var existe = false;

	    for (var i = 0; i < 20; i++) {
    
	        if (vecItems[i] == argument0) {
        
	            if (cantItems[i] + 1 <= 10000) {
            
	                // Hay lugar en slot existente
                
	                existe = true;
	                cantItems[i] ++;
                
	                break;
                
	            }
            
	        }
        
	    }
    
	    if (!existe) {
    
	        var agrego = false;
        
	        for (var i = 0; i < 20; i++) {
        
	            if (vecItems[i] == -1) {
            
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
                        
	                vecItems[i] = argument0;
	                cantItems[i] = 1;
                
	                break;
                
	            }
            
	        }  
        
	        if (!agrego) {
	            vecItems[19] = argument0;
	            cantItems[19] = 1;
	        }
        
	    }

}