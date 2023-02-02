/// @description  Gráfico

if (!puedeMoverse) {

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
        
    }
    
    if (escudoActual != -1) {
    
        obj_escudo.image_index = obj_escudo.index[direccion, obj_escudo.frame];
        
        if (obj_escudo.frame < 5) {
            obj_escudo.frame++;
            if (obj_escudo.frame == 5) {
                obj_escudo.frame = 0
            }
        }     
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
alarm[0] = 4;
