/// @description  Reproduzco

audio_stop_all();
indxMusicaAnterior = snd_inicio;
musicaAnterior = audio_play_sound(indxMusicaAnterior, 0, false);
audio_sound_gain(musicaAnterior, 0.5, 0);

