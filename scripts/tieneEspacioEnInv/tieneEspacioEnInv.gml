/// @description  tieneEspacioEnInv(indiceItem, cantidad)
/// @param indiceItem
/// @param cantidad
function tieneEspacioEnInv(argument0, argument1) {

	var indiceItem = argument0;
	var cantidadItem = argument1;
    var existe = false;
                            
    for (var i = 0; i < obj_inventario.maximoInv; i++) {
        if (obj_inventario.indiceInv[i] == indiceItem) {
            if (obj_inventario.cantInv[i] + cantidadItem <= 10000) {            
                // Hay lugar en slot existente                    
                return true;
                break;
                                            
            }
        }
    }
                                
    if (!existe) {
        for (var i = 0; i < obj_inventario.maximoInv; i++) {
            if (obj_inventario.indiceInv[i] == -1) {
                // Hay lugar en slot nuevo                
                return true;                
                break;
            }
        }  
    }
	
	return false;	

}
