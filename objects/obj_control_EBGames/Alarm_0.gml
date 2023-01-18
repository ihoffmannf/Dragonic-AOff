/// @description  Baja opacidad negro

image_alpha -= 0.01;

if (image_alpha < 0 && alarm[1] == -1) {
    alarm[1] = 60;
} else {
    alarm[0] = 1;
}

