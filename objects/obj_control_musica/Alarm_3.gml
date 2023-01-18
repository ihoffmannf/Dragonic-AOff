/// @description  Sonidos pájaros

if (
obj_opcion_musica.musicaActivada && 
instance_number(obj_pausa) == 0 && 
room != rm_inicio && 
room != rm_EBGames && 
room != rm_crearPJ && 
room != rm_nombrePJ && 
room != rm_creditos && 
room != rm_menuPrincipal && 
room != rm_opciones && 
room != rm_seleccionarPJ &&
room != rm_83 && 
room != rm_84 && 
room != rm_85 && 
room != rm_86 && 
room != rm_87 && 
room != rm_88 && 
room != rm_89 && 
room != rm_90 && 
room != rm_91 && 
room != rm_92 && 
room != rm_93 && 
room != rm_158 && 
room != rm_159
) {

    var rand = choose(1, 2, 3, 4, 5);
    var snd;
    
    switch (rand) {
        case 1:
            snd = reproducirSonido(snd_pajaro_1, false, true);
            break;
        case 2:
            snd = reproducirSonido(snd_pajaro_2, false, true);
            break;
        case 3:
            snd = reproducirSonido(snd_pajaro_3, false, true);
            break;
        case 4:
            snd = reproducirSonido(snd_pajaro_4, false, true);
            break;
        case 5:
            snd = reproducirSonido(snd_pajaro_5, false, true);
            break;
    }
    
    audio_sound_gain(snd, 0.5, 0);

}

alarm[3] = random_range(120, 300);

