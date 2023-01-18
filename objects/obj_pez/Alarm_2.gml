/// @description  Baja la velocidad gradualmente

if (image_speed > 0.65) {
    image_speed -= 0.025;
    alarm[2] = 1;
} else {
    if (image_index == 0) {
        alarm[0] = 1;
    } else {
        alarm[2] = 1;
    }
}

