/// @description  Control general

if (instance_exists(padre)) {
    x = padre.x;
    y = padre.y;
} else {
    instance_destroy();
}

if (modY < limite) {
    modY++;
}

image_alpha -= 0.035;

if (image_alpha <= 0) {
    instance_destroy();
}



