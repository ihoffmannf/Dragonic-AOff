/// @description  Elige

if (obj_control_seleccionarPJ.elegido != -1) {
    if (file_exists("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini")) {
        
        if (obj_control_seleccionarPJ.modoTorneo) {
        
            dec("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini");
            ini_open("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini");
            
            // DEBUGGING (Mover PJ a la room de torneos)
            write("room", "room", rm_79);
            write("obj_pj", "x", 1296);
            write("obj_pj", "y", 1808);
            
            ini_close();
            enc("partida" + string(obj_control_seleccionarPJ.elegido) + ".ini");
                
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
            
        }
        
        cargarPartida(obj_control_seleccionarPJ.elegido);
        
    }
}

