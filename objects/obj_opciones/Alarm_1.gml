/// @description  Si el PJ pesca crea peces cerca

if (noEstaEnPausa() && esMapaJugable()) {

    if (obj_pj.trabajaPesca && opcionPeces && opcionAnimacionAgua && instance_number(obj_pez) < 20) {
        repeat(3) {
            var idPez = instance_create(obj_pj.x, obj_pj.y, obj_pez);
            idPez.esPescado = true;
            idPez.alarm[7] = 1;
            with (idPez) {
                path_start(path_peces, 0, 2, false);
                path_position = random(1);
                path_orientation = random(360);
            }
        }
    }

}

alarm[1] = 240;

