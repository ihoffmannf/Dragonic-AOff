/// @description  Control mouse

var device = -1;

if (
!position_meeting(device_mouse_x(0), device_mouse_y(0), self) && 
!position_meeting(device_mouse_x(1), device_mouse_y(1), self) && 
!position_meeting(device_mouse_x(2), device_mouse_y(2), self) && 
!position_meeting(device_mouse_x(3), device_mouse_y(3), self) && 
!position_meeting(device_mouse_x(4), device_mouse_y(4), self)
) {
    keyboard_key_release(vk_f1);
} else if (
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
            
            if (visible && !obj_tecla_hechizos.visible) {
                obj_inventario.visible = true;
                obj_hechizos.visible = false;
                obj_tecla_T.visible = true;
                obj_tecla_lanzar.visible = false;
                obj_tecla_U.image_index = 0;
                alarm[0] = 1;
            }

            obj_control_devices.devicesL[device] = false;
            
        }
    }

}


