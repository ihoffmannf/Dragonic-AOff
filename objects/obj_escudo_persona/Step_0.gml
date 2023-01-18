/// @description  Gráfico

if (instance_exists(padre)) {

    if (!padre.muerto && padre.eqEscudo != -1 && !padre.enBarca) {
        visible = true;
    } else {
        visible = false;
    }
    
    if (visible) {
        
        if (padre.direccion == 0 || padre.direccion == 2) {
            depth = padre.depth - 2;
        } else {
            depth = padre.depth - 1;
        }
            
        x = padre.x;
        y = padre.y;
        
        if (padre.eqEscudo == 98) {
            sprite_index = spr_escudo_1;
        } else {
            sprite_index = spr_escudo_2;
        }
        
    }

} else {
    instance_destroy();
}

