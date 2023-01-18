/// @description  Gráfico

obj_pj.puedeAtacar = false;

image_index = index[obj_pj.direccion, frame];

if (frame <= 2) {
    frame++;
    alarm[0] = 2.5;
} else {
    frame = 0;
}



