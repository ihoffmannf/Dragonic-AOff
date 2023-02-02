/// @description  Control general

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

if (!obj_tecla_f6.teclaApretada) {
    instance_destroy();
    obj_pj.meditando = false;
    //keyboard_key_release(vk_f6);
}

if (obj_pj.mana == obj_pj.manaMax) {
    instance_destroy();
    obj_pj.meditando = false;
    obj_tecla_f6.teclaApretada = false;
    //keyboard_key_release(vk_f6);
}

if (obj_pj.muerto) {
    instance_destroy();
    obj_pj.meditando = false;
    obj_tecla_f6.teclaApretada = false;
    //keyboard_key_release(vk_f6);
}

