/// @description  Gráfico

if (instance_exists(padre)) {
    
    image_index = index[padre.direccion, frame];
    
    if (frame <= 2) {
        frame++;
        alarm[0] = 2.5;
    } else {
        frame = 0;
    }
    
}




