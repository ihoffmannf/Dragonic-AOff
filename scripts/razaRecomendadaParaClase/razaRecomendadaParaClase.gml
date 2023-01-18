/// @description  razaRecomendadaParaClase(raza)
/// @param raza
function razaRecomendadaParaClase(argument0) {
	
	/*
	clase[0] = "Arquero";
	clase[1] = "Asesino";
	clase[2] = "Bardo";
	clase[3] = "Cazador";
	clase[4] = "Clérigo";
	clase[5] = "Druida";
	clase[6] = "Guerrero";
	clase[7] = "Mago";
	clase[8] = "Paladín";
	*/
	
	var claseSeleccionada = obj_flecha_clase_izq.seleccionado
	
	switch (argument0) {
		case 0:
			// Humano
			if (claseSeleccionada == 3 || claseSeleccionada == 4 || claseSeleccionada == 7 || claseSeleccionada == 8)
				return true
			break
		case 1:
			// Elfo
			if (claseSeleccionada == 0 || claseSeleccionada == 1 || claseSeleccionada == 2 || claseSeleccionada == 3 || claseSeleccionada == 5 || claseSeleccionada == 7 || claseSeleccionada == 8)
				return true
			break
		case 2:
			// Elfo Oscuro
			if (claseSeleccionada == 1 || claseSeleccionada == 2 || claseSeleccionada == 4 || claseSeleccionada == 7 || claseSeleccionada == 8)
				return true
			break
		case 3:
			// Enano
			if (claseSeleccionada == 6)
				return true
			break
		case 4:
			// Gnomo
			if (claseSeleccionada == 5 || claseSeleccionada == 7)
				return true
			break
		default:
			return false
	}
	
	return false

}
