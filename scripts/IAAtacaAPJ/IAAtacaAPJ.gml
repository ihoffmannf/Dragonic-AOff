/// @description  IAAtacaAPJ()
function IAAtacaAPJ() {

	cantIAEnView = 1;

	with (obj_persona) {
	    if (other.id != id) {
	        if ((pk || other.pk) && distance_to_object(other) <= 250) {
	            other.cantIAEnView++;
	        }
	    }
	}

	if (cantIAEnView > 1) {
	    return (random(cantIAEnView) > cantIAEnView - 1);
	} else {
	    return true;
	}

}
