/// @description  guardarBanco() 
function guardarBanco() {
    
	for (var i = 0; i < 20; i++) {
	    write("obj_banco", "indiceNpc[" + string(i) + "]", obj_banco.indiceNpc[i]);
	    write("obj_banco", "cantNpc[" + string(i) + "]", obj_banco.cantNpc[i]);
	    writeS("obj_banco", "nombreNpc[" + string(i) + "]", obj_banco.nombreNpc[i]);
	}



}
