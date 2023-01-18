/// @description  Sube la velocidad gradualmente

if (image_speed < 1) {
    image_speed += 0.010;
    alarm[1] = 1;
} else {
    alarm[2] = 1;
}


