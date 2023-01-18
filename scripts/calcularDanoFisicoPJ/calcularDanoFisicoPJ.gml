/// @description  calcularDanoFisicoPJ(dañoBasePJ, esPersonaElObjetivo?)
/// @param dañoBasePJ
/// @param  esPersonaElObjetivo?
function calcularDanoFisicoPJ(argument0, argument1) {

	var danoTotal = 1;
	var danoArma = 1;

	if (obj_pj.armaActual != -1) {
	    if (obj_pj.armaActual >= 0 && obj_pj.armaActual <= 17) {
    
	        // Arma cuerpo a cuerpo
        
	        switch (obj_pj.armaActual) {
	            case 0:
	                danoArma = floor(random_range(2,3));
	                break;
	            case 1:
	                danoArma = floor(random_range(2,4));
	                break;
	            case 2:
	                danoArma = floor(random_range(5,6));
	                break;
	            case 3:
	                danoArma = floor(random_range(4,7));
	                break;
	            case 4:
	                danoArma = floor(random_range(5,7));
	                break;
	            case 5:
	                danoArma = floor(random_range(6,7));
	                break;
	            case 6:
	                danoArma = floor(random_range(6,8));
	                break;
	            case 7:
	                danoArma = floor(random_range(4,4));
	                break;
	            case 8:
	                danoArma = floor(random_range(6,7));
	                break;
	            case 9:
	                danoArma = floor(random_range(6,8));
	                break;
	            case 10:
	                danoArma = floor(random_range(9,10));
	                break;
	            case 11:
	                danoArma = floor(random_range(8,10));
	                break;
	            case 12:
	                danoArma = floor(random_range(10,11));
	                break;
	            case 13:
	                danoArma = floor(random_range(11,13));
	                break;
	            case 14:
	                danoArma = floor(random_range(10,12));
	                break;
	            case 15:
	                danoArma = floor(random_range(13,15));
	                break;
	            case 16:
	                danoArma = floor(random_range(14,16));
	                break;
	            case 17:
	                danoArma = floor(random_range(16,18));
	                break;
	        }
        
	        danoTotal = floor(danoArma * argument0 * 1.15);
	        danoTotal = floor(danoTotal * obj_pj.modDanoCuerpoACuerpo);
        
	    } else if (obj_pj.flechaActual != -1) {
    
	        // Arco
        
	        modFlecha = 1;
        
	        switch (obj_pj.armaActual) {
	            case 21:
	                danoArma = floor(random_range(5.5,7));
	                break;
	            case 22:
	                danoArma = floor(random_range(7,9));
	                break;
	            case 23:
	                danoArma = floor(random_range(9,11));
	                break;
	            case 24:
	                danoArma = floor(random_range(13,15));
	                break;
	            case 25:
	                danoArma = floor(random_range(16,16));
	                break;
	            case 26:
	                danoArma = floor(random_range(15,19));
	                break;
	            case 27:
	                danoArma = floor(random_range(16,19));
	                break;
	        }
        
	        switch (obj_pj.flechaActual) {
	            case 29:
	                modFlecha = random_range(4.5,5) * 1.20;
	                break;
	            case 30:
	                modFlecha = random_range(5,5.5) * 1.20;
	                break;
	            case 31:
	                modFlecha = random_range(5.5,6) * 1.20;
	                break;
	            case 32:
	                modFlecha = random_range(6,6) * 1.20;
	                break;
	        }
        
	        danoTotal = floor(danoArma * modFlecha * argument0 / 7);
	        danoTotal = floor(danoTotal * obj_pj.modDanoArco);
        
	    }
    
	} else {
	    danoArma = floor(random_range(2,3));
	    danoTotal = floor(danoArma * argument0);
	    danoTotal = floor(danoTotal * obj_pj.modDanoCuerpoACuerpo);
	}

	danoTotal = floor(danoTotal * (obtenerAtributoFuerzaPJ() / 18));

	if (argument1) {

	    var defensa = 0;

	    if (eqRopa == 33 || eqRopa == 34 || eqRopa == 35 || eqRopa == 36 || eqRopa == 40) {
	        defensa += floor(random_range(5, 15));
	    } else if (eqRopa == 72 || eqRopa == 73) {
	        defensa += floor(random_range(10, 15));
	    } else if (eqRopa == 75 || eqRopa == 76) {
	        defensa += floor(random_range(12, 17));
	    } else if (eqRopa == 37 || eqRopa == 38) {
	        defensa += floor(random_range(15, 20));
	    } else if (eqRopa == 43 || eqRopa == 44) {
	        defensa += floor(random_range(20, 25));
	    } else if (eqRopa == 83) {
	        defensa += floor(random_range(10, 20));
	    } else if (eqRopa == 39) {
	        defensa += floor(random_range(5, 5));
	    } else if (eqRopa == 68 || eqRopa == 69 || eqRopa == 70) {
	        defensa += floor(random_range(15, 27));
	    }
    
	    if (eqCascoGorro == 93) {
	        defensa += floor(random_range(3, 8) * 0.85);
	    }
    
	    if (eqEscudo == 98) {
	        defensa += floor(random_range(1, 1) * 1.5);
	    } else if (eqEscudo == 99) {
	        defensa += floor(random_range(1, 4) * 1.5);
	    }
    
	    danoTotal = floor((danoTotal - defensa) * 0.95);
    
	}

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
