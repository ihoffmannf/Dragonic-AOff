/// @description  Paro la música y reproduzco la nueva

if (musicaAnterior != -1) {
    audio_stop_sound(musicaAnterior);
}

indxMusicaAnterior = nuevaMusica;

if (obj_opcion_musica.musicaActivada && instance_number(obj_pausa) == 0 && room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {
    musicaAnterior = audio_play_sound(indxMusicaAnterior, 0, true);
    audio_sound_gain(musicaAnterior, 0.5, 0);
}


