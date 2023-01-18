/// @description  Movimiento

if (!puedeMoverse || siguiendo) {
    puedeMoverse = true;
    siguiendo = false;
    if (!inmovilizado && !paralizado) {
        switch (direccion) {
            case 0:
                if (
                !place_meeting(x, y + 32, obj_bloque_basic) &&
                !place_meeting(x, y + 32, obj_bloqueo_tierra) &&
                !place_meeting(x, y + 32, obj_npc_basic) &&
                !place_meeting(x, y + 32, obj_telep) &&
                !place_meeting(x, y + 32, obj_pj) 
                ) {
                    reproducirSonido(snd_barca, false, false);
                }
                break;
            case 1:
                if (
                !place_meeting(x, y - 32, obj_bloque_basic) &&
                !place_meeting(x, y - 32, obj_bloqueo_tierra) &&
                !place_meeting(x, y - 32, obj_npc_basic) &&
                !place_meeting(x, y - 32, obj_telep) &&
                !place_meeting(x, y - 32, obj_pj) 
                ) {
                    reproducirSonido(snd_barca, false, false);
                }
                break;
            case 2:
                if (
                !place_meeting(x - 32, y, obj_bloque_basic) &&
                !place_meeting(x - 32, y, obj_bloqueo_tierra) &&
                !place_meeting(x - 32, y, obj_npc_basic) &&
                !place_meeting(x - 32, y, obj_telep) &&
                !place_meeting(x - 32, y, obj_pj) 
                ) {
                    reproducirSonido(snd_barca, false, false);
                }
                break;
            case 3:
                if (
                !place_meeting(x + 32, y, obj_bloque_basic) &&
                !place_meeting(x + 32, y, obj_bloqueo_tierra) &&
                !place_meeting(x + 32, y, obj_npc_basic) &&
                !place_meeting(x + 32, y, obj_telep) &&
                !place_meeting(x + 32, y, obj_pj) 
                ) {
                    reproducirSonido(snd_barca, false, false);
                }
                break;
        }
    }
}


