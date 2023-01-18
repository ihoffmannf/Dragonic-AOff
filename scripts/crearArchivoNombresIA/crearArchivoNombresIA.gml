/// @description  crearArchivoNombresIA()
function crearArchivoNombresIA() {

	if (!file_exists("nombresIA.ini")) {
    
	    /*
    
	    29 Cabezas Humanos (24 H y 5 M) * 2
	    12 Cabezas Elfos (7 H y 5 M) 
	    9 Cabezas EOs (4 H y 5 M)
	    11 Cabezas Gnomos (3 H y 8 M)
    
	    0 = Nombre
	    1 = Sprite cabeza
	    2 = Clase
	    3 = PK?
    
	    */
    
	    // Humanos Clérigos
    
	        // Hombres
    
	        nombresIA[0, 0] = "Farmar Galaul";
	        nombresIA[0, 1] = spr_cabeza_1;
	        nombresIA[0, 2] = 0; // Clase
	        nombresIA[0, 3] = false; // PK?
    
	        nombresIA[1, 0] = "Astan Lavus";
	        nombresIA[1, 1] = spr_cabeza_2;
	        nombresIA[1, 2] = 0; // Clase
	        nombresIA[1, 3] = false; // PK?
    
	        nombresIA[2, 0] = "Ales Gwelis";
	        nombresIA[2, 1] = spr_cabeza_3;
	        nombresIA[2, 2] = 0; // Clase
	        nombresIA[2, 3] = false; // PK?
    
	        nombresIA[3, 0] = "Howyr Thus";
	        nombresIA[3, 1] = spr_cabeza_4;
	        nombresIA[3, 2] = 0; // Clase
	        nombresIA[3, 3] = false; // PK?
    
	        nombresIA[4, 0] = "Surus Kinarius";
	        nombresIA[4, 1] = spr_cabeza_5;
	        nombresIA[4, 2] = 0; // Clase
	        nombresIA[4, 3] = false; // PK?
    
	        nombresIA[5, 0] = "Clavyn Lyrfis";
	        nombresIA[5, 1] = spr_cabeza_6;
	        nombresIA[5, 2] = 0; // Clase
	        nombresIA[5, 3] = false; // PK?
    
	        nombresIA[6, 0] = "Tagmoz Sillus";
	        nombresIA[6, 1] = spr_cabeza_7;
	        nombresIA[6, 2] = 0; // Clase
	        nombresIA[6, 3] = false; // PK?
    
	        nombresIA[7, 0] = "Rebli Larspykan";
	        nombresIA[7, 1] = spr_cabeza_8;
	        nombresIA[7, 2] = 0; // Clase
	        nombresIA[7, 3] = false; // PK?
    
	        nombresIA[8, 0] = "Ankro Cynn";
	        nombresIA[8, 1] = spr_cabeza_9;
	        nombresIA[8, 2] = 0; // Clase
	        nombresIA[8, 3] = false; // PK?
    
	        nombresIA[9, 0] = "Carthrion Ascoy";
	        nombresIA[9, 1] = spr_cabeza_10;
	        nombresIA[9, 2] = 0; // Clase
	        nombresIA[9, 3] = false; // PK?
    
	        nombresIA[10, 0] = "Adornin Amerail";
	        nombresIA[10, 1] = spr_cabeza_11;
	        nombresIA[10, 2] = 0; // Clase
	        nombresIA[10, 3] = false; // PK?
    
	        nombresIA[11, 0] = "Narm Dammyra";
	        nombresIA[11, 1] = spr_cabeza_12;
	        nombresIA[11, 2] = 0; // Clase
	        nombresIA[11, 3] = false; // PK?
    
	        nombresIA[12, 0] = "Amil Aminiell";
	        nombresIA[12, 1] = spr_cabeza_13;
	        nombresIA[12, 2] = 0; // Clase
	        nombresIA[12, 3] = true; // PK?
    
	        nombresIA[13, 0] = "Furaxin Pawerthae";
	        nombresIA[13, 1] = spr_cabeza_14;
	        nombresIA[13, 2] = 0; // Clase
	        nombresIA[13, 3] = true; // PK?
    
	        nombresIA[14, 0] = "Djka Fael";
	        nombresIA[14, 1] = spr_cabeza_15;
	        nombresIA[14, 2] = 0; // Clase
	        nombresIA[14, 3] = true; // PK?
    
	        nombresIA[15, 0] = "Romex Venteik";
	        nombresIA[15, 1] = spr_cabeza_16;
	        nombresIA[15, 2] = 0; // Clase
	        nombresIA[15, 3] = true; // PK?
    
	        nombresIA[16, 0] = "Krithorus Alcohina";
	        nombresIA[16, 1] = spr_cabeza_17;
	        nombresIA[16, 2] = 0; // Clase
	        nombresIA[16, 3] = true; // PK?
    
	        nombresIA[17, 0] = "Ramik Silon";
	        nombresIA[17, 1] = spr_cabeza_18;
	        nombresIA[17, 2] = 0; // Clase
	        nombresIA[17, 3] = true; // PK?
    
	        nombresIA[18, 0] = "Lard Seldoe";
	        nombresIA[18, 1] = spr_cabeza_19;
	        nombresIA[18, 2] = 0; // Clase
	        nombresIA[18, 3] = true; // PK?
    
	        nombresIA[19, 0] = "Myox Ludanitan";
	        nombresIA[19, 1] = spr_cabeza_20;
	        nombresIA[19, 2] = 0; // Clase
	        nombresIA[19, 3] = true; // PK?
    
	        nombresIA[20, 0] = "Dadnil Farya";
	        nombresIA[20, 1] = spr_cabeza_21;
	        nombresIA[20, 2] = 0; // Clase
	        nombresIA[20, 3] = true; // PK?
    
	        nombresIA[21, 0] = "Femion Theata";
	        nombresIA[21, 1] = spr_cabeza_22;
	        nombresIA[21, 2] = 0; // Clase
	        nombresIA[21, 3] = true; // PK?
    
	        nombresIA[22, 0] = "Draeras Zeximion";
	        nombresIA[22, 1] = spr_cabeza_23;
	        nombresIA[22, 2] = 0; // Clase
	        nombresIA[22, 3] = true; // PK?
    
	        nombresIA[23, 0] = "Trecres Alcra";
	        nombresIA[23, 1] = spr_cabeza_24;
	        nombresIA[23, 2] = 0; // Clase
	        nombresIA[23, 3] = true; // PK?
    
    
	        // Mujeres
    
	        nombresIA[24, 0] = "Cecca Hardor";
	        nombresIA[24, 1] = spr_cabeza_25;
	        nombresIA[24, 2] = 0; // Clase
	        nombresIA[24, 3] = false; // PK?
    
	        nombresIA[25, 0] = "Magi Sadri";
	        nombresIA[25, 1] = spr_cabeza_26;
	        nombresIA[25, 2] = 0; // Clase
	        nombresIA[25, 3] = false; // PK?
    
	        nombresIA[26, 0] = "Augia Kevron";
	        nombresIA[26, 1] = spr_cabeza_27;
	        nombresIA[26, 2] = 0; // Clase
	        nombresIA[26, 3] = true; // PK?
    
	        nombresIA[27, 0] = "Aelightma Cadinalia";
	        nombresIA[27, 1] = spr_cabeza_28;
	        nombresIA[27, 2] = 0; // Clase
	        nombresIA[27, 3] = true; // PK?
    
	        nombresIA[28, 0] = "Jeffora Loithan";
	        nombresIA[28, 1] = spr_cabeza_29;
	        nombresIA[28, 2] = 0; // Clase
	        nombresIA[28, 3] = true; // PK?
    
    
	    // Humanos Magos
    
	        // Hombres
    
	        nombresIA[29, 0] = "Dilblath Infaria";
	        nombresIA[29, 1] = spr_cabeza_1;
	        nombresIA[29, 2] = 1; // Clase
	        nombresIA[29, 3] = true; // PK?
    
	        nombresIA[30, 0] = "Gumu Taxa";
	        nombresIA[30, 1] = spr_cabeza_2;
	        nombresIA[30, 2] = 1; // Clase
	        nombresIA[30, 3] = true; // PK?
    
	        nombresIA[31, 0] = "Frelamir Wahire";
	        nombresIA[31, 1] = spr_cabeza_3;
	        nombresIA[31, 2] = 1; // Clase
	        nombresIA[31, 3] = true; // PK?
    
	        nombresIA[32, 0] = "Sarif Ekto";
	        nombresIA[32, 1] = spr_cabeza_4;
	        nombresIA[32, 2] = 1; // Clase
	        nombresIA[32, 3] = true; // PK?
    
	        nombresIA[33, 0] = "Therriolf Renatim";
	        nombresIA[33, 1] = spr_cabeza_5;
	        nombresIA[33, 2] = 1; // Clase
	        nombresIA[33, 3] = true; // PK?
    
	        nombresIA[34, 0] = "Nedran Gods";
	        nombresIA[34, 1] = spr_cabeza_6;
	        nombresIA[34, 2] = 1; // Clase
	        nombresIA[34, 3] = true; // PK?
    
	        nombresIA[35, 0] = "Ascla Methan";
	        nombresIA[35, 1] = spr_cabeza_7;
	        nombresIA[35, 2] = 1; // Clase
	        nombresIA[35, 3] = true; // PK?
    
	        nombresIA[36, 0] = "Tauk Pugur";
	        nombresIA[36, 1] = spr_cabeza_8;
	        nombresIA[36, 2] = 1; // Clase
	        nombresIA[36, 3] = true; // PK?
    
	        nombresIA[37, 0] = "Galfan Herakugh";
	        nombresIA[37, 1] = spr_cabeza_9;
	        nombresIA[37, 2] = 1; // Clase
	        nombresIA[37, 3] = true; // PK?
    
	        nombresIA[38, 0] = "Lungt Nimon";
	        nombresIA[38, 1] = spr_cabeza_10;
	        nombresIA[38, 2] = 1; // Clase
	        nombresIA[38, 3] = true; // PK?
    
	        nombresIA[39, 0] = "Jiku Queneb";
	        nombresIA[39, 1] = spr_cabeza_11;
	        nombresIA[39, 2] = 1; // Clase
	        nombresIA[39, 3] = true; // PK?
    
	        nombresIA[40, 0] = "Dazgadow Zoodurron";
	        nombresIA[40, 1] = spr_cabeza_12;
	        nombresIA[40, 2] = 1; // Clase
	        nombresIA[40, 3] = true; // PK?
    
	        nombresIA[41, 0] = "Vico Rayah";
	        nombresIA[41, 1] = spr_cabeza_13;
	        nombresIA[41, 2] = 1; // Clase
	        nombresIA[41, 3] = false; // PK?
    
	        nombresIA[42, 0] = "Chom Kada";
	        nombresIA[42, 1] = spr_cabeza_14;
	        nombresIA[42, 2] = 1; // Clase
	        nombresIA[42, 3] = false; // PK?
    
	        nombresIA[43, 0] = "Fron Theathor";
	        nombresIA[43, 1] = spr_cabeza_15;
	        nombresIA[43, 2] = 1; // Clase
	        nombresIA[43, 3] = false; // PK?
    
	        nombresIA[44, 0] = "Bowca Lella";
	        nombresIA[44, 1] = spr_cabeza_16;
	        nombresIA[44, 2] = 1; // Clase
	        nombresIA[44, 3] = false; // PK?
    
	        nombresIA[45, 0] = "Ekon Jamixo";
	        nombresIA[45, 1] = spr_cabeza_17;
	        nombresIA[45, 2] = 1; // Clase
	        nombresIA[45, 3] = false; // PK?
    
	        nombresIA[46, 0] = "Marmcan Thon";
	        nombresIA[46, 1] = spr_cabeza_18;
	        nombresIA[46, 2] = 1; // Clase
	        nombresIA[46, 3] = false; // PK?
    
	        nombresIA[47, 0] = "Tawyn Jamwemin";
	        nombresIA[47, 1] = spr_cabeza_19;
	        nombresIA[47, 2] = 1; // Clase
	        nombresIA[47, 3] = false; // PK?
    
	        nombresIA[48, 0] = "Cerion Jeru";
	        nombresIA[48, 1] = spr_cabeza_20;
	        nombresIA[48, 2] = 1; // Clase
	        nombresIA[48, 3] = false; // PK?
    
	        nombresIA[49, 0] = "Tollisurex Sagasern";
	        nombresIA[49, 1] = spr_cabeza_21;
	        nombresIA[49, 2] = 1; // Clase
	        nombresIA[49, 3] = false; // PK?
    
	        nombresIA[50, 0] = "Rohiron Shar";
	        nombresIA[50, 1] = spr_cabeza_22;
	        nombresIA[50, 2] = 1; // Clase
	        nombresIA[50, 3] = false; // PK?
    
	        nombresIA[51, 0] = "Mithadyn Hallsian";
	        nombresIA[51, 1] = spr_cabeza_23;
	        nombresIA[51, 2] = 1; // Clase
	        nombresIA[51, 3] = false; // PK?
    
	        nombresIA[52, 0] = "Turivim Bengu";
	        nombresIA[52, 1] = spr_cabeza_24;
	        nombresIA[52, 2] = 1; // Clase
	        nombresIA[52, 3] = false; // PK?
    
    
	        // Mujeres
    
	        nombresIA[53, 0] = "Aesea Grinaaric";
	        nombresIA[53, 1] = spr_cabeza_25;
	        nombresIA[53, 2] = 1; // Clase
	        nombresIA[53, 3] = true; // PK?
    
	        nombresIA[54, 0] = "Faziwa Kibavia";
	        nombresIA[54, 1] = spr_cabeza_26;
	        nombresIA[54, 2] = 1; // Clase
	        nombresIA[54, 3] = true; // PK?
    
	        nombresIA[55, 0] = "Shie Poldo";
	        nombresIA[55, 1] = spr_cabeza_27;
	        nombresIA[55, 2] = 1; // Clase
	        nombresIA[55, 3] = true; // PK?
    
	        nombresIA[56, 0] = "Helituma Qaria";
	        nombresIA[56, 1] = spr_cabeza_28;
	        nombresIA[56, 2] = 1; // Clase
	        nombresIA[56, 3] = false; // PK?
    
	        nombresIA[57, 0] = "Razduria Glern";
	        nombresIA[57, 1] = spr_cabeza_29;
	        nombresIA[57, 2] = 1; // Clase
	        nombresIA[57, 3] = false; // PK?
    
    
	    // Elfos Cazadores
    
	        // Hombres
    
	        nombresIA[58, 0] = "Thir Sere";
	        nombresIA[58, 1] = spr_cabeza_30;
	        nombresIA[58, 2] = 2; // Clase
	        nombresIA[58, 3] = false; // PK?
    
	        nombresIA[59, 0] = "Diredorpuz Wino";
	        nombresIA[59, 1] = spr_cabeza_31;
	        nombresIA[59, 2] = 2; // Clase
	        nombresIA[59, 3] = false; // PK?
    
	        nombresIA[60, 0] = "Selgid Dikumilon";
	        nombresIA[60, 1] = spr_cabeza_32;
	        nombresIA[60, 2] = 2; // Clase
	        nombresIA[60, 3] = false; // PK?
    
	        nombresIA[61, 0] = "Dajus Enyari";
	        nombresIA[61, 1] = spr_cabeza_33;
	        nombresIA[61, 2] = 2; // Clase
	        nombresIA[61, 3] = true; // PK?
    
	        nombresIA[62, 0] = "Aste Aspion";
	        nombresIA[62, 1] = spr_cabeza_34;
	        nombresIA[62, 2] = 2; // Clase
	        nombresIA[62, 3] = true; // PK?
    
	        nombresIA[63, 0] = "Tamus Morigo";
	        nombresIA[63, 1] = spr_cabeza_35;
	        nombresIA[63, 2] = 2; // Clase
	        nombresIA[63, 3] = true; // PK?
    
	        nombresIA[64, 0] = "Silutalid Denion";
	        nombresIA[64, 1] = spr_cabeza_36;
	        nombresIA[64, 2] = 2; // Clase
	        nombresIA[64, 3] = true; // PK?
    
    
	        // Mujeres
    
	        nombresIA[65, 0] = "Fardorhal Adwan";
	        nombresIA[65, 1] = spr_cabeza_37;
	        nombresIA[65, 2] = 2; // Clase
	        nombresIA[65, 3] = false; // PK?
    
	        nombresIA[66, 0] = "Ureya Edus";
	        nombresIA[66, 1] = spr_cabeza_38;
	        nombresIA[66, 2] = 2; // Clase
	        nombresIA[66, 3] = false; // PK?
    
	        nombresIA[67, 0] = "Dura Jacke";
	        nombresIA[67, 1] = spr_cabeza_39;
	        nombresIA[67, 2] = 2; // Clase
	        nombresIA[67, 3] = true; // PK?
    
	        nombresIA[68, 0] = "Irel Fura";
	        nombresIA[68, 1] = spr_cabeza_40;
	        nombresIA[68, 2] = 2; // Clase
	        nombresIA[68, 3] = true; // PK?
    
	        nombresIA[69, 0] = "Xalaca Saing";
	        nombresIA[69, 1] = spr_cabeza_41;
	        nombresIA[69, 2] = 2; // Clase
	        nombresIA[69, 3] = true; // PK?
    
    
	    // Elfos Oscuros Clérigos
    
	        // Hombres
    
	        nombresIA[70, 0] = "Guzus Leoderwena";
	        nombresIA[70, 1] = spr_cabeza_42;
	        nombresIA[70, 2] = 0; // Clase
	        nombresIA[70, 3] = false; // PK?
    
	        nombresIA[71, 0] = "Nigo Dade";
	        nombresIA[71, 1] = spr_cabeza_43;
	        nombresIA[71, 2] = 0; // Clase
	        nombresIA[71, 3] = false; // PK?
    
	        nombresIA[72, 0] = "Zodux Dalier";
	        nombresIA[72, 1] = spr_cabeza_44;
	        nombresIA[72, 2] = 0; // Clase
	        nombresIA[72, 3] = true; // PK?
    
	        nombresIA[73, 0] = "Oritaxoro Shalash";
	        nombresIA[73, 1] = spr_cabeza_45;
	        nombresIA[73, 2] = 0; // Clase
	        nombresIA[73, 3] = true; // PK?
    
    
	        // Mujeres
    
	        nombresIA[74, 0] = "Clenia Thelipshir";
	        nombresIA[74, 1] = spr_cabeza_46;
	        nombresIA[74, 2] = 0; // Clase
	        nombresIA[74, 3] = false; // PK?
    
	        nombresIA[75, 0] = "Anjo Eath";
	        nombresIA[75, 1] = spr_cabeza_47;
	        nombresIA[75, 2] = 0; // Clase
	        nombresIA[75, 3] = false; // PK?
    
	        nombresIA[76, 0] = "Cafyn Haax";
	        nombresIA[76, 1] = spr_cabeza_48;
	        nombresIA[76, 2] = 0; // Clase
	        nombresIA[76, 3] = true; // PK?
    
	        nombresIA[77, 0] = "Rebris Kareesa";
	        nombresIA[77, 1] = spr_cabeza_49;
	        nombresIA[77, 2] = 0; // Clase
	        nombresIA[77, 3] = true; // PK?
    
	        nombresIA[78, 0] = "Leni Obina";
	        nombresIA[78, 1] = spr_cabeza_50;
	        nombresIA[78, 2] = 0; // Clase
	        nombresIA[78, 3] = true; // PK?
    
    
	    // Gnomos Magos
    
	        // Hombres
    
	        nombresIA[79, 0] = "Alamidax Jayll";
	        nombresIA[79, 1] = spr_cabeza_51;
	        nombresIA[79, 2] = 1; // Clase
	        nombresIA[79, 3] = false; // PK?
    
	        nombresIA[80, 0] = "Mavander Cymo";
	        nombresIA[80, 1] = spr_cabeza_52;
	        nombresIA[80, 2] = 1; // Clase
	        nombresIA[80, 3] = true; // PK?
    
	        nombresIA[81, 0] = "Xahamal Lucaldian";
	        nombresIA[81, 1] = spr_cabeza_53;
	        nombresIA[81, 2] = 1; // Clase
	        nombresIA[81, 3] = true; // PK?
    
    
	        // Mujeres
    
	        nombresIA[82, 0] = "Valyst Sene";
	        nombresIA[82, 1] = spr_cabeza_54;
	        nombresIA[82, 2] = 1; // Clase
	        nombresIA[82, 3] = false; // PK?
    
	        nombresIA[83, 0] = "Darazra Vizzleng";
	        nombresIA[83, 1] = spr_cabeza_55;
	        nombresIA[83, 2] = 1; // Clase
	        nombresIA[83, 3] = false; // PK?
    
	        nombresIA[84, 0] = "Ashast Everd";
	        nombresIA[84, 1] = spr_cabeza_56;
	        nombresIA[84, 2] = 1; // Clase
	        nombresIA[84, 3] = false; // PK?
    
	        nombresIA[85, 0] = "Isania Vumplas";
	        nombresIA[85, 1] = spr_cabeza_57;
	        nombresIA[85, 2] = 1; // Clase
	        nombresIA[85, 3] = false; // PK?
    
	        nombresIA[86, 0] = "Sarulco Huwutsuria";
	        nombresIA[86, 1] = spr_cabeza_58;
	        nombresIA[86, 2] = 1; // Clase
	        nombresIA[86, 3] = true; // PK?
    
	        nombresIA[87, 0] = "Merva Firon";
	        nombresIA[87, 1] = spr_cabeza_59;
	        nombresIA[87, 2] = 1; // Clase
	        nombresIA[87, 3] = true; // PK?
    
	        nombresIA[88, 0] = "Niggarius Myas";
	        nombresIA[88, 1] = spr_cabeza_60;
	        nombresIA[88, 2] = 1; // Clase
	        nombresIA[88, 3] = true; // PK?
    
	        nombresIA[89, 0] = "Yuye Sharius";
	        nombresIA[89, 1] = spr_cabeza_61;
	        nombresIA[89, 2] = 1; // Clase
	        nombresIA[89, 3] = true; // PK?

	// Clérigos random
        
	    nombresIA[90, 0] = "Akruo Sidis";
	    nombresIA[90, 1] = spr_cabeza_5;
	    nombresIA[90, 2] = 0; // Clase
	    nombresIA[90, 3] = choose(0, 1); // PK?
    
	    nombresIA[91, 0] = "Akryllyn Dora";
	    nombresIA[91, 1] = spr_cabeza_3;
	    nombresIA[91, 2] = 0; // Clase
	    nombresIA[91, 3] = choose(0, 1); // PK?
    
	    nombresIA[92, 0] = "Wuwantro Ybojetshin";
	    nombresIA[92, 1] = spr_cabeza_45;
	    nombresIA[92, 2] = 0; // Clase
	    nombresIA[92, 3] = choose(0, 1); // PK?
    
	    nombresIA[93, 0] = "Shawyn Caragnar";
	    nombresIA[93, 1] = spr_cabeza_46;
	    nombresIA[93, 2] = 0; // Clase
	    nombresIA[93, 3] = choose(0, 1); // PK?
    
	    nombresIA[94, 0] = "Aphib Algon";
	    nombresIA[94, 1] = spr_cabeza_29;
	    nombresIA[94, 2] = 0; // Clase
	    nombresIA[94, 3] = choose(0, 1); // PK?
    
	    nombresIA[95, 0] = "Redarin Celan";
	    nombresIA[95, 1] = spr_cabeza_43;
	    nombresIA[95, 2] = 0; // Clase
	    nombresIA[95, 3] = choose(0, 1); // PK?
    
	    nombresIA[96, 0] = "Lythekona Arge";
	    nombresIA[96, 1] = spr_cabeza_47;
	    nombresIA[96, 2] = 0; // Clase
	    nombresIA[96, 3] = choose(0, 1); // PK?
    
	    nombresIA[97, 0] = "Alsis Levie";
	    nombresIA[97, 1] = spr_cabeza_15;
	    nombresIA[97, 2] = 0; // Clase
	    nombresIA[97, 3] = choose(0, 1); // PK?
    
	    nombresIA[98, 0] = "Sanu Alma";
	    nombresIA[98, 1] = spr_cabeza_44;
	    nombresIA[98, 2] = 0; // Clase
	    nombresIA[98, 3] = choose(0, 1); // PK?
    
	    nombresIA[99, 0] = "Dargor Romus";
	    nombresIA[99, 1] = spr_cabeza_42
	    nombresIA[99, 2] = 0; // Clase
	    nombresIA[99, 3] = choose(0, 1); // PK?
    
	    // Magos random
    
	    nombresIA[100, 0] = "Doralita Rewasostir";
	    nombresIA[100, 1] = spr_cabeza_28;
	    nombresIA[100, 2] = 1; // Clase
	    nombresIA[100, 3] = choose(0, 1); // PK?
    
	    nombresIA[101, 0] = "Kesus Alipayon";
	    nombresIA[101, 1] = spr_cabeza_51;
	    nombresIA[101, 2] = 1; // Clase
	    nombresIA[101, 3] = choose(0, 1); // PK?
    
	    nombresIA[102, 0] = "Thor Ektoe";
	    nombresIA[102, 1] = spr_cabeza_6;
	    nombresIA[102, 2] = 1; // Clase
	    nombresIA[102, 3] = choose(0, 1); // PK?
    
	    nombresIA[103, 0] = "Nowan Jhor";
	    nombresIA[103, 1] = spr_cabeza_52;
	    nombresIA[103, 2] = 1; // Clase
	    nombresIA[103, 3] = choose(0, 1); // PK?
    
	    nombresIA[104, 0] = "Ther Cera";
	    nombresIA[104, 1] = spr_cabeza_56;
	    nombresIA[104, 2] = 1; // Clase
	    nombresIA[104, 3] = choose(0, 1); // PK?
    
	    nombresIA[105, 0] = "Yuth Chan";
	    nombresIA[105, 1] = spr_cabeza_27;
	    nombresIA[105, 2] = 1; // Clase
	    nombresIA[105, 3] = choose(0, 1); // PK?
    
	    nombresIA[106, 0] = "Wizarrgon Tazer";
	    nombresIA[106, 1] = spr_cabeza_14;
	    nombresIA[106, 2] = 1; // Clase
	    nombresIA[106, 3] = choose(0, 1); // PK?
    
	    nombresIA[107, 0] = "Niux Dogaril";
	    nombresIA[107, 1] = spr_cabeza_16;
	    nombresIA[107, 2] = 1; // Clase
	    nombresIA[107, 3] = choose(0, 1); // PK?
    
	    nombresIA[108, 0] = "Xothus Aleberi";
	    nombresIA[108, 1] = spr_cabeza_18;
	    nombresIA[108, 2] = 1; // Clase
	    nombresIA[108, 3] = choose(0, 1); // PK?
    
	    nombresIA[109, 0] = "Flaradri Khan";
	    nombresIA[109, 1] = spr_cabeza_53;
	    nombresIA[109, 2] = 1; // Clase
	    nombresIA[109, 3] = choose(0, 1); // PK?
    
	    // Cazadores random
    
	    nombresIA[110, 0] = "Taela Keroneylax";
	    nombresIA[110, 1] = spr_cabeza_37;
	    nombresIA[110, 2] = 2; // Clase
	    nombresIA[110, 3] = choose(0, 1); // PK?
    
	    nombresIA[111, 0] = "Jovitand Sheon";
	    nombresIA[111, 1] = spr_cabeza_31;
	    nombresIA[111, 2] = 2; // Clase
	    nombresIA[111, 3] = choose(0, 1); // PK?
    
	    nombresIA[112, 0] = "Turgella Thoreenlys";
	    nombresIA[112, 1] = spr_cabeza_38;
	    nombresIA[112, 2] = 2; // Clase
	    nombresIA[112, 3] = choose(0, 1); // PK?
    
	    nombresIA[113, 0] = "Cathia Zirin";
	    nombresIA[113, 1] = spr_cabeza_39;
	    nombresIA[113, 2] = 2; // Clase
	    nombresIA[113, 3] = choose(0, 1); // PK?
    
	    nombresIA[114, 0] = "Anix Serodicus";
	    nombresIA[114, 1] = spr_cabeza_40;
	    nombresIA[114, 2] = 2; // Clase
	    nombresIA[114, 3] = choose(0, 1); // PK?
    
	    nombresIA[115, 0] = "Cannamzana Rhinine";
	    nombresIA[115, 1] = spr_cabeza_41;
	    nombresIA[115, 2] = 2; // Clase
	    nombresIA[115, 3] = choose(0, 1); // PK?
    
	    nombresIA[116, 0] = "Shigorpe Thall";
	    nombresIA[116, 1] = spr_cabeza_36;
	    nombresIA[116, 2] = 2; // Clase
	    nombresIA[116, 3] = choose(0, 1); // PK?
    
	    nombresIA[117, 0] = "Aldfanatra Arkto";
	    nombresIA[117, 1] = spr_cabeza_37;
	    nombresIA[117, 2] = 2; // Clase
	    nombresIA[117, 3] = choose(0, 1); // PK?
    
	    nombresIA[118, 0] = "Gola Eydob";
	    nombresIA[118, 1] = spr_cabeza_40;
	    nombresIA[118, 2] = 2; // Clase
	    nombresIA[118, 3] = choose(0, 1); // PK?
    
	    nombresIA[119, 0] = "Cretus Pana";
	    nombresIA[119, 1] = spr_cabeza_32;
	    nombresIA[119, 2] = 2; // Clase   
	    nombresIA[119, 3] = choose(0, 1); // PK? 
    
	    // #####################################################################################################################################################
	    // Creo el archivo
    
	    ini_open("nombresIA.ini");
    
	    for (var i = 0; i < 90; i ++) {
	        writeS("nombresIA", "nombresIA[" + string(i) + ", 0]", nombresIA[i, 0]);
	        writeS("nombresIA", "nombresIA[" + string(i) + ", 1]", sprite_get_name(nombresIA[i, 1]));
	        write("nombresIA", "nombresIA[" + string(i) + ", 2]", nombresIA[i, 2]);
	        write("nombresIA", "nombresIA[" + string(i) + ", 3]", nombresIA[i, 3]);
	    }
    
	    ini_close();

	}
	
}
