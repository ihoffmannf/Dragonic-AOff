/// @description  Control general / Control mouse

x = __view_get( e__VW.XView, 0 ) + 65;
y = __view_get( e__VW.YView, 0 ) + 9;

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

            if (mostrado) {
                mostrado = false;
            } else {
                mostrado = true;
                with (obj_boton_panel_skills_izq) {
                    skillsIniciales = obj_pj.skills[indice];
                }
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

