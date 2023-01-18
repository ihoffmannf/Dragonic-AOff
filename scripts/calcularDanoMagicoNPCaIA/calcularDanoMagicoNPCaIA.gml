/// @description  calcularDanoMagicoNPCaIA(dañoBaseHechizo, idIA)
/// @param dañoBaseHechizo
/// @param  idIA
function calcularDanoMagicoNPCaIA(argument0, argument1) {

	var danoTotal = argument0;
	var modGorro = 1;
    
	// Báculo

	if (argument1.eqCascoGorro == 96) {
	    modGorro = 0.85;
	}

	danoTotal = floor(danoTotal * modGorro);

	var RM = 0;

	if (obj_pj.skills[17] >= 0 && obj_pj.skills[17] <= 10) {
	    RM = 1.1;
	} else if (obj_pj.skills[17] >= 11 && obj_pj.skills[17] <= 20) {
	    RM = 1.075;
	}  else if (obj_pj.skills[17] >= 21 && obj_pj.skills[17] <= 30) {
	    RM = 1.05;
	}  else if (obj_pj.skills[17] >= 31 && obj_pj.skills[17] <= 40) {
	    RM = 1.025;
	}  else if (obj_pj.skills[17] >= 41 && obj_pj.skills[17] <= 50) {
	    RM = 1;
	}  else if (obj_pj.skills[17] >= 51 && obj_pj.skills[17] <= 60) {
	    RM = 0.975;
	}  else if (obj_pj.skills[17] >= 61 && obj_pj.skills[17] <= 70) {
	    RM = 0.95;
	}  else if (obj_pj.skills[17] >= 71 && obj_pj.skills[17] <= 80) {
	    RM = 0.925;
	}  else if (obj_pj.skills[17] >= 81 && obj_pj.skills[17] <= 90) {
	    RM = 0.915;
	}  else if (obj_pj.skills[17] >= 91 && obj_pj.skills[17] <= 100) {
	    RM = 0.9;
	}

	danoTotal = round(danoTotal * RM * 1.35);

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
