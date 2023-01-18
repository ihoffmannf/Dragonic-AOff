/// @description  setearIntervaloCreacionIA(room)
/// @param room
function setearIntervaloCreacionIA(argument0) {

	var intervalo;

	if (argument0 != rm_83 && argument0 != rm_84 && argument0 != rm_85 && argument0 != rm_86 && argument0 != rm_87 && argument0 != rm_88 && argument0 != rm_89 && argument0 != rm_90 && argument0 != rm_91 && argument0 != rm_92 && argument0 != rm_93 && argument0 != rm_158 && argument0 != rm_159) {

	    // Matriz con indices de room
        
	    matRoomsMod[0, 0] = 0.85;
	    matRoomsMod[0, 1] = 0.85;
	    matRoomsMod[0, 2] = 0.85;
	    matRoomsMod[0, 3] = 0.85;
	    matRoomsMod[0, 4] = 0.85;
	    matRoomsMod[0, 5] = 0.85;
	    matRoomsMod[0, 6] = 0.85;
	    matRoomsMod[0, 7] = 1.65;
	    matRoomsMod[0, 8] = 1.65;
	    matRoomsMod[0, 9] = 1.65;
	    matRoomsMod[0, 10] = 1.65;
	    matRoomsMod[0, 11] = 1.65;
    
	    matRoomsMod[1, 0] = 0.85;
	    matRoomsMod[1, 1] = 0.85;
	    matRoomsMod[1, 2] = 0.85;
	    matRoomsMod[1, 3] = 0.85;
	    matRoomsMod[1, 4] = 0.85;
	    matRoomsMod[1, 5] = 1.15;
	    matRoomsMod[1, 6] = 1.15;
	    matRoomsMod[1, 7] = 1;
	    matRoomsMod[1, 8] = 1;
	    matRoomsMod[1, 9] = 1.65;
	    matRoomsMod[1, 10] = 1.65;
	    matRoomsMod[1, 11] = 1.65;
    
	    matRoomsMod[2, 0] = 0.85;
	    matRoomsMod[2, 1] = 0.85;
	    matRoomsMod[2, 2] = 0.85;
	    matRoomsMod[2, 3] = 1;
	    matRoomsMod[2, 4] = 1;
	    matRoomsMod[2, 5] = 1;
	    matRoomsMod[2, 6] = 1;
	    matRoomsMod[2, 7] = 1;
	    matRoomsMod[2, 8] = 1;
	    matRoomsMod[2, 9] = 1;
	    matRoomsMod[2, 10] = 1.65;
	    matRoomsMod[2, 11] = 0.85;
    
	    matRoomsMod[3, 0] = 0.85;
	    matRoomsMod[3, 1] = 0.85;
	    matRoomsMod[3, 2] = 0.85;
	    matRoomsMod[3, 3] = 0.85;
	    matRoomsMod[3, 4] = 0.85;
	    matRoomsMod[3, 5] = 0.85;
	    matRoomsMod[3, 6] = 1;
	    matRoomsMod[3, 7] = 1;
	    matRoomsMod[3, 8] = 1;
	    matRoomsMod[3, 9] = 1;
	    matRoomsMod[3, 10] = 0.85;
	    matRoomsMod[3, 11] = 0.85;
    
	    matRoomsMod[4, 0] = 0.85;
	    matRoomsMod[4, 1] = 1;
	    matRoomsMod[4, 2] = 0.85;
	    matRoomsMod[4, 3] = 0.85;
	    matRoomsMod[4, 4] = 0.85;
	    matRoomsMod[4, 5] = 1.45;
	    matRoomsMod[4, 6] = 0.85;
	    matRoomsMod[4, 7] = 0.85;
	    matRoomsMod[4, 8] = 0.85;
	    matRoomsMod[4, 9] = 1.15;
	    matRoomsMod[4, 10] = 1.15;
	    matRoomsMod[4, 11] = 1;
    
	    matRoomsMod[5, 0] = 1;
	    matRoomsMod[5, 1] = 1;
	    matRoomsMod[5, 2] = 1;
	    matRoomsMod[5, 3] = 1;
	    matRoomsMod[5, 4] = 0.85;
	    matRoomsMod[5, 5] = 1.2;
	    matRoomsMod[5, 6] = 1.15;
	    matRoomsMod[5, 7] = 0.85;
	    matRoomsMod[5, 8] = 0.85;
	    matRoomsMod[5, 9] = 1;
	    matRoomsMod[5, 10] = 1;
	    matRoomsMod[5, 11] = 1;
    
	    matRoomsMod[6, 0] = 1;
	    matRoomsMod[6, 1] = 1;
	    matRoomsMod[6, 2] = 1;
	    matRoomsMod[6, 3] = 1;
	    matRoomsMod[6, 4] = 0.85;
	    matRoomsMod[6, 5] = 1.2;
	    matRoomsMod[6, 6] = 1.15;
	    matRoomsMod[6, 7] = 0.85;
	    matRoomsMod[6, 8] = 0.85;
	    matRoomsMod[6, 9] = 1;
	    matRoomsMod[6, 10] = 1;
	    matRoomsMod[6, 11] = 1;
    
	    matRoomsMod[7, 0] = 1;
	    matRoomsMod[7, 1] = 1;
	    matRoomsMod[7, 2] = 1;
	    matRoomsMod[7, 3] = 1;
	    matRoomsMod[7, 4] = 0.85;
	    matRoomsMod[7, 5] = 0.85;
	    matRoomsMod[7, 6] = 0.85;
	    matRoomsMod[7, 7] = 0.85;
	    matRoomsMod[7, 8] = 1.5;
	    matRoomsMod[7, 9] = 1;
	    matRoomsMod[7, 10] = 1;
	    matRoomsMod[7, 11] = 1;
    
	    matRoomsMod[8, 0] = 1.3;
	    matRoomsMod[8, 1] = 1;
	    matRoomsMod[8, 2] = 1;
	    matRoomsMod[8, 3] = 1;
	    matRoomsMod[8, 4] = 0.85;
	    matRoomsMod[8, 5] = 1;
	    matRoomsMod[8, 6] = 1;
	    matRoomsMod[8, 7] = 1;
	    matRoomsMod[8, 8] = 0.85;
	    matRoomsMod[8, 9] = 1.45;
	    matRoomsMod[8, 10] = 1.45;
	    matRoomsMod[8, 11] = 0.85;
    
	    matRoomsMod[9, 0] = 0.85;
	    matRoomsMod[9, 1] = 1;
	    matRoomsMod[9, 2] = 1.15;
	    matRoomsMod[9, 3] = 1.15;
	    matRoomsMod[9, 4] = 1;
	    matRoomsMod[9, 5] = 1;
	    matRoomsMod[9, 6] = 1;
	    matRoomsMod[9, 7] = 1;
	    matRoomsMod[9, 8] = 0.85;
	    matRoomsMod[9, 9] = 0.85;
	    matRoomsMod[9, 10] = 0.85;
	    matRoomsMod[9, 11] = 0.85;
    
	    matRoomsMod[10, 0] = 0.85;
	    matRoomsMod[10, 1] = 0.85;
	    matRoomsMod[10, 2] = 1;
	    matRoomsMod[10, 3] = 1;
	    matRoomsMod[10, 4] = 1;
	    matRoomsMod[10, 5] = 1;
	    matRoomsMod[10, 6] = 1;
	    matRoomsMod[10, 7] = 1;
	    matRoomsMod[10, 8] = 0.85;
	    matRoomsMod[10, 9] = 0.85;
	    matRoomsMod[10, 10] = 0.85;
	    matRoomsMod[10, 11] = 0.85;
    
	    matRoomsMod[11, 0] = 0.85;
	    matRoomsMod[11, 1] = 0.85;
	    matRoomsMod[11, 2] = 0.85;
	    matRoomsMod[11, 3] = 0.85;
	    matRoomsMod[11, 4] = 0.85;
	    matRoomsMod[11, 5] = 0.85;
	    matRoomsMod[11, 6] = 1;
	    matRoomsMod[11, 7] = 1;
	    matRoomsMod[11, 8] = 0.85;
	    matRoomsMod[11, 9] = 0.85;
	    matRoomsMod[11, 10] = 0.85;
	    matRoomsMod[11, 11] = 0.85;
    
	    // Matriz con indices de room
    
	    matRoomsIndice[0, 0] = rm_94;
	    matRoomsIndice[0, 1] = rm_95;
	    matRoomsIndice[0, 2] = rm_96;
	    matRoomsIndice[0, 3] = rm_97;
	    matRoomsIndice[0, 4] = rm_98;
	    matRoomsIndice[0, 5] = rm_99;
	    matRoomsIndice[0, 6] = rm_100;
	    matRoomsIndice[0, 7] = rm_17;
	    matRoomsIndice[0, 8] = rm_12;
	    matRoomsIndice[0, 9] = rm_9;
	    matRoomsIndice[0, 10] = rm_8;
	    matRoomsIndice[0, 11] = rm_7;
    
	    matRoomsIndice[1, 0] = rm_101;
	    matRoomsIndice[1, 1] = rm_102;
	    matRoomsIndice[1, 2] = rm_103;
	    matRoomsIndice[1, 3] = rm_104;
	    matRoomsIndice[1, 4] = rm_105;
	    matRoomsIndice[1, 5] = rm_20;
	    matRoomsIndice[1, 6] = rm_19;
	    matRoomsIndice[1, 7] = rm_18;
	    matRoomsIndice[1, 8] = rm_15;
	    matRoomsIndice[1, 9] = rm_10;
	    matRoomsIndice[1, 10] = rm_5;
	    matRoomsIndice[1, 11] = rm_6;
    
	    matRoomsIndice[2, 0] = rm_106;
	    matRoomsIndice[2, 1] = rm_107;
	    matRoomsIndice[2, 2] = rm_108;
	    matRoomsIndice[2, 3] = rm_27;
	    matRoomsIndice[2, 4] = rm_26;
	    matRoomsIndice[2, 5] = rm_21;
	    matRoomsIndice[2, 6] = rm_22;
	    matRoomsIndice[2, 7] = rm_24;
	    matRoomsIndice[2, 8] = rm_16;
	    matRoomsIndice[2, 9] = rm_11;
	    matRoomsIndice[2, 10] = rm_4;
	    matRoomsIndice[2, 11] = rm_109;
    
	    matRoomsIndice[3, 0] = rm_110;
	    matRoomsIndice[3, 1] = rm_111;
	    matRoomsIndice[3, 2] = rm_112;
	    matRoomsIndice[3, 3] = rm_113;
	    matRoomsIndice[3, 4] = rm_114;
	    matRoomsIndice[3, 5] = rm_3;
	    matRoomsIndice[3, 6] = rm_23;
	    matRoomsIndice[3, 7] = rm_25;
	    matRoomsIndice[3, 8] = rm_14;
	    matRoomsIndice[3, 9] = rm_13;
	    matRoomsIndice[3, 10] = rm_115;
	    matRoomsIndice[3, 11] = rm_116;
    
	    matRoomsIndice[4, 0] = rm_117;
	    matRoomsIndice[4, 1] = rm_76;
	    matRoomsIndice[4, 2] = rm_118;
	    matRoomsIndice[4, 3] = rm_119;
	    matRoomsIndice[4, 4] = rm_120;
	    matRoomsIndice[4, 5] = rm_28;
	    matRoomsIndice[4, 6] = rm_121;
	    matRoomsIndice[4, 7] = rm_122;
	    matRoomsIndice[4, 8] = rm_123;
	    matRoomsIndice[4, 9] = rm_35;
	    matRoomsIndice[4, 10] = rm_36;
	    matRoomsIndice[4, 11] = rm_39;
    
	    matRoomsIndice[5, 0] = rm_74;
	    matRoomsIndice[5, 1] = rm_75;
	    matRoomsIndice[5, 2] = rm_77;
	    matRoomsIndice[5, 3] = rm_78;
	    matRoomsIndice[5, 4] = rm_124;
	    matRoomsIndice[5, 5] = rm_30;
	    matRoomsIndice[5, 6] = rm_44;
	    matRoomsIndice[5, 7] = rm_125;
	    matRoomsIndice[5, 8] = rm_126;
	    matRoomsIndice[5, 9] = rm_38;
	    matRoomsIndice[5, 10] = rm_37;
	    matRoomsIndice[5, 11] = rm_40;
    
	    matRoomsIndice[6, 0] = rm_72;
	    matRoomsIndice[6, 1] = rm_73;
	    matRoomsIndice[6, 2] = rm_81;
	    matRoomsIndice[6, 3] = rm_82;
	    matRoomsIndice[6, 4] = rm_127;
	    matRoomsIndice[6, 5] = rm_31;
	    matRoomsIndice[6, 6] = rm_32;
	    matRoomsIndice[6, 7] = rm_128;
	    matRoomsIndice[6, 8] = rm_129;
	    matRoomsIndice[6, 9] = rm_47;
	    matRoomsIndice[6, 10] = rm_45;
	    matRoomsIndice[6, 11] = rm_41;
    
	    matRoomsIndice[7, 0] = rm_71;
	    matRoomsIndice[7, 1] = rm_70;
	    matRoomsIndice[7, 2] = rm_69;
	    matRoomsIndice[7, 3] = rm_68;
	    matRoomsIndice[7, 4] = rm_130;
	    matRoomsIndice[7, 5] = rm_131;
	    matRoomsIndice[7, 6] = rm_132;
	    matRoomsIndice[7, 7] = rm_133;
	    matRoomsIndice[7, 8] = rm_29;
	    matRoomsIndice[7, 9] = rm_46;
	    matRoomsIndice[7, 10] = rm_43;
	    matRoomsIndice[7, 11] = rm_42;
    
	    matRoomsIndice[8, 0] = rm_67;
	    matRoomsIndice[8, 1] = rm_66;
	    matRoomsIndice[8, 2] = rm_64;
	    matRoomsIndice[8, 3] = rm_61;
	    matRoomsIndice[8, 4] = rm_134;
	    matRoomsIndice[8, 5] = rm_56;
	    matRoomsIndice[8, 6] = rm_80;
	    matRoomsIndice[8, 7] = rm_48;
	    matRoomsIndice[8, 8] = rm_135;
	    matRoomsIndice[8, 9] = rm_33;
	    matRoomsIndice[8, 10] = rm_34;
	    matRoomsIndice[8, 11] = rm_136;
    
	    matRoomsIndice[9, 0] = rm_137;
	    matRoomsIndice[9, 1] = rm_65;
	    matRoomsIndice[9, 2] = rm_63;
	    matRoomsIndice[9, 3] = rm_60;
	    matRoomsIndice[9, 4] = rm_58;
	    matRoomsIndice[9, 5] = rm_55;
	    matRoomsIndice[9, 6] = rm_79;
	    matRoomsIndice[9, 7] = rm_49;
	    matRoomsIndice[9, 8] = rm_138;
	    matRoomsIndice[9, 9] = rm_139;
	    matRoomsIndice[9, 10] = rm_140;
	    matRoomsIndice[9, 11] = rm_141;
    
	    matRoomsIndice[10, 0] = rm_142;
	    matRoomsIndice[10, 1] = rm_143;
	    matRoomsIndice[10, 2] = rm_62;
	    matRoomsIndice[10, 3] = rm_59;
	    matRoomsIndice[10, 4] = rm_57;
	    matRoomsIndice[10, 5] = rm_54;
	    matRoomsIndice[10, 6] = rm_53;
	    matRoomsIndice[10, 7] = rm_50;
	    matRoomsIndice[10, 8] = rm_144;
	    matRoomsIndice[10, 9] = rm_145;
	    matRoomsIndice[10, 10] = rm_146;
	    matRoomsIndice[10, 11] = rm_147;
    
	    matRoomsIndice[11, 0] = rm_148;
	    matRoomsIndice[11, 1] = rm_149;
	    matRoomsIndice[11, 2] = rm_150;
	    matRoomsIndice[11, 3] = rm_151;
	    matRoomsIndice[11, 4] = rm_152;
	    matRoomsIndice[11, 5] = rm_153;
	    matRoomsIndice[11, 6] = rm_52;
	    matRoomsIndice[11, 7] = rm_51;
	    matRoomsIndice[11, 8] = rm_154;
	    matRoomsIndice[11, 9] = rm_155;
	    matRoomsIndice[11, 10] = rm_156;
	    matRoomsIndice[11, 11] = rm_157;
    
	    var k = 0;
	    var l = 0;
    
	    for (l = 0; l < 12; l++) {
	        if (matRoomsIndice[0, l] == argument0) {
	            k = 0;
	            break;
	        } else if (matRoomsIndice[1, l] == argument0) {
	            k = 1;
	            break;
	        } else if (matRoomsIndice[2, l] == argument0) {
	            k = 2;
	            break;
	        } else if (matRoomsIndice[3, l] == argument0) {
	            k = 3;
	            break;
	        } else if (matRoomsIndice[4, l] == argument0) {
	            k = 4;
	            break;
	        } else if (matRoomsIndice[5, l] == argument0) {
	            k = 5;
	            break;
	        } else if (matRoomsIndice[6, l] == argument0) {
	            k = 6;
	            break;
	        } else if (matRoomsIndice[7, l] == argument0) {
	            k = 7;
	            break;
	        } else if (matRoomsIndice[8, l] == argument0) {
	            k = 8;
	            break;
	        } else if (matRoomsIndice[9, l] == argument0) {
	            k = 9;
	            break;
	        } else if (matRoomsIndice[10, l] == argument0) {
	            k = 10;
	            break;
	        } else if (matRoomsIndice[11, l] == argument0) {
	            k = 11;
	            break;
	        }
	    }
    
	    intervalo = matRoomsMod[k, l];
    
	} else {
	    switch (argument0) {
	        case rm_83:
	            intervalo = 0.95;
	            break;
	        case rm_84:
	            intervalo = 1.35;
	            break;
	        case rm_85:
	            intervalo = 1.15;
	            break;
	        case rm_86:
	            intervalo = 1.15;
	            break;
	        case rm_87:
	            intervalo = 0.95;
	            break;
	        case rm_88:
	            intervalo = 1.55;
	            break;
	        case rm_89:
	            intervalo = 1.35;
	            break;
	        case rm_90:
	            intervalo = 1.4;
	            break;
	        case rm_91:
	            intervalo = 1.75;
	            break;
	        case rm_92:
	            intervalo = 1.75;
	            break;
	        case rm_93:
	            intervalo = 1.85;
	            break;
	        case rm_158:
	            intervalo = 1;
	            break;
	        case rm_159:
	            intervalo = 1;
	            break;
	    }
	}

	return intervalo;



}
