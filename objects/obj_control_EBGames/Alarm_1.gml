/// @description  Sube opacidad negro

image_alpha += 0.01;
if (image_alpha < 1) {
    alarm[1] = 1;
} else {
    alarm[2] = 50;
}