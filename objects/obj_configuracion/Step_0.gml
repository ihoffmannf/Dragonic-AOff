/// @description  Control general / Control mouse

x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 2;
y = __view_get( e__VW.YView, 0 ) + 26;

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
                obj_panel_opciones.visible = false;
            } else {
                mostrado = true;
                obj_panel_opciones.visible = true;
				obj_ayuda.mostrado = false;
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

