/// @description  Control general / Control mouse

if (obj_ayuda.mostrado) {

    x = __view_get( e__VW.XView, 0 ) + 132;
    y = __view_get( e__VW.YView, 0 ) + 130;
    
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
                
                if (obj_manual.pagina == 0) {
                    obj_manual.pagina = 24;
                }
            
                obj_control_devices.devicesL[device] = false;
                
            }
            
        }
    
    }
    
} else {
    visible = false;
}

