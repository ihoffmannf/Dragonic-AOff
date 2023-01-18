/// @description  Gráfico

if (instance_exists(padre)) {

    if (!padre.muerto && !padre.enBarca) {
        visible = true;
    } else {
        visible = false;
    }
    
    if (visible) {
        
        depth = padre.depth - 1;
        visible = true;
        
        if (padre.nroRaza != 3 && padre.nroRaza != 4) {
            x = padre.x;
            y = padre.y;
        } else {
            x = padre.x;
            y = padre.y + 4;
        }
    
        switch (padre.eqArma) {
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
            case 18:
                sprite_index = spr_arma_16;
                break;
            case 19:
                sprite_index = spr_arma_17;
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
        }
        
    }

} else {
    instance_destroy();
}

