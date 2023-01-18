/// @description  Borra

if (obj_control_seleccionarPJ.elegido != -1) {
    if (file_exists("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini")) {
        if (!confirmado) {
            confirmado = true;
            obj_seleccionarPJ_volver.dibujaWarningModoTorneo = false;
            alarm[0] = 120;
        }
    }
}

