/// @description  Gráfico

if (obj_pj.invisible) {
    image_alpha = 0.5;
} else {
    image_alpha = 1;
}

if (obj_pj.escudoActual != -1 && !obj_pj.muerto && !obj_pj.navega) {

    if (obj_pj.direccion == 0 || obj_pj.direccion == 2) {
        depth = obj_pj.depth - 2;
    } else {
        depth = obj_pj.depth - 1;
    }
    
    visible = true;
    
    x = obj_pj.x;
    y = obj_pj.y;

    switch (obj_pj.escudoActual) {
        case 98:
            sprite_index = spr_escudo_1;
            break;
        case 99:
            sprite_index = spr_escudo_2;
            break;
        case 100:
            sprite_index = spr_escudo_3;
            break;
    }
    
} else {
    visible = false;
}

