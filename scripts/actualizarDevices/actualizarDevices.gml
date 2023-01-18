/// @description  actualizarDevices()
function actualizarDevices() {

	if (device_mouse_check_button(0, mb_left)) {
	    devicesL[0] = true;
	} else {
	    devicesL[0] = false;
	}

	if (device_mouse_check_button(1, mb_left)) {
	    devicesL[1] = true;
	} else {
	    devicesL[1] = false;
	}

	if (device_mouse_check_button(2, mb_left)) {
	    devicesL[2] = true;
	} else {
	    devicesL[2] = false;
	}

	if (device_mouse_check_button(3, mb_left)) {
	    devicesL[3] = true;
	} else {
	    devicesL[3] = false;
	}

	if (device_mouse_check_button(4, mb_left)) {
	    devicesL[4] = true;
	} else {
	    devicesL[4] = false;
	}



}
