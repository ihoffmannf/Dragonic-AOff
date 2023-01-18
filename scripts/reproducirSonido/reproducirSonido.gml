/// @description  reproducirSonido(sonido, loop, forzar)
/// @param sonido
/// @param  loop
/// @param  forzar
function reproducirSonido(argument0, argument1, argument2) {

	var indiceSnd = -1; 
        
	if ((obj_opcion_sonido.sonidoActivado || argument2) && instance_number(obj_pausa) == 0) {

	    var valido = true;
    
	    if (
	    object_index != obj_inventario && 
	    object_index != obj_pj && 
	    object_index != obj_control_musica &&
	    object_index != obj_sonido_mar &&
	    object_index != obj_flecha_arriba &&
	    object_index != obj_flecha_abajo &&
	    object_index != obj_flecha_izq &&
	    object_index != obj_flecha_der &&
	    argument0 != snd_tirarDados &&
	    argument0 != snd_subirNivel &&
	    argument0 != snd_resucitar
	    ) {
    
	        if (x < __view_get( e__VW.XView, 0 ) - __view_get( e__VW.WView, 0 ) * 0.25 || x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.25) {
	            valido = false;
	        }
        
	        if (y < __view_get( e__VW.YView, 0 ) - __view_get( e__VW.HView, 0 ) * 0.25 || y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.25) {
	            valido = false;
	        }
        
	    }    
    
	    if (valido) {
	        indiceSnd = audio_play_sound(argument0, 0, argument1);
	        if (argument0 == snd_paso || argument0 == snd_barca) {
	            audio_sound_gain(indiceSnd, 0.5, 0);
	        }
	    }    
    
	}

	return indiceSnd;



}
