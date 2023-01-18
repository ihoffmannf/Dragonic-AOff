/// @description  Elije

obj_seleccionarPJ_borrar.confirmado = false;

if (elegible || !obj_control_seleccionarPJ.modoTorneo) {
    obj_control_seleccionarPJ.elegido = 2;
	with (obj_restaurar_PJ) instance_destroy();
	if (obj_control_seleccionarPJ.datosPJ[2, 1] == "RESTAURAR_PERSONAJE")
		instance_create(x, y + 111, obj_restaurar_PJ);
} else {
    dibujarErrorElegible = true;
    alarm[0] = 120;
}

