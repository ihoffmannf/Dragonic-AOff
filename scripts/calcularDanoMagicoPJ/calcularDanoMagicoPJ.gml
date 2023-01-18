/// @description  calcularDanoMagicoPJ(dañoBaseHechizo, esPersonaElObjetivo?, idNPC(Si existe))
/// @param dañoBaseHechizo
/// @param  esPersonaElObjetivo?
/// @param  idNPC(Si existe
function calcularDanoMagicoPJ(argument0, argument1, argument2) {

	var danoTotal = argument0;
	var modBaculo = 1;

	if (obj_pj.armaActual != -1) {
	    if (obj_pj.armaActual >= 18 && obj_pj.armaActual <= 20) {
    
	        // Báculo
        
	        switch (obj_pj.armaActual) {
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

	if (obj_pj.laudEquipado) {
	    modBaculo = 1.2;
	}
        
	danoTotal = danoTotal * 2.30;
	danoTotal = floor(danoTotal * modBaculo);

	if (argument1) {
	    if (argument2.eqCascoGorro == 96) {
	        danoTotal = floor(danoTotal * 0.9);
	    }
	}

	if (danoTotal < 1) {
	    danoTotal = 1;
	}

	return danoTotal;



}
