/// @description  Control lluvia

if (lloviendo) {
	lloviendo = false;
	if (sonidoLluvia != -1)
		audio_sound_gain(sonidoLluvia, 0, 17000);
	alarm[3] = 1;
	alarm[2] = floor(60 * 60 * random_range(frecuenciaLluviaMin, frecuenciaLluviaMax))
} else if (probabilidadLluvia > random(10)) {
	if (noEstaEnPausa() && esMapaJugable() && esMapaDescubierto()) {
		lloviendo = true;
		crearLluvia(75, 0, 0); 
		with (obj_pj) {
			obj_opciones.sonidoLluvia = reproducirSonido(snd_lluvia, true, false);
			if (obj_opciones.sonidoLluvia != -1) {
				audio_sound_gain(obj_opciones.sonidoLluvia, 0, 0);
				audio_sound_gain(obj_opciones.sonidoLluvia, 1, 4000);
			}
		}
	}
	alarm[2] = floor((60 * 60 * random_range(frecuenciaLluviaMin, frecuenciaLluviaMax)) / 2)
} else {
	alarm[2] = floor(60 * 60 * random_range(frecuenciaLluviaMin, frecuenciaLluviaMax))
}
	

