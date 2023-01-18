/// @description  pasarDeviceDefinido()
function pasarDeviceAFlecha() {
	
	/*

	var dvc = -1;

	if (object_index == obj_flecha_abajo) {

	    if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)) {
	            dvc = 4;
	        }
	        obj_flecha_izq.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)) {
	            dvc = 4;
	        }
	        obj_flecha_der.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)) {
	            dvc = 4;
	        }
	        obj_flecha_arriba.deviceDefinido = dvc;
	    }

	} else if (object_index == obj_flecha_arriba) {

	    if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)) {
	            dvc = 4;
	        }
	        obj_flecha_izq.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)) {
	            dvc = 4;
	        }
	        obj_flecha_der.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)) {
	            dvc = 4;
	        }
	        obj_flecha_abajo.deviceDefinido = dvc;
	    }

	} else if (object_index == obj_flecha_izq) {

	    if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)) {
	            dvc = 4;
	        }
	        obj_flecha_arriba.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_der)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_der)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_der)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_der)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_der)) {
	            dvc = 4;
	        }
	        obj_flecha_der.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)) {
	            dvc = 4;
	        }
	        obj_flecha_abajo.deviceDefinido = dvc;
	    }

	} else if (object_index == obj_flecha_der) {

	    if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_arriba)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_arriba)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_arriba)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_arriba)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_arriba)) {
	            dvc = 4;
	        }
	        obj_flecha_arriba.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_izq)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_izq)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_izq)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_izq)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_izq)) {
	            dvc = 4;
	        }
	        obj_flecha_izq.deviceDefinido = dvc;
	    } else if (
	    position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo) ||
	    position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo) || 
	    position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)
	    ) {
	        if (position_meeting(device_mouse_x(0), device_mouse_y(0), obj_flecha_abajo)) {
	            dvc = 0;
	        } else if (position_meeting(device_mouse_x(1), device_mouse_y(1), obj_flecha_abajo)) {
	            dvc = 1;
	        } else if (position_meeting(device_mouse_x(2), device_mouse_y(2), obj_flecha_abajo)) {
	            dvc = 2;
	        } else if (position_meeting(device_mouse_x(3), device_mouse_y(3), obj_flecha_abajo)) {
	            dvc = 3;
	        } else if (position_meeting(device_mouse_x(4), device_mouse_y(4), obj_flecha_abajo)) {
	            dvc = 4;
	        }
	        obj_flecha_abajo.deviceDefinido = dvc;
	    }

	}
	
	*/

}
