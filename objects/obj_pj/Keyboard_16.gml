/// @description  Teletransporte estilo GM (DEBUGGING)

/*

if (os_type == os_windows) {

    if (keyboard_check(vk_lshift) && mouse_check_button_pressed(mb_left)) {
        if (
        !position_meeting(mouse_x, mouse_y, obj_bloque_basic) &&
        !position_meeting(mouse_x, mouse_y, obj_npc_basic) &&
        !position_meeting(mouse_x, mouse_y, obj_telep)
        ) {
           x = mouse_x;
           y = mouse_y;
           alinearObjeto(); 
           instance_create(x, y, obj_efecto_login);
           reproducirSonido(snd_logueo, false, false);
        }
    } else if (keyboard_check_pressed(vk_rshift)) {
        room_goto(obtenerRoomIndex(get_string("Teletransportar a mapa:", "115")));
        instance_create(x, y, obj_efecto_login);
        reproducirSonido(snd_logueo, false, false);
    }

}

*/