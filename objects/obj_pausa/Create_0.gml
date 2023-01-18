/// @description  Estado inicial

audio_pause_all();

wViewInicio = __view_get( e__VW.WView, 0 );
hViewInicio = __view_get( e__VW.HView, 0 );

IACerca = false;

with (obj_persona) {
    if (agitando) {
        other.IACerca = true;
    }
}

if (room != rm_83 && room != rm_84 && room != rm_85 && room != rm_86 && room != rm_87 && room != rm_88 && room != rm_89 && room != rm_90 && room != rm_91 && room != rm_92 && room != rm_93 && room != rm_158 && room != rm_159) {
    roomDesconocida = false;
} else {
    roomDesconocida = true;
}

nombreMapaPausa = "";
nombrePJ = obj_pj.nombre;
skills = obj_pj.skills;
expLvl = obj_pj.expLvl;
nivel = obj_pj.nivel;
experiencia = obj_pj.experiencia;
atributos = obj_pj.atributos;
clase = obj_pj.clase;
criminalesMatados = obj_pj.criminalesMatados;
ciudadanosMatados = obj_pj.ciudadanosMatados;

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

with (obj_nubes) {
    instance_destroy();
}

pudoGuardar = true;
dibuja = false;

// Matriz con rooms (fila, columna)

