/// @description  Estado inicial

if (room == rm_crearPJ) {
    if (seleccionado == 0) {
        seleccionado = 1;
    } else {
        seleccionado = 0;
    }
	with (obj_cabezaPJ) {
		refrescarCabezas();
	}
}

