/// @description  Control gráfico
    
if (moviendose) {

    image_index = index[direccion, frame];
    
    if (frame < 8) {
        frame++;
    } else {
        frame = 0;
    }
    
} else {
    image_index = index[direccion, 0];
}

alarm[1] = 6.25;

