/// @description  Estado inicial

direction = random(360);
image_angle = direction;
image_alpha = 0;

giro = random_range(1.5, 2);
sube = false;
avanza = true;
esPescado = false;

alarm[1] = random_range(1, 120);
alarm[3] = 1;
alarm[4] = random_range(1, 120);
alarm[6] = random_range(120, 240);

// Se hace visible o invisible

if (room == rm_83 || room == rm_84 || room == rm_85 || room == rm_86 || room == rm_87 || room == rm_88 || room == rm_89 || room == rm_90 || room == rm_91 || room == rm_92 || room == rm_93 || room == rm_158 || room == rm_159) {
    visible = false;
} else {
    visible = true;
}

