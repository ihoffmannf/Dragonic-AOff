/// @description  Opciones

if (
(mouse_x >= __view_get( e__VW.XView, 0 ) + 229 && mouse_x <= __view_get( e__VW.XView, 0 ) + 357) &&
(mouse_y >= __view_get( e__VW.YView, 0 ) + 315 && mouse_y <= __view_get( e__VW.YView, 0 ) + 346)
) {

    // Guardar partida
    
    if (!IACerca && nombrePJ != "RESTAURAR_PERSONAJE") {
        if (guardarPartida(nombrePJ)) {
            dibuja = true;
            pudoGuardar = true;
            alarm[1] = 80;
            alarm[2] = 10;
        } else {
            dibuja = true;
            pudoGuardar = false;
            alarm[1] = 80;
        }
    } else {
        dibuja = true;
        pudoGuardar = false;
        alarm[1] = 80;
    }
    
} else if (
(mouse_x >= __view_get( e__VW.XView, 0 ) + 409 && mouse_x <= __view_get( e__VW.XView, 0 ) + 537) &&
(mouse_y >= __view_get( e__VW.YView, 0 ) + 315 && mouse_y <= __view_get( e__VW.YView, 0 ) + 346)
) {

    // Menú principal
    
    audio_stop_all();
    
    with (all) {
        if (
        object_index != obj_pausa && 
        object_index != obj_opciones && 
        object_index != obj_control_vista &&
        object_index != obj_control_opciones &&
        object_index != obj_control_devices &&
        object_index != obj_control_musica &&
        object_index != obj_sonido_mar &&
        object_index != obj_opcion_sonido &&
        object_index != obj_opcion_musica &&
        object_index != obj_control_notificacion_torneos
        ) {
            instance_deactivate_object(self);
        }
    }
    
    with (obj_borde_mapa) {
        instance_destroy();
    }
    
    with (obj_nubes) {
        instance_destroy();
    }       
        
    obj_control_musica.indxMusicaAnterior = -1;
	obj_opciones.lloviendo = false;
    
    room_goto(rm_menuPrincipal);
    
} else if (
(mouse_x >= __view_get( e__VW.XView, 0 ) + 326 && mouse_x <= __view_get( e__VW.XView, 0 ) + 503) &&
(mouse_y >= __view_get( e__VW.YView, 0 ) + 95 && mouse_y <= __view_get( e__VW.YView, 0 ) + 302)
) {

    // Mapa
    
    if (!roomDesconocida) {
        
        var xInicioMapa = __view_get( e__VW.XView, 0 ) + 326;
        var yInicioMapa = __view_get( e__VW.YView, 0 ) + 95;
        
        var coordX;
        var coordY;
        
        if (mouse_x >= xInicioMapa && mouse_x < xInicioMapa + 14.75) {
            coordX = 0;    
        } else if (mouse_x >= xInicioMapa + 14.75 && mouse_x < xInicioMapa + 14.75 * 2) {
            coordX = 1;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 2 && mouse_x < xInicioMapa + 14.75 * 3) {
            coordX = 2;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 3 && mouse_x < xInicioMapa + 14.75 * 4) {
            coordX = 3;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 4 && mouse_x < xInicioMapa + 14.75 * 5) {
            coordX = 4;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 5 && mouse_x < xInicioMapa + 14.75 * 6) {
            coordX = 5;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 6 && mouse_x < xInicioMapa + 14.75 * 7) {
            coordX = 6;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 7 && mouse_x < xInicioMapa + 14.75 * 8) {
            coordX = 7;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 8 && mouse_x < xInicioMapa + 14.75 * 9) {
            coordX = 8;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 9 && mouse_x < xInicioMapa + 14.75 * 10) {
            coordX = 9;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 10 && mouse_x < xInicioMapa + 14.75 * 11) {
            coordX = 10;    
        } else if (mouse_x >= xInicioMapa + 14.75 * 11) {
            coordX = 11;    
        }
        
        if (mouse_y >= yInicioMapa && mouse_y < yInicioMapa + 17.25) {
            coordY = 0;    
        } else if (mouse_y >= yInicioMapa + 17.25 && mouse_y < yInicioMapa + 17.25 * 2) {
            coordY = 1;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 2 && mouse_y < yInicioMapa + 17.25 * 3) {
            coordY = 2;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 3 && mouse_y < yInicioMapa + 17.25 * 4) {
            coordY = 3;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 4 && mouse_y < yInicioMapa + 17.25 * 5) {
            coordY = 4;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 5 && mouse_y < yInicioMapa + 17.25 * 6) {
            coordY = 5;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 6 && mouse_y < yInicioMapa + 17.25 * 7) {
            coordY = 6;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 7 && mouse_y < yInicioMapa + 17.25 * 8) {
            coordY = 7;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 8 && mouse_y < yInicioMapa + 17.25 * 9) {
            coordY = 8;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 9 && mouse_y < yInicioMapa + 17.25 * 10) {
            coordY = 9;    
        } else if (mouse_y >= yInicioMapa + 17.25 * 10 && mouse_y < yInicioMapa + 17.25 * 11) {
            coordY = 10;   
        } else if (mouse_y >= yInicioMapa + 17.25 * 11) {
            coordY = 11;    
        }
        
        with (obj_borde_mapa) {
            instance_destroy();
        }
        
        instance_create(__view_get( e__VW.XView, 0 ) + 326 + coordX * 14.75, __view_get( e__VW.YView, 0 ) + 95 + coordY * 17.25, obj_borde_mapa);
        
        nombreMapaPausa = obtenerNombreMapa(matRooms[coordY, coordX], coordY, coordX);
    
    }
    
} else if (
(mouse_x >= __view_get( e__VW.XView, 0 ) + 16 && mouse_x <= __view_get( e__VW.XView, 0 ) + 69) &&
(mouse_y >= __view_get( e__VW.YView, 0 ) + 6 && mouse_y <= __view_get( e__VW.YView, 0 ) + 29)
) {

    // Continúa
    
    if (obj_opcion_musica.musicaActivada)
        audio_resume_all();
    
    with (obj_borde_mapa) {
        instance_destroy();
    }
    
    __view_set( e__VW.WView, 0, wViewInicio );
    __view_set( e__VW.HView, 0, hViewInicio );
    __view_set( e__VW.Visible, 1, true );
    
    instance_activate_all();
    
	if (obj_opciones.lloviendo) {
		if (obj_opcion_sonido.sonidoActivado)
			if (obj_opciones.sonidoLluvia != -1 && esMapaDescubierto())
				audio_resume_sound(obj_opciones.sonidoLluvia);
	} else {
		with (obj_lluvia) {
			instance_destroy()
		}
		with (obj_salpicadura) {
			instance_destroy()
		}
	}
	
    with (obj_pj) {
        alinearPJ();
    }
    
    if (obj_opciones.opcionNubes) {
        instance_create(0, 0, obj_nubes);    
    }
    
    instance_destroy();

}


