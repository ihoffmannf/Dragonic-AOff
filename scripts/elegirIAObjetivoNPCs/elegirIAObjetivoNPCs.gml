/// @description  elegirIAObjetivoNPCs()
function elegirIAObjetivoNPCs() {

	distanciaMinima = room_width * room_height;
	IDIAdistanciaMinima = -1;

	with (obj_persona) {
	    var nuevaDistancia = distance_to_object(other);
	    if (nuevaDistancia < other.distanciaMinima) {
	        other.IDIAdistanciaMinima = id;
	        other.distanciaMinima = nuevaDistancia;
	    }
	}

	return IDIAdistanciaMinima;



}
