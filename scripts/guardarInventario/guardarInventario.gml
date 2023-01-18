/// @description  guardarInventario() 
function guardarInventario() {
    
	for (var i = 0; i < 20; i++) {
	    write("obj_inventario", "indiceInv[" + string(i) + "]", obj_inventario.indiceInv[i]);
	    write("obj_inventario", "cantInv[" + string(i) + "]", obj_inventario.cantInv[i]);
	    write("obj_inventario", "equipadoInv[" + string(i) + "]", obj_inventario.equipadoInv[i]);
	}



}
