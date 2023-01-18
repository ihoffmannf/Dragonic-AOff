/// @description  controlFlechaMovimiento(flechaSinUso1, flechaSinUso2, flechaSinUso3)
/// @param flechaSinUso1
/// @param  flechaSinUso2
/// @param  flechaSinUso3
function controlFlechaMovimiento(argument0, argument1, argument2) {

	x = __view_get( e__VW.XView, 0 ) + 70; 
	y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 70;

	var device = obj_area_flechas.deviceEnAreaFlechas

	if (device != -1) {

		var deviceEstaSobreLaFlecha = position_meeting(device_mouse_x(device), device_mouse_y(device), self)

		if (!deviceEstaSobreLaFlecha) {
		    if (keyboard_check(mapeoTecla)) {
		        if (!PJTelep) {
		            keyboard_key_release(mapeoTecla);
		            apretada = false; 
		        }       
		    }
		} else if (deviceEstaSobreLaFlecha && device_mouse_check_button_released(device, mb_left)) {
		    keyboard_key_release(mapeoTecla);
		    apretada = false;    
			obj_control_devices.devicesL[device] = false;
		} else if (deviceEstaSobreLaFlecha && device_mouse_check_button(device, mb_left)) {  
            
			obj_control_devices.devicesL[device] = true;
		
		    var idNPCAux = instance_position(device_mouse_x(device), device_mouse_y(device), obj_npc_basic);
                
		    if (!(
			(((obj_pj.atacaConArco || obj_pj.atacaConHechizo) && (idNPCAux != noone && idNPCAux.hostil))) ||
		    obj_tecla_f6.teclaApretada
			)) {
		        if (!argument0.apretada && !argument1.apretada && !argument2.apretada) {    
                                        
		            apretada = true;
		            keyboard_key_press(mapeoTecla);
                        
		            with (obj_numpad) { instance_destroy(); }
					obj_ayuda.mostrado = false;
	                obj_configuracion.mostrado = false;
	                obj_panel_opciones.visible = false;
					obj_panel_trabajos.mostrado = false;
                        
		        }
		    }

		}

	}

}
