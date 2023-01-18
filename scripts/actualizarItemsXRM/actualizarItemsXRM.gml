/// @description  actualizarItemsXRM(ID)
/// @param ID
function actualizarItemsXRM(argument0) {

	if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {

	    with (argument0) {
                    
	        // Lo guardo y lo destruyo
        
	        var datosItem;
        
	        datosItem[0] = -1;
	        datosItem[1] = -1;
	        datosItem[2] = -1;
	        datosItem[3] = "";
	        datosItem[4] = -1;
	        datosItem[5] = -1;
                
	        datosItem[0] = x;
	        datosItem[1] = y;
        
	        if (object_index == obj_item) {
	            datosItem[2] = indice;
	            datosItem[3] = tipo;
	            datosItem[4] = cantidad;
	        } else if (object_index == obj_oro) {
	            datosItem[5] = valor;
	        }
        
	        obj_items_mundo.ItemsXRM[room, obj_items_mundo.i] = datosItem;
        
	        instance_destroy();
                    
	    }

	}



}
