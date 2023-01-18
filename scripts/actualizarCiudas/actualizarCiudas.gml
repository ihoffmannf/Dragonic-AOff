/// @description  actualizarCiudas()
function actualizarCiudas() {

	// Guardo los mapas en que hay PKs que esten inmo, que esten agitando y que esten en mapas distintos al actual

	mapaConPKs[0] = -1;
	mapaConPKs[1] = -1;
	mapaConPKs[2] = -1;
	mapaConPKs[3] = -1;

	var contA = 0;
	while (contA < obj_personas_mundo.totalMultiIA) {
	    globalIAAuxiliar = obj_personas_mundo.globalIA[contA];
	    if (globalIAAuxiliar[0] != -1 && globalIAAuxiliar[23] && globalIAAuxiliar[26] && globalIAAuxiliar[27] && globalIAAuxiliar[40] != room) {
	        var agrega = true;
	        for (var contC = 0; contC < 4; contC++) {
	            if (mapaConPKs[contC] == globalIAAuxiliar[40]) {
	                agrega = false;
	                break;
	            }
	        }
	        if (agrega) {
	            for (var contC = 0; contC < 4; contC++) {
	                if (mapaConPKs[contC] == -1) {
	                    mapaConPKs[contC] = globalIAAuxiliar[40];
	                    break;
	                }
	            }
	        }
	    }
	    contA++;
	}

	// Actualizo los ciudadanos

	contA = 0;
	while (contA < obj_personas_mundo.totalMultiIA) {
	    globalIAAuxiliar = obj_personas_mundo.globalIA[contA];
	    if (globalIAAuxiliar[0] != -1 && !globalIAAuxiliar[23] && globalIAAuxiliar[27] && globalIAAuxiliar[40] != room && !globalIAAuxiliar[44]) {
	        var actualiza = true;
	        for (var contB = 0; contB < 4; contB++) {
	            if (mapaConPKs[contB] == globalIAAuxiliar[40]) {
	                actualiza = false;
	                break;
	            }
	        }
	        if (actualiza) {
	            globalIAAuxiliar[44] = true;
	        }
	    }
	    obj_personas_mundo.globalIA[contA] = globalIAAuxiliar;
	    contA++;
	}



}
