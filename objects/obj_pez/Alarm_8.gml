/// @description  Desaparece

if (image_alpha > 0) {
    image_alpha -= 0.01;
    alarm[8] = 1;
} else {
    instance_destroy();
}

