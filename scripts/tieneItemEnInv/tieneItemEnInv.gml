/// @description  tieneItemEnInv(indiceItem, cantidad)
/// @param indiceItem
/// @param cantidad
function tieneItemEnInv(argument0, argument1) { // La función asume que todos los items están en un mismo slot

	var indiceItem = argument0;
	var cantidadItem = argument1;
                            
    for (var i = 0; i < obj_inventario.maximoInv; i++) {
        if (obj_inventario.indiceInv[i] == indiceItem) {
            if (obj_inventario.cantInv[i] >= cantidadItem) {            
                // Tiene suficiente cantidad                   
                return true;
                break;
                                            
            }
        }
    }
	
	return false;	

}
