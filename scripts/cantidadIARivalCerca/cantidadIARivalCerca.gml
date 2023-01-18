/// @description  cantidadIARivalCerca()
function cantidadIARivalCerca() {

	cantidadIACerca = 0;

	with (obj_persona) {
	    if (pk || other.pk) {
	        if (distance_to_object(other) <= 250) {
	            other.cantidadIACerca++;        
	        }
	    }
	}

	return cantidadIACerca;



}
