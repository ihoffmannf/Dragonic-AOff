/// @description  Actualiza

if (instance_number(obj_pausa) == 0 && room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {

    if (opcionAnimacionAgua) {
    
        if (opcionPeces) {
            with (obj_pez) {
                instance_destroy();
            }
        }
    
        alarm[0] = 1;
        
    }
    
    if (opcionParticulas) {
        with (obj_particula) {
            instance_destroy();
        }
		if (sonidoLluvia != -1) { 
			if (esMapaDescubierto())
				audio_resume_sound(sonidoLluvia);
			else
				audio_pause_sound(sonidoLluvia);
		}
		cantidadGotasDeLluvia = instance_number(obj_lluvia);
        with (obj_lluvia) {
            instance_destroy();
        }
        with (obj_salpicadura) {
            instance_destroy();
        }
        alarm[0] = 1;
    }
    
    if (opcionNubes) {
        with (obj_nubes) {
            instance_destroy();
        }
        alarm[0] = 1;
    }
    
    if (opcionOptimizarCiudades && obj_mapas_mundo.mapas[room]) {
        optimizarCiudad();
    }
    
}

