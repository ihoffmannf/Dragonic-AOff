/// @description  calcularDanoFisicoNPCaIA(dañoBaseNPC, idIA)
/// @param dañoBaseNPC
/// @param  idIA
function calcularDanoFisicoNPCaIA(argument0, argument1) {

	var danoTotal = argument0;
	var defensa = 0; 

	if (argument1.eqRopa == 33 || argument1.eqRopa == 34 || argument1.eqRopa == 35 || argument1.eqRopa == 36 || argument1.eqRopa == 40) {
	    defensa += floor(random_range(5, 15));
	} else if (argument1.eqRopa == 72 || argument1.eqRopa == 73) {
	    defensa += floor(random_range(10, 15));
	} else if (argument1.eqRopa == 75 || argument1.eqRopa == 76) {
	    defensa += floor(random_range(12, 17));
	} else if (argument1.eqRopa == 37 || argument1.eqRopa == 38) {
	    defensa += floor(random_range(15, 20));
	} else if (argument1.eqRopa == 43 || argument1.eqRopa == 44) {
	    defensa += floor(random_range(20, 25));
	} else if (argument1.eqRopa == 83) {
	    defensa += floor(random_range(10, 20));
	} else if (argument1.eqRopa == 39) {
	    defensa += floor(random_range(5, 5));
	} else if (argument1.eqRopa == 68 || argument1.eqRopa == 69 || argument1.eqRopa == 70) {
	    defensa += floor(random_range(15, 27));
	}

	if (argument1.eqCascoGorro == 93) {
	    defensa += floor(random_range(3, 8) * 0.85);
	}

	if (argument1.eqEscudo == 98) {
	    defensa += floor(random_range(1, 1) * 1.5);
	} else if (argument1.eqEscudo == 99) {
	    defensa += floor(random_range(1, 4) * 1.5);
	}

	danoTotal = floor((danoTotal - defensa) * 0.95);

	if (danoTotal <= 0) {
	    danoTotal = 1;
	}

	return danoTotal;



}
