/// @description  Posición / Control mouse

x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5;
y = __view_get( e__VW.YView, 0 );

var device = -1;

if (
device_mouse_check_button(0, mb_left) ||
device_mouse_check_button(1, mb_left) ||
device_mouse_check_button(2, mb_left) ||
device_mouse_check_button(3, mb_left) ||
device_mouse_check_button(4, mb_left)
) {
	
	if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {

	    device = elegirDeviceLibre();

	    if (device != -1) {
    
	        if (device_mouse_check_button_pressed(device, mb_left) && position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {
        
	            obj_control_devices.devicesL[device] = true;
	            instance_create(0, 0, obj_pausa);
	            obj_control_devices.devicesL[device] = false;
            
	        }
        
	    }
	
	}

}


