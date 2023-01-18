/// @description  refrescarCabezas()
function refrescarCabezas() {
    
	/*
	
	raza[0] = "Humano";
	raza[1] = "Elfo";
	raza[2] = "Elfo Oscuro";
	raza[3] = "Enano";
	raza[4] = "Gnomo";
	
	sexo[0] = "Hombre";
	sexo[1] = "Mujer";
	
	*/

	// Inicializa
	for (var i = 0; i < maxCabezas; i++) {
		cabezas[i] = -1;
	}
	
	seleccionado = 0;

	if (obj_flecha_raza_izq.seleccionado == 0) {    
	    // Carga cabezas humanos
		if (obj_flecha_sexo_izq.seleccionado == 0) {
			// Carga cabezas humanos hombres 
			cabezas[0] = spr_cabeza_1;
			cabezas[1] = spr_cabeza_2;
			cabezas[2] = spr_cabeza_3;
			cabezas[3] = spr_cabeza_4;
			cabezas[4] = spr_cabeza_5;
			cabezas[5] = spr_cabeza_6;
			cabezas[6] = spr_cabeza_7;
			cabezas[7] = spr_cabeza_8;
			cabezas[8] = spr_cabeza_9;
			cabezas[9] = spr_cabeza_10;
			cabezas[10] = spr_cabeza_11;
			cabezas[11] = spr_cabeza_12;
			cabezas[12] = spr_cabeza_13;
			cabezas[13] = spr_cabeza_14;
			cabezas[14] = spr_cabeza_15;
			cabezas[15] = spr_cabeza_16;
			cabezas[16] = spr_cabeza_17;
			cabezas[17] = spr_cabeza_18;
			cabezas[18] = spr_cabeza_19;
			cabezas[19] = spr_cabeza_20;
			cabezas[20] = spr_cabeza_21;
			cabezas[21] = spr_cabeza_22;
			cabezas[22] = spr_cabeza_23;
			cabezas[23] = spr_cabeza_24;
			limiteCabezas = 24;
		} else {
			// Carga cabezas humanos mujeres
			cabezas[0] = spr_cabeza_25;
			cabezas[1] = spr_cabeza_26;
			cabezas[2] = spr_cabeza_27;
			cabezas[3] = spr_cabeza_28;
			cabezas[4] = spr_cabeza_29;
			limiteCabezas = 5;
		}
	} else if (obj_flecha_raza_izq.seleccionado == 1) {    
	    // Carga cabezas elfos
		if (obj_flecha_sexo_izq.seleccionado == 0) {
			// Carga cabezas elfos hombres 
			cabezas[0] = spr_cabeza_30;
			cabezas[1] = spr_cabeza_31;
			cabezas[2] = spr_cabeza_32;
			cabezas[3] = spr_cabeza_33;
			cabezas[4] = spr_cabeza_34;
			cabezas[5] = spr_cabeza_35;
			cabezas[6] = spr_cabeza_36;
			limiteCabezas = 7;
		} else {
			// Carga cabezas elfos mujeres
			cabezas[0] = spr_cabeza_37;
			cabezas[1] = spr_cabeza_38;
			cabezas[2] = spr_cabeza_39;
			cabezas[3] = spr_cabeza_40;
			cabezas[4] = spr_cabeza_41;		
			limiteCabezas = 5;	
		}
	} else if (obj_flecha_raza_izq.seleccionado == 2) {    
	    // Carga cabezas elfos oscuros
		if (obj_flecha_sexo_izq.seleccionado == 0) {
			// Carga cabezas elfos oscuros hombres  
			cabezas[0] = spr_cabeza_42;
			cabezas[1] = spr_cabeza_43;
			cabezas[2] = spr_cabeza_44;
			cabezas[3] = spr_cabeza_45;
			limiteCabezas = 4;
		} else {
			// Carga cabezas elfos oscuros mujeres 
			cabezas[0] = spr_cabeza_46;
			cabezas[1] = spr_cabeza_47;
			cabezas[2] = spr_cabeza_48;
			cabezas[3] = spr_cabeza_49;
			cabezas[4] = spr_cabeza_50;
			limiteCabezas = 5;
		}
	} else if (obj_flecha_raza_izq.seleccionado == 3) {    
	    // Carga cabezas enanos
		if (obj_flecha_sexo_izq.seleccionado == 0) {
			// Carga cabezas enanos hombres 
			cabezas[0] = spr_cabeza_62;
			cabezas[1] = spr_cabeza_63;
			cabezas[2] = spr_cabeza_64;
			cabezas[3] = spr_cabeza_65;
			limiteCabezas = 4;
		} else {
			// Carga cabezas enanos mujeres 
			cabezas[0] = spr_cabeza_54;
			cabezas[1] = spr_cabeza_55;
			cabezas[2] = spr_cabeza_56;
			cabezas[3] = spr_cabeza_57;
			cabezas[4] = spr_cabeza_58;
			cabezas[5] = spr_cabeza_59;
			cabezas[6] = spr_cabeza_60;
			cabezas[7] = spr_cabeza_61;		
			limiteCabezas = 8;	
		}
	} else if (obj_flecha_raza_izq.seleccionado == 4) {    
	    // Carga cabezas gnomos
		if (obj_flecha_sexo_izq.seleccionado == 0) {
			// Carga cabezas gnomos hombres
			cabezas[0] = spr_cabeza_51;
			cabezas[1] = spr_cabeza_52;
			cabezas[2] = spr_cabeza_53;	
			limiteCabezas = 3;		
		} else {
			// Carga cabezas gnomos mujeres
			cabezas[0] = spr_cabeza_54;
			cabezas[1] = spr_cabeza_55;
			cabezas[2] = spr_cabeza_56;
			cabezas[3] = spr_cabeza_57;
			cabezas[4] = spr_cabeza_58;
			cabezas[5] = spr_cabeza_59;
			cabezas[6] = spr_cabeza_60;
			cabezas[7] = spr_cabeza_61;			
			limiteCabezas = 8;	
		}
	}

}
