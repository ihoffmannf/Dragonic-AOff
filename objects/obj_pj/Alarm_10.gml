/// @description  Checkea si el jugador quedo encerrado al morir

if (muerto) {

        encerrado = false;

        var bloqueoDer = false;
        var bloqueoIzq = false;
        var bloqueoAbajo = false;
        var bloqueoArriba = false;

        if (!navega) {
            bloqueoDer = place_meeting(x + 32, y, obj_bloqueo_agua);
            bloqueoIzq = place_meeting(x - 32, y, obj_bloqueo_agua);
            bloqueoAbajo = place_meeting(x, y + 32, obj_bloqueo_agua);
            bloqueoArriba = place_meeting(x, y - 32, obj_bloqueo_agua);
        } else {
            bloqueoDer = place_meeting(x + 32, y, obj_bloqueo_tierra);
            bloqueoIzq = place_meeting(x - 32, y, obj_bloqueo_tierra);
            bloqueoAbajo = place_meeting(x, y + 32, obj_bloqueo_tierra);
            bloqueoArriba = place_meeting(x, y - 32, obj_bloqueo_tierra);
        }
        
        if (
        (place_meeting(x + 32, y, obj_bloque_basic) ||
        place_meeting(x + 32, y, obj_npc_basic) || 
        bloqueoDer) &&
        (place_meeting(x - 32, y, obj_bloque_basic) || 
        place_meeting(x - 32, y, obj_npc_basic) || 
        bloqueoIzq) &&
        (place_meeting(x, y + 32, obj_bloque_basic) || 
        place_meeting(x, y + 32, obj_npc_basic) || 
        bloqueoAbajo) &&
        (place_meeting(x, y - 32, obj_bloque_basic) || 
        place_meeting(x, y - 32, obj_npc_basic) ||
        bloqueoArriba)
        ) {
            encerrado = true;
        }
        
        if (encerrado) {
            alarm[9] = 180;
        }
        
}