if (!roomDesconocida) {
    
    matRooms[0, 0] = rm_94;
    matRooms[0, 1] = rm_95;
    matRooms[0, 2] = rm_96;
    matRooms[0, 3] = rm_97;
    matRooms[0, 4] = rm_98;
    matRooms[0, 5] = rm_99;
    matRooms[0, 6] = rm_100;
    matRooms[0, 7] = rm_17;
    matRooms[0, 8] = rm_12;
    matRooms[0, 9] = rm_9;
    matRooms[0, 10] = rm_8;
    matRooms[0, 11] = rm_7;
    
    matRooms[1, 0] = rm_101;
    matRooms[1, 1] = rm_102;
    matRooms[1, 2] = rm_103;
    matRooms[1, 3] = rm_104;
    matRooms[1, 4] = rm_105;
    matRooms[1, 5] = rm_20;
    matRooms[1, 6] = rm_19;
    matRooms[1, 7] = rm_18;
    matRooms[1, 8] = rm_15;
    matRooms[1, 9] = rm_10;
    matRooms[1, 10] = rm_5;
    matRooms[1, 11] = rm_6;
    
    matRooms[2, 0] = rm_106;
    matRooms[2, 1] = rm_107;
    matRooms[2, 2] = rm_108;
    matRooms[2, 3] = rm_27;
    matRooms[2, 4] = rm_26;
    matRooms[2, 5] = rm_21;
    matRooms[2, 6] = rm_22;
    matRooms[2, 7] = rm_24;
    matRooms[2, 8] = rm_16;
    matRooms[2, 9] = rm_11;
    matRooms[2, 10] = rm_4;
    matRooms[2, 11] = rm_109;
    
    matRooms[3, 0] = rm_110;
    matRooms[3, 1] = rm_111;
    matRooms[3, 2] = rm_112;
    matRooms[3, 3] = rm_113;
    matRooms[3, 4] = rm_114;
    matRooms[3, 5] = rm_3;
    matRooms[3, 6] = rm_23;
    matRooms[3, 7] = rm_25;
    matRooms[3, 8] = rm_14;
    matRooms[3, 9] = rm_13;
    matRooms[3, 10] = rm_115;
    matRooms[3, 11] = rm_116;
    
    matRooms[4, 0] = rm_117;
    matRooms[4, 1] = rm_76;
    matRooms[4, 2] = rm_118;
    matRooms[4, 3] = rm_119;
    matRooms[4, 4] = rm_120;
    matRooms[4, 5] = rm_28;
    matRooms[4, 6] = rm_121;
    matRooms[4, 7] = rm_122;
    matRooms[4, 8] = rm_123;
    matRooms[4, 9] = rm_35;
    matRooms[4, 10] = rm_36;
    matRooms[4, 11] = rm_39;
    
    matRooms[5, 0] = rm_74;
    matRooms[5, 1] = rm_75;
    matRooms[5, 2] = rm_77;
    matRooms[5, 3] = rm_78;
    matRooms[5, 4] = rm_124;
    matRooms[5, 5] = rm_30;
    matRooms[5, 6] = rm_44;
    matRooms[5, 7] = rm_125;
    matRooms[5, 8] = rm_126;
    matRooms[5, 9] = rm_38;
    matRooms[5, 10] = rm_37;
    matRooms[5, 11] = rm_40;
    
    matRooms[6, 0] = rm_72;
    matRooms[6, 1] = rm_73;
    matRooms[6, 2] = rm_81;
    matRooms[6, 3] = rm_82;
    matRooms[6, 4] = rm_127;
    matRooms[6, 5] = rm_31;
    matRooms[6, 6] = rm_32;
    matRooms[6, 7] = rm_128;
    matRooms[6, 8] = rm_129;
    matRooms[6, 9] = rm_47;
    matRooms[6, 10] = rm_45;
    matRooms[6, 11] = rm_41;
    
    matRooms[7, 0] = rm_71;
    matRooms[7, 1] = rm_70;
    matRooms[7, 2] = rm_69;
    matRooms[7, 3] = rm_68;
    matRooms[7, 4] = rm_130;
    matRooms[7, 5] = rm_131;
    matRooms[7, 6] = rm_132;
    matRooms[7, 7] = rm_133;
    matRooms[7, 8] = rm_29;
    matRooms[7, 9] = rm_46;
    matRooms[7, 10] = rm_43;
    matRooms[7, 11] = rm_42;
    
    matRooms[8, 0] = rm_67;
    matRooms[8, 1] = rm_66;
    matRooms[8, 2] = rm_64;
    matRooms[8, 3] = rm_61;
    matRooms[8, 4] = rm_134;
    matRooms[8, 5] = rm_56;
    matRooms[8, 6] = rm_80;
    matRooms[8, 7] = rm_48;
    matRooms[8, 8] = rm_135;
    matRooms[8, 9] = rm_33;
    matRooms[8, 10] = rm_34;
    matRooms[8, 11] = rm_136;
    
    matRooms[9, 0] = rm_137;
    matRooms[9, 1] = rm_65;
    matRooms[9, 2] = rm_63;
    matRooms[9, 3] = rm_60;
    matRooms[9, 4] = rm_58;
    matRooms[9, 5] = rm_55;
    matRooms[9, 6] = rm_79;
    matRooms[9, 7] = rm_49;
    matRooms[9, 8] = rm_138;
    matRooms[9, 9] = rm_139;
    matRooms[9, 10] = rm_140;
    matRooms[9, 11] = rm_141;
    
    matRooms[10, 0] = rm_142;
    matRooms[10, 1] = rm_143;
    matRooms[10, 2] = rm_62;
    matRooms[10, 3] = rm_59;
    matRooms[10, 4] = rm_57;
    matRooms[10, 5] = rm_54;
    matRooms[10, 6] = rm_53;
    matRooms[10, 7] = rm_50;
    matRooms[10, 8] = rm_144;
    matRooms[10, 9] = rm_145;
    matRooms[10, 10] = rm_146;
    matRooms[10, 11] = rm_147;
    
    matRooms[11, 0] = rm_148;
    matRooms[11, 1] = rm_149;
    matRooms[11, 2] = rm_150;
    matRooms[11, 3] = rm_151;
    matRooms[11, 4] = rm_152;
    matRooms[11, 5] = rm_153;
    matRooms[11, 6] = rm_52;
    matRooms[11, 7] = rm_51;
    matRooms[11, 8] = rm_154;
    matRooms[11, 9] = rm_155;
    matRooms[11, 10] = rm_156;
    matRooms[11, 11] = rm_157;
    
    i = 0;
    j = 0;
    
    for (j = 0; j < 12; j++) {
        if (matRooms[0, j] == room) {
            i = 0;
            break;
        } else if (matRooms[1, j] == room) {
            i = 1;
            break;
        } else if (matRooms[2, j] == room) {
            i = 2;
            break;
        } else if (matRooms[3, j] == room) {
            i = 3;
            break;
        } else if (matRooms[4, j] == room) {
            i = 4;
            break;
        } else if (matRooms[5, j] == room) {
            i = 5;
            break;
        } else if (matRooms[6, j] == room) {
            i = 6;
            break;
        } else if (matRooms[7, j] == room) {
            i = 7;
            break;
        } else if (matRooms[8, j] == room) {
            i = 8;
            break;
        } else if (matRooms[9, j] == room) {
            i = 9;
            break;
        } else if (matRooms[10, j] == room) {
            i = 10;
            break;
        } else if (matRooms[11, j] == room) {
            i = 11;
            break;
        }
    }
    
    instance_create(__view_get( e__VW.XView, 0 ) + 326 + j * 14.75, __view_get( e__VW.YView, 0 ) + 95 + i * 17.25, obj_borde_mapa);
    nombreMapaPausa = obtenerNombreMapa(room, i, j);

} else {
    nombreMapaPausa = "Ubicación desconocida";
}













