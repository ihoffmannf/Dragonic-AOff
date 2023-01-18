/// @description  Control gráfico
    
if (moviendose) {

    image_index = index[direccion, frame];
    
    if (frame < 2) {
        frame++;
    } else {
        frame = 0;
    }
    
} else {
    image_index = index[direccion, 0];
}

alarm[1] = 2.083;

