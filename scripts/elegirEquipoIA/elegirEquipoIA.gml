/// @description  elegirEquipoIA(idIA)
/// @param idIA
function elegirEquipoIA(argument0) {

	var nivelPJ = obj_pj.nivel;

	// Túnicas / Armaduras

	var totalRopasDisponibles = 15;
	ropasDisponibles[0] = 33;
	ropasDisponibles[1] = 34;
	ropasDisponibles[2] = 35;
	ropasDisponibles[3] = 36;
	ropasDisponibles[4] = 39;
	ropasDisponibles[5] = 40;
	ropasDisponibles[6] = -1;
	ropasDisponibles[7] = -1;
	ropasDisponibles[8] = -1;
	ropasDisponibles[9] = -1;
	ropasDisponibles[10] = -1;
	ropasDisponibles[11] = -1;
	ropasDisponibles[12] = -1;
	ropasDisponibles[13] = -1;
	ropasDisponibles[14] = -1;

	if (nivelPJ >= 8) {
	    ropasDisponibles[6] = 72;
	    ropasDisponibles[7] = 73;
	    if (nivelPJ >= 12) {
	        ropasDisponibles[8] = 75;
	        ropasDisponibles[9] = 76;
	        if (nivelPJ >= 21) {
	            ropasDisponibles[10] = 37;
	            ropasDisponibles[11] = 38;
	            if (nivelPJ >= 25) {
	                ropasDisponibles[12] = 43;
	                ropasDisponibles[13] = 44;
	                ropasDisponibles[14] = 83;
	            }
	        }
	    }
	}

	// Armas

	var totalArmasDisponibles = 6;
	armasDisponibles[0] = 21;
	armasDisponibles[1] = 8;
	armasDisponibles[2] = 18;
	armasDisponibles[3] = -1;
	armasDisponibles[4] = -1;
	armasDisponibles[5] = -1;

	if (nivelPJ >= 8) {
	    armasDisponibles[3] = 9;
	    if (nivelPJ >= 10) {
	        armasDisponibles[1] = 10;
	        if (nivelPJ >= 12) {
	            armasDisponibles[0] = 22;
	            if (nivelPJ >= 15) {
	                armasDisponibles[1] = 11;
	                armasDisponibles[3] = 12;
	                if (nivelPJ >= 22) {
	                    armasDisponibles[1] = 14;
	                    if (nivelPJ >= 24) {
	                        armasDisponibles[3] = 13;
	                        armasDisponibles[0] = 23;
	                        armasDisponibles[4] = 19;
	                        if (nivelPJ >= 28) {
	                            armasDisponibles[0] = 24;
	                            if (nivelPJ >= 36) {
	                                armasDisponibles[0] = 25;
	                                armasDisponibles[5] = 26;
	                            }
	                        }
	                    }
	                }
	            }
	        }
	    }
	}

	// Cascos / Gorros

	var totalCascosGorrosDisponibles = 2;
	cascosGorrosDisponibles[0] = -1;
	cascosGorrosDisponibles[1] = -1;

	if (nivelPJ >= 6) {
	    cascosGorrosDisponibles[0] = 93;
	    if (nivelPJ >= 20) {
	        cascosGorrosDisponibles[1] = 96;
	    }
	}

	// Escudos

	var totalEscudosDisponibles = 2;
	escudosDisponibles[0] = 98;
	escudosDisponibles[1] = -1;

	if (nivelPJ >= 22) {
	    escudosDisponibles[1] = 99;
	}

	// Elijo el equipo

	var claseIA = argument0.clase;
	var eqRopaIA = argument0.eqRopa;
	var eqArmaIA = argument0.eqArma;
	var eqFlechasIA = argument0.eqFlechas;
	var eqCascoGorroIA = argument0.eqCascoGorro;
	var eqEscudoIA = argument0.eqEscudo;

	// eqRopa

	if (!esMapaPolo()) {
		
		if (rangoFaccion > 0) {
			eqRopaIA = elegirItemFaccionIA(); 
		} else {

			do {

			    switch (claseIA) {
			        case 0:
			            var rand = floor(random(7));
			            switch (rand) {
			                case 0:
			                    eqRopaIA = 33;
			                    break;
			                case 1:
			                    eqRopaIA = 35;
			                    break;
			                case 2:
			                    eqRopaIA = 36;
			                    break;
			                case 3:
			                    eqRopaIA = 37;
			                    break;
			                case 4:
			                    eqRopaIA = 40;
			                    break;
			                case 5:
			                    if (genero == 0) {
			                        eqRopaIA = 72;
			                    } else {
			                        eqRopaIA = 73;
			                    }
			                    break;
			                case 6:
			                    if (genero == 0) {
			                        eqRopaIA = 75;
			                    } else {
			                        eqRopaIA = 76;
			                    }
			                    break;
			            }
			            break;
			        case 1:
			            var rand = floor(random(3));
			            switch (rand) {
			                case 0:
			                    if (nroRaza == 0) {
			                        var rand2 = floor(random(5));
			                        switch (rand2) {
			                            case 0:
			                                eqRopaIA = 33;
			                                break;
			                            case 1:
			                                eqRopaIA = 35;
			                                break;
			                            case 2:
			                                eqRopaIA = 36;
			                                break;
			                            case 3:
			                                eqRopaIA = 40;
			                                break;
			                            case 4:
			                                eqRopaIA = 39;
			                                break;
			                        }
			                    } else {
			                        eqRopaIA = 34;
			                    }
			                    break;
			                case 1:
			                    if (nroRaza == 0) {
			                        eqRopaIA = 37;
			                    } else {
			                        eqRopaIA = 38;
			                    }
			                    break;
			                case 2:
			                    if (nroRaza == 0) {
			                        eqRopaIA = 43;
			                    } else {
			                        eqRopaIA = 44;
			                    }
			                    break;
			            }
			            break;
			        case 2:
			            var rand = floor(random(4));
			            switch (rand) {
			                case 0:
			                    eqRopaIA = 39;
			                    break;
			                case 1:
			                    if (genero == 0) {
			                        eqRopaIA = 72;
			                    } else {
			                        eqRopaIA = 73;
			                    }
			                    break;
			                case 2:
			                    if (genero == 0) {
			                        eqRopaIA = 75;
			                    } else {
			                        eqRopaIA = 76;
			                    }
			                    break;
			                case 3:
			                    eqRopaIA = 83;
			                    break;
			            }
			            break;
			    }
    
			    var validoRopa = false;
    
			    for (var i = 0; i < totalRopasDisponibles; i++) {
			        if (ropasDisponibles[i] != -1) {
			            if (eqRopaIA == ropasDisponibles[i]) {
			                validoRopa = true;
			                break;
			            }
			        } else {
			            break;
			        }
			    }

			} until (validoRopa);
		
		}
	
	} else {
		if (nroRaza == 0 || nroRaza == 1 || nroRaza == 2) {
			if (genero == 0)
				eqRopaIA = 68
			else 
				eqRopaIA = 69
		} else {
		    eqRopaIA = 70
		}
	}

	// eqArma

	do {

	    switch (claseIA) {
	        case 0:
	            eqArmaIA = floor(random_range(8, 15));
	            if (eqArmaIA == 7) {
	                eqArmaIA = 8;
	            }
	            break;
	        case 1:
	            eqArmaIA = floor(random_range(18, 20));
	            if (eqArmaIA == 17) {
	                eqArmaIA = 18;
	            }
	            break;
	        case 2:
	            eqArmaIA = floor(random_range(21, 27));
	            if (eqArmaIA == 20) {
	                eqArmaIA = 21;
	            }
	            break;
	    }
    
	    var validoArma = false;
    
	    for (var i = 0; i < totalArmasDisponibles; i++) {
	        if (armasDisponibles[i] != -1) {
	            if (eqArmaIA == armasDisponibles[i]) {
	                validoArma = true;
	                break;
	            }
	        } else {
	            break;
	        }
	    }

	} until (validoArma);

	// eqFlechas

	if (claseIA == 2) {
	    var randFlechas = choose(29, 30);
	    eqFlechasIA = randFlechas;
	}

	// eqCascoGorro

	do {

	    switch (claseIA) {
	        case 0:
	            if (random(10) > 5) {
	                eqCascoGorroIA = 93;
	            } else {
	                eqCascoGorroIA = -1;
	            }
	            break;
	        case 1:
	            if (random(10) > 5) {
	                eqCascoGorroIA = 96;
	            } else {
	                eqCascoGorroIA = -1;
	            }
	            break;
	        case 2:
	            if (random(10) > 5) {
	                eqCascoGorroIA = 93;
	            } else {
	                eqCascoGorroIA = -1;
	            }
	            break;
	    }
    
	    var validoCascoGorro = false;
    
	    if (eqCascoGorroIA != -1) {
	        for (var i = 0; i < totalCascosGorrosDisponibles; i++) {
	            if (eqCascoGorroIA == cascosGorrosDisponibles[i]) {
	                validoCascoGorro = true;
	                break;
	            }
	        }
	    } else {
	        validoCascoGorro = true;
	    }

	} until (validoCascoGorro);

	// eqEscudos

	if (claseIA == 0) {

	    do {
    
	        if (random(10) > 5) {
	            if (random(10) > 5) {
	                eqEscudoIA = 98;
	            } else {
	                eqEscudoIA = 99;
	            }
	        } else {
	            eqEscudoIA = -1;
	        }
    
	        var validoEscudo = false;
        
	        if (eqEscudoIA != -1) {
	            for (var i = 0; i < totalEscudosDisponibles; i++) {
	                if (escudosDisponibles[i] != -1) {
	                    if (eqEscudoIA == escudosDisponibles[i]) {
	                        validoEscudo = true;
	                        break;
	                    }
	                } else {
	                    break;
	                }
	            }
	        } else {
	            validoEscudo = true;
	        }
    
	    } until (validoEscudo);

	}

	// Asigno el equipo

	vecItems[0] = eqArmaIA;
	vecItems[1] = eqRopaIA;
	vecItems[2] = eqCascoGorroIA;
	vecItems[3] = eqEscudoIA;
	vecItems[4] = eqFlechasIA;
	vecItems[5] = 141;
	vecItems[6] = 142;

	return vecItems;



}
