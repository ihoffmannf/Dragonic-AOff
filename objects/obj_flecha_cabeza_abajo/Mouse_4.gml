/// @description  Cambia la cabeza

if (room == rm_crearPJ) {
    if (obj_cabezaPJ.seleccionado > 0) {
        obj_cabezaPJ.seleccionado--;
    } else {
        obj_cabezaPJ.seleccionado = obj_cabezaPJ.limiteCabezas - 1;
    }
}