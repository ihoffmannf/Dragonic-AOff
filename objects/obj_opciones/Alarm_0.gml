/// @description  Cambio el alpha del agua

if (instance_number(obj_pausa) == 0 && room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {

    if (opcionAnimacionAgua) {
    
        __background_set( e__BG.Index, 1, bck_agua_2 );
        obj_control_animacion_agua.alarm[0] = 300;
    
        if (opcionPeces) {
            repeat(5) {
                instance_create(__view_get( e__VW.XView, 0 ) + random(__view_get( e__VW.WView, 0 )), __view_get( e__VW.YView, 0 ) + random(__view_get( e__VW.HView, 0 )), obj_pez);
            }
        }
        
    }
    
    if (opcionParticulas) {
        repeat(25) {
            instance_create(__view_get( e__VW.XView, 0 ) + random(__view_get( e__VW.WView, 0 )), __view_get( e__VW.YView, 0 ) + random(__view_get( e__VW.HView, 0 )), obj_particula);
        }
		if (obj_pj.direccion == 1)
			crearLluvia(cantidadGotasDeLluvia, 0, 140);
		else if (obj_pj.direccion == 2 || obj_pj.direccion == 3)
			crearLluvia(cantidadGotasDeLluvia, 300, 140);
		else
			crearLluvia(cantidadGotasDeLluvia, 0, 0);
			
    }
    
    if (opcionNubes) {
        instance_create(0, 0, obj_nubes);
    }

}

