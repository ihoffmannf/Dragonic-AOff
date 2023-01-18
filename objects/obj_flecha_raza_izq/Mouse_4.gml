/// @description  Cambia la raza

if (room == rm_crearPJ) {
    if (seleccionado > 0) {
        seleccionado--;
    } else {
        seleccionado = 4;
    }
	with (obj_cabezaPJ) {
		refrescarCabezas();
	}
}

