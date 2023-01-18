/// @description  calcularDanoArcoIAaNPC(dañoBasePJ, idIA)
/// @param dañoBasePJ
/// @param  idIA
function calcularDanoArcoIAaNPC(argument0, argument1) {

	var danoTotal = argument0;
	var danoArma = 1;
	var modFlecha = 1;

	var modFlecha = 0;
    
	switch (argument1.eqArma) {
	    case 21:
	        danoArma = floor(random_range(4, 5));
	        break;
	    case 22:
	        danoArma = floor(random_range(6, 7));
	        break;
	    case 23:
	        danoArma = floor(random_range(9, 11));
	        break;
	    case 24:
	        danoArma = floor(random_range(13, 15));
	        break;
	    case 25:
	        danoArma = floor(random_range(16, 16));
	        break;
	    case 26:
	        danoArma = floor(random_range(15, 17));
	        break;
	}

	switch (argument1.eqFlechas) {
	    case 29:
	        modFlecha = random_range(4, 5) / 4.5;
	        break;
	    case 30:
	        modFlecha = random_range(5, 6) / 4.5;
	        break;
	}
        
	danoTotal = floor(danoTotal * danoArma * modFlecha);

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
