/// @description  Control general / control mouse

if (obj_skills_libres.mostrado) {

    var hor = (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5) - 64 + 121;
    var ver = (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5) - 107;
    
    x = hor;
    
    switch (indice) {
        case 0:
            y = ver + 43;
            break;
        case 1:
            y = ver + 53;
            break;
        case 2:
            y = ver + 63;
            break;
        case 3:
            y = ver + 73;
            break;
        case 4:
            y = ver + 83;
            break;
        case 5:
            y = ver + 92;
            break;
        case 6:
            y = ver + 101;
            break;
        case 7:
            y = ver + 111;
            break;
        case 8:
            y = ver + 120;
            break;
        case 9:
            y = ver + 130;
            break;
        case 10:
            y = ver + 139;
            break;
        case 11:
            y = ver + 148;
            break;
        case 12:
            y = ver + 159;
            break;
        case 13:
            y = ver + 168;
            break;
        case 14:
            y = ver + 178;
            break;
        case 15:
            y = ver + 188;
            break;
        case 16:
            y = ver + 198;
            break;
        case 17:
            y = ver + 207;
            break;
    }
    
    var device = -1;
    
    if (
    device_mouse_check_button(0, mb_left) ||
    device_mouse_check_button(1, mb_left) ||
    device_mouse_check_button(2, mb_left) ||
    device_mouse_check_button(3, mb_left) ||
    device_mouse_check_button(4, mb_left)
    ) {
    
        device = elegirDeviceLibre();
    
        if (device != -1) {
        
            if (device_mouse_check_button_pressed(device, mb_left) && position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {
                obj_control_devices.devicesL[device] = true;
                if (obj_pj.skillsLibres > 0 && obj_pj.skills[indice] < 100) {
                    obj_pj.skills[indice]++;
                    obj_pj.skillsLibres--;
                }
                obj_control_devices.devicesL[device] = false;
            }
            
        }
    
    }
    
}

