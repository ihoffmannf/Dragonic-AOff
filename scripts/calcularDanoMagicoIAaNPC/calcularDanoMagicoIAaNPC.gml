/// @description  calcularDanoMagicoIAaNPC(dañoBaseHechizo, idIA)
/// @param dañoBaseHechizo
/// @param  idIA
function calcularDanoMagicoIAaNPC(argument0, argument1) {

	var danoTotal = argument0;
	var modBaculo = 1;
    
	// Báculo

	if (argument1.eqArma == 18) {
	    modBaculo = 1.058;
	} else if (argument1.eqArma == 19) {
	    modBaculo = 1.085;
	}
        
	danoTotal = danoTotal * 2;
	danoTotal = floor(danoTotal * modBaculo);

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
