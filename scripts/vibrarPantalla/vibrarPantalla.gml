/// @description  vibrarPantalla()
function vibrarPantalla() {
    
	if (obj_opciones.opcionVibracion) {    
	    instance_create(0, 0, obj_vibracion);
	}

}
