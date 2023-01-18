/// @description  hayEnemigosCerca()
function hayEnemigosCerca() {

	enemigosCerca = false;

	if (pk) {

	    with (obj_persona) {
	        if (!muerto & !pk && distance_to_object(other) <= 250) {
	            other.enemigosCerca = true;
	            break;
	        }
	    }

	} else {

	    with (obj_persona) {
	        if (!muerto && pk && distance_to_object(other) <= 250) {
	            other.enemigosCerca = true;
	            break;
	        }
	    }
    
	}
    
	return enemigosCerca;



}
