/// @description  calcularDanoMagicoIAaIA(dañoBaseHechizo, objetivo)
/// @param dañoBaseHechizo
/// @param  objetivo
function calcularDanoMagicoIAaIA(argument0, argument1) {

	var danoTotal = argument0;
	var modBaculo = 1;

	if (eqArma != -1) {
	    if ((eqArma >= 18 && eqArma <= 20) || eqArma == 227) {
    
	        // Báculo
        
	        switch (eqArma) {
	            case 18:
	                modBaculo = 1.058;
	                break;
	            case 19:
	                modBaculo = 1.085;
	                break;
	            case 20:
	                modBaculo = 1.15;
	                break;
	            case 227:
	                modBaculo = 1.15;
	                break;
	        }
    
	    }
    
	}
        
	danoTotal = danoTotal * 2;
	danoTotal = floor(danoTotal * modBaculo);

	if (argument1.eqCascoGorro == 96) {
	    danoTotal = floor(danoTotal * 0.9);
	}

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
