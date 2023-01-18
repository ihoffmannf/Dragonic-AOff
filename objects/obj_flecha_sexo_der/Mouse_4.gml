/// @description  Estado inicial

if (room == rm_crearPJ) {
    if (obj_flecha_sexo_izq.seleccionado == 0) {
        obj_flecha_sexo_izq.seleccionado = 1;
    } else {
        obj_flecha_sexo_izq.seleccionado = 0;
    }
	with (obj_cabezaPJ) {
		refrescarCabezas();
	}
}

