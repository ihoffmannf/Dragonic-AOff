/// @description  Activo la alarm[3] cuando el PJ esta quieto

if (obj_pj.puedeMoverse) {
    obj_pj.inmovilizado = true;
    alarm[3] = 1;
    alarm[4] = -1;
} else {
    alarm[4] = 1;
}

