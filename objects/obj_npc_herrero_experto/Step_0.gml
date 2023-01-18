/// @description  Depth / Control mouse

if (y < obj_pj.y) {
    depth = obj_pj.depth + obj_pj.y - y;
} else if (y > obj_pj.y) {
    depth = obj_pj.depth - y + obj_pj.y;
} else {
    depth = obj_pj.depth;
}

depth += 16;

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
            
			yaHizoElPedido = yaHizoPedidoHerrero();
			fechaDeTerminacion = fechaDeTerminacionHerrero();
			
            if (!dobleClic) {
            
                obj_hechizos.moviendoHechizo = false;
                var idMsg = instance_create(x, y, obj_msg);
				if (!yaHizoElPedido) {
					idMsg.desc = desc;
				} else if (fechaDeTerminacion == -1 || date_compare_datetime(date_current_datetime(), fechaDeTerminacion) == -1) {
					var diferencia = date_second_span(date_current_datetime(), fechaDeTerminacion);
					idMsg.desc = desc3 + " (" + string(100 - floor(diferencia * 100 / 60)) + "%)";
				} else {
					idMsg.desc = desc6;
				}
					
                dobleClic = true;
                alarm[0] = 15;
                
            } else {
            
	            if (!obj_pj.muerto) {
	                obj_hechizos.moviendoHechizo = false;
                
					if (yaHizoElPedido && date_compare_datetime(date_current_datetime(), fechaDeTerminacion) >= 0) {
						
						var indiceArmaduraDragonic = elegirArmaduraDragonic();
						
						if (tieneEspacioEnInv(indiceArmaduraDragonic, 1)) {
					
							// Otorga la armadura
							
							agarrarItemForzado(indiceArmaduraDragonic);
							
							var idMsg = instance_create(x, y, obj_msg);
							idMsg.desc = desc5;
							
							guardarPedidoHerrero(false, -1);
							guardarPartida(obj_pj.nombre);
						
						} else {
							var idMsg = instance_create(x, y, obj_msg);
							idMsg.desc = desc2;
						}
						
					} else if (!yaHizoElPedido) {
				
		                if (tieneElementosArmaduraDragonic()) {
							
							descontarElementosArmaduraDragonic();
							
							guardarPedidoHerrero(true, date_inc_day(date_current_datetime(), 1));
							guardarPartida(obj_pj.nombre);
							
							var idMsg = instance_create(x, y, obj_msg);
							idMsg.desc = desc4;
							
						} else {
							var idMsg = instance_create(x, y, obj_msg);
							idMsg.desc = desc1;
						}
					
					}
					
	            } else {
	                var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	                idINFO.padre = obj_pj.id;
	                idINFO.texto = "¡Estás muerto!";
	            }
    
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

