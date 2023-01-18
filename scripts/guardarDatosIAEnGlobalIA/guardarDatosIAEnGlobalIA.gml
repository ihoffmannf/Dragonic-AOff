/// @description  guardarDatosIAEnGlobalIA()
function guardarDatosIAEnGlobalIA() {

	datosIA[0] = -1;

	for (var i = 0; i < 46; i++) {
	    datosIA[i] = -1;
	}

	datosIA[0] = x;
	datosIA[1] = y;
	datosIA[2] = enemigo;
	datosIA[3] = direccion;
	datosIA[4] = yaHabloEnojado1;
	datosIA[5] = yaHabloEnojado2;
	datosIA[6] = yaHabloEnojado3;
	datosIA[7] = genero;
	datosIA[8] = clase;
	datosIA[9] = nroRaza;
	datosIA[10] = saludMax;
	datosIA[11] = salud;
	datosIA[12] = manaMax;
	datosIA[13] = mana;
	datosIA[14] = nombre;
	datosIA[15] = danoMeleeMin;
	datosIA[16] = danoMeleeMax;
	datosIA[17] = evasion;

	datosIA[18] = eqArma;
	datosIA[19] = eqRopa;
	datosIA[20] = eqCascoGorro;
	datosIA[21] = eqEscudo;
	datosIA[22] = eqFlechas;

	datosIA[23] = pk;
	datosIA[24] = enBarca;
	datosIA[25] = sprCabeza;
	datosIA[26] = inmovilizado;
	datosIA[27] = agitando;

	datosIA[28] = yaHablo;
	datosIA[29] = tiempoEnView;
	datosIA[30] = alarm[4];
	datosIA[31] = alarm[8];
	datosIA[32] = tiempoLejosPJ;
	datosIA[33] = -1;
	datosIA[34] = -1;
	datosIA[35] = -1;
	datosIA[36] = -1;
	datosIA[37] = -1;
	datosIA[38] = -1;
	datosIA[39] = false;
	datosIA[40] = room;
	datosIA[42] = alarm[7];
	datosIA[43] = false;
	datosIA[44] = true;
	datosIA[45] = rangoFaccion;

	var i = 0;
	while (i < obj_personas_mundo.totalMultiIA) {
	    globalIAAux = obj_personas_mundo.globalIA[i];
	    if (globalIAAux[0] == -1) {
	        break;
	    }
	    i++;
	}
	datosIA[41] = i;

	obj_personas_mundo.globalIA[i] = datosIA;
	obj_personas_mundo.itemsGlobalIA[i] = vecItems;
	obj_personas_mundo.cantItemsGlobalIA[i] = cantItems;







}
