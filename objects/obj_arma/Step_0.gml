/// @description  Gráfico

if (obj_pj.invisible) {
    image_alpha = 0.5;
} else {
    image_alpha = 1;
}


if (obj_pj.armaActual != -1 && !obj_pj.muerto && !obj_pj.navega) {
    
    visible = true;
    
    if (obj_pj.nroRaza != 3 && obj_pj.nroRaza != 4) {
        x = obj_pj.x;
        y = obj_pj.y;
    } else {
        x = obj_pj.x;
        y = obj_pj.y + 4;
    }

    switch (obj_pj.armaActual) {
        case 0:
            sprite_index = spr_arma_1;
            break;
        case 1:
            sprite_index = spr_arma_1;
            break;
        case 2:
            sprite_index = spr_arma_2;
            break;
        case 3:
            sprite_index = spr_arma_3;
            break;
        case 4:
            sprite_index = spr_arma_3;
            break;
        case 5:
            sprite_index = spr_arma_4;
            break;
        case 6:
            sprite_index = spr_arma_5;
            break;
        case 7:
            sprite_index = spr_arma_6;
            break;
        case 8:
            sprite_index = spr_arma_6;
            break;
        case 9:
            sprite_index = spr_arma_7;
            break;
        case 10:
            sprite_index = spr_arma_8;
            break;
        case 11:
            sprite_index = spr_arma_9;
            break;
        case 12:
            sprite_index = spr_arma_10;
            break;
        case 13:
            sprite_index = spr_arma_11;
            break;
        case 14:
            sprite_index = spr_arma_12;
            break;
        case 15:
            sprite_index = spr_arma_13;
            break;
        case 16:
            sprite_index = spr_arma_14;
            break;
        case 17:
            sprite_index = spr_arma_15;
            break;
        case 18:
            sprite_index = spr_arma_16;
            break;
        case 19:
            sprite_index = spr_arma_17;
            break;
        case 20:
            sprite_index = spr_arma_18;
            break;
        case 21:
            sprite_index = spr_arma_19;
            break;
        case 22:
            sprite_index = spr_arma_20;
            break;
        case 23:
            sprite_index = spr_arma_21;
            break;
        case 24:
            sprite_index = spr_arma_22;
            break;
        case 25:
            sprite_index = spr_arma_23;
            break;
        case 26:
            sprite_index = spr_arma_24;
            break;
        case 27:
            sprite_index = spr_arma_25;
            break;
        case 227:
            sprite_index = spr_arma_26;
            break;
    }
    
} else {
    visible = false;
}

