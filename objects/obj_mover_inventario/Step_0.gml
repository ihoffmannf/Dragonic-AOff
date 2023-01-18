/// @description  Control mouses

var device = -1;
visible = obj_inventario.visible;
			
x = __view_get( e__VW.XView, 1 ) + 87;

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
            
            if (obj_inventario.visible) {
				if (obj_inventario.seleccionado != -1)
					moviendoItem = !moviendoItem;
				else
					moviendoItem = false;
			}
            
            obj_control_devices.devicesL[device] = false;
            
        }
    }

}


