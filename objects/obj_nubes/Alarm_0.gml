/// @description  Creo las particulas y reseteo la alarm[0]

// Emisor

if (random(10) > 5) {
    part_type_direction(tipoNubes, 180, 180, 0, 0);
} else {
    part_type_direction(tipoNubes, 0, 0, 0, 0);
}

part_emitter_region(sistemaNubes, emisorNubes, __view_get( e__VW.XView, 0 ) - __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), ps_shape_rectangle, ps_distr_linear);

if (esMapaDescubierto()) {
    part_emitter_burst(sistemaNubes, emisorNubes, tipoNubes, nroNubes);
}

// Alarma
alarm[1] = tiempo * random_range(0.33, 0.5);

