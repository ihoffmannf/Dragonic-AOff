/// @description  posicionLejosDePJ(x, y)
/// @param x
/// @param  y
function posicionLejosDePJ(argument0, argument1) {

	with (obj_pj) {
	    if (distance_to_point(argument0, argument1) > 250) {
	        return true;   
	    } else {
	        if (random(10) > 9) {
	            return true; // Método rápido para evitar bucles infinitos en mapas sin espacio
	        } else {
	            return false;
	        }
	    }
	}




}
