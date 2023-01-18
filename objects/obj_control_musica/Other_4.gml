/// @description  Reproduzco

if (obj_opcion_musica.musicaActivada && room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {

    if (
    room == rm_4 || room == rm_5 || room == rm_6 || room == rm_7 || 
    room == rm_8 || room == rm_9 || room == rm_10 || room == rm_12 || 
    room == rm_17
    ) {
        nuevaMusica = snd_polo;
    } else if (
    room == rm_11 || room == rm_13 || room == rm_14 || room == rm_15 || 
    room == rm_16 || room == rm_18 || room == rm_19 || room == rm_20 || 
    room == rm_21 || room == rm_22 || room == rm_23 || room == rm_25
    ) {
        nuevaMusica = snd_bosque3;
    } else if (room = rm_24) {
        nuevaMusica = snd_pueblo1;
    } else if (room = rm_26 || room = rm_27) {
        nuevaMusica = snd_bosque2;
    } else if (room = rm_28) {
        nuevaMusica = snd_bosque4;
    } else if (room = rm_29) {
        nuevaMusica = snd_bosque7;
    } else if (room == rm_30 || room = rm_31 || room = rm_32 || room = rm_44) {
        nuevaMusica = snd_desierto;
    } else if (room = rm_33 || room = rm_34) {
        nuevaMusica = snd_bosque1;
    } else if (
    room == rm_35 || room == rm_36 || room == rm_37 || room == rm_38 || 
    room == rm_39 || room == rm_40 || room == rm_41 || room == rm_42 || 
    room == rm_43 || room == rm_46 || room == rm_47
    ) {
        nuevaMusica = snd_bosque10;
    } else if (room = rm_45) {
        nuevaMusica = snd_ciudad1;
    } else if (
    room == rm_56 || room == rm_80 || room == rm_48 || room == rm_49 || 
    room == rm_50 || room == rm_51 || room == rm_52 || room == rm_53 || 
    room == rm_54 || room == rm_55
    ) {
        nuevaMusica = snd_bosque5;
    } else if (
    room == rm_57 || room == rm_58 || room == rm_59 || room == rm_60 || 
    room == rm_61 || room == rm_62 || room == rm_63 || room == rm_64
    ) {
        nuevaMusica = snd_bosque9;
    } else if (
    room == rm_65 || room == rm_66 || room == rm_67 || room == rm_68 || 
    room == rm_69 || room == rm_70 || room == rm_71 || room == rm_72 ||
    room = rm_73
    ) {
        nuevaMusica = snd_bosque6;
    } else if (
    room == rm_74 || room == rm_75 || room == rm_76 || room == rm_77 || 
    room == rm_78 || room == rm_82
    ) {
        nuevaMusica = snd_bosque8;
    } else if (room = rm_79) {
        nuevaMusica = snd_pueblo2;
    } else if (room = rm_81 || room = rm_159) {
        nuevaMusica = snd_ciudad2;
    } else if (room = rm_83 || room = rm_84 || room = rm_85 || room = rm_86 || room = rm_87) {
        nuevaMusica = snd_minas;
    } else if (room = rm_88) {
        nuevaMusica = snd_dungeon2;
    } else if (room = rm_89 || room = rm_90) {
        nuevaMusica = snd_dungeon1;
    } else if (room = rm_91 || room = rm_92 || room = rm_93 || room = rm_158) {
        nuevaMusica = snd_dungeon3;
    } else {
        nuevaMusica = snd_oceano;
    }
    
    if (nuevaMusica != -1) {
        if (indxMusicaAnterior == -1 || indxMusicaAnterior != nuevaMusica) {
            audio_sound_gain(musicaAnterior, 0, 3000);
            alarm[1] = 180;      
        }
    }
    
}

