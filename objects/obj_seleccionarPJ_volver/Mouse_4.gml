/// @description  Elije

if (obj_control_seleccionarPJ.modoTorneo && !dibujaWarningModoTorneo) {
    dibujaWarningModoTorneo = true;
    obj_seleccionarPJ_borrar.confirmado = false;
    alarm[0] = 120;
} else {

    dibujaWarningModoTorneo = false;
    room_goto(rm_menuPrincipal);
    
    obj_control_seleccionarPJ.modoTorneo = false;
    
    obj_control_notificacion_torneos.hayPJsAptos = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[0] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[1] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[2] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[3] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[4] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[5] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[6] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[7] = false;
    obj_control_notificacion_torneos.PJsAptosParaTorneo[8] = false;
    
    obj_control_seleccionarPJ.elegido = -1;
    
}


