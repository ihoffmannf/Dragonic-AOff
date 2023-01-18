/// @description  IAsSiguenAlOtroMapa()
function IAsSiguenAlOtroMapa() {

	with (obj_persona) {

	    sigue = true;
    
	    if (!obj_pj.pk && !pk) { // Si los dos somos ciudadanos
    
	        with (obj_persona) {
	            if (id != other.id && pk && inmovilizado && distance_to_object(other) <= 250) {
	                other.sigue = false;
	                break;
	            }
	        }
            
	    }

	}



}
