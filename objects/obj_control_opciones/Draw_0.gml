/// @description  Dibuja

if (room == rm_opciones) {

    if (dificultad == 0) {
        draw_sprite_ext(spr_tick, 0, 234, 186, 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_tick, 0, 474, 186, 2, 2, 0, c_white, 1);    
    }
    
    if (simularHorarios) {
        draw_sprite_ext(spr_tick, 0, 234, 309, 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_tick, 0, 493, 309, 2, 2, 0, c_white, 1);    
    }
    
}

