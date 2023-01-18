/// @description  Gráfico

if (
!puedeMoverse &&
!(keyboard_check(vk_up) && keyboard_check(vk_down)) &&
!(keyboard_check(vk_left) && keyboard_check(vk_right)) &&
!(keyboard_check(vk_up) && keyboard_check(vk_right)) &&
!(keyboard_check(vk_up) && keyboard_check(vk_left)) &&
!(keyboard_check(vk_down) && keyboard_check(vk_right)) &&
!(keyboard_check(vk_down) && keyboard_check(vk_left))
) {

    image_index = index[direccion, frame];
    
    if (frame < 5) {
        frame++;
        if (frame == 5) {
            frame = 0
        }
    }
    
    if (armaActual != -1) {
    
        obj_arma.image_index = obj_arma.index[direccion, obj_arma.frame];
        
        if (obj_arma.frame < 5) {
            obj_arma.frame++;
            if (obj_arma.frame == 5) {
                obj_arma.frame = 0
            }
        }
        
        /*
        
        if (obj_arma.frame < 3) {
            obj_arma.frame++;
        } else {
            obj_arma.frame = 0;
        }
        
        */
        
    }
    
    if (escudoActual != -1) {
    
        obj_escudo.image_index = obj_escudo.index[direccion, obj_escudo.frame];
        
        if (obj_escudo.frame < 5) {
            obj_escudo.frame++;
            if (obj_escudo.frame == 5) {
                obj_escudo.frame = 0
            }
        }
        
        /*
        
        if (obj_escudo.frame < 3) {
            obj_escudo.frame++;
        } else {
            obj_escudo.frame = 0;
        }
        
        */
        
    }
    
} else {

    image_index = index[direccion, 0];
    
    if (armaActual != -1) {
        obj_arma.image_index = obj_arma.index[direccion, 0];
    }
    
    if (escudoActual != -1) {
        obj_escudo.image_index = obj_escudo.index[direccion, 0];
    }
    
}

// alarm[0] = 3;
alarm[0] = 4;

/* */
/*  */
