/// @description  Elige

if (obj_control_seleccionarPJ.elegido != -1) {
    if (file_exists("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini") && file_exists("partida" + string(obj_control_seleccionarPJ.elegido) + "_BackUp.ini")) {
		file_delete("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini");
		file_copy("partida" + string(obj_control_seleccionarPJ.elegido) + "_BackUp.ini", "partida" + string(obj_control_seleccionarPJ.elegido) + ".ini");
		with (obj_control_seleccionarPJ) {
			cargarPJs(obj_control_seleccionarPJ.elegido);
		}
		instance_destroy();
    }
}

