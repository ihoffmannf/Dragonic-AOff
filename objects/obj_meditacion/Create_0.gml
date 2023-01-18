/// @description  Depth

if (obj_pj.nivel >= 1 && obj_pj.nivel <= 14) {
    sprite_index = spr_meditacion_1;
} else if (obj_pj.nivel >= 15 && obj_pj.nivel <= 29) {
    sprite_index = spr_meditacion_2;
} else if (obj_pj.nivel >= 30 && obj_pj.nivel <= 39) {
    sprite_index = spr_meditacion_3;
} else if (obj_pj.nivel >= 40 && obj_pj.nivel <= 46) {
    sprite_index = spr_meditacion_4;
} else {
    sprite_index = spr_meditacion_5;
}

depth = obj_pj.depth - 3;
image_speed = 0.5;
image_alpha = 0.5;
alarm[0] = 1;

manaIncrementada = round(obj_pj.skills[3] * 1.15);

