/// @description  Cambia la raza

if (room == rm_crearPJ) {
    if (obj_flecha_raza_izq.seleccionado < 4) {
        obj_flecha_raza_izq.seleccionado++;
    } else {
        obj_flecha_raza_izq.seleccionado = 0;
    }
	with (obj_cabezaPJ) {
		refrescarCabezas();
	}
}

