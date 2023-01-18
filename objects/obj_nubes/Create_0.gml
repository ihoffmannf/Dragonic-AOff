/// @description  Creo el sistema, el tipo, el emisor y la alarm[0]

// nroNubes

nroNubes = 1;

// Creo el sistema
sistemaNubes = part_system_create();
part_system_depth(sistemaNubes, -1500);

// Creo el tipo
tipoNubes = part_type_create();
part_type_alpha3(tipoNubes, 0, 1, 0);
part_type_color1(tipoNubes, c_gray);

tiempo = 120;

part_type_life(tipoNubes, tiempo * 2, tiempo * 2);
part_type_scale(tipoNubes, 5, 2);
part_type_shape(tipoNubes, pt_shape_cloud);
part_type_size(tipoNubes, 1, 1, 0, 0);
part_type_speed(tipoNubes, 1, 2, 0, 0);

// Creo el emisor
emisorNubes = part_emitter_create(sistemaNubes);
part_emitter_region(sistemaNubes, emisorNubes, __view_get( e__VW.XView, 0 ) - __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(sistemaNubes, emisorNubes, tipoNubes, nroNubes);

// Alarma
alarm[0] = tiempo;

