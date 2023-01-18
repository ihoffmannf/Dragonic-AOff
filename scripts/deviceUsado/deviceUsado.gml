/// @description  deviceUsado()
function deviceUsado() {

	var res = -1;

	if (position_meeting(device_mouse_x(0), device_mouse_x(0), self)) {
	    if (device_mouse_check_button(0, mb_left)) {
	        res = 0;
	    }
	} else if (position_meeting(device_mouse_x(1), device_mouse_x(1), self)) {
	    if (device_mouse_check_button(1, mb_left)) {
	        res = 1;
	    }
	} else if (position_meeting(device_mouse_x(2), device_mouse_x(2), self)) {
	    if (device_mouse_check_button(2, mb_left)) {
	        res = 2;
	    }
	} else if (position_meeting(device_mouse_x(3), device_mouse_x(3), self)) {
	    if (device_mouse_check_button(3, mb_left)) {
	        res = 3;
	    }
	} else if (position_meeting(device_mouse_x(4), device_mouse_x(4), self)) {
	    if (device_mouse_check_button(4, mb_left)) {
	        res = 4;
	    }
	}

	return res;



}
