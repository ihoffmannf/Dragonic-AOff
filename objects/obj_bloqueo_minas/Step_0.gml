/// @description  Control general / control mouse

if (activo) {
    if (!obj_pj.trabajando) {
        activo = false;
    }
}

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
            
            if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada && obj_pj.trabajoEquipado) {
                if (obj_pj.trabajoActual == 154) {
                    if (obj_pj.trabajoEnInv != -1) {
                        if (
                        place_meeting(x - 32, y, obj_pj) ||
                        place_meeting(x + 32, y, obj_pj) ||
                        place_meeting(x, y - 32, obj_pj) ||
                        place_meeting(x, y + 32, obj_pj)
                        ) {
                        
                            obj_pj.trabajaTala = false;
                            obj_pj.trabajaFragua = false;
                            obj_pj.trabajaPesca = false;
                            obj_pj.trabajaMineria = true;
                            obj_pj.trabajando = true;
                            activo = true;
                            
                            if (tipo == "hierro") {
                                obj_pj.indiceMineral = 148;
                            } else if (tipo == "plata") {
                                obj_pj.indiceMineral = 149;
                            } else {
                                obj_pj.indiceMineral = 150;
                            }
                            
							obj_skills_libres.mostrado = false;
							
                            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                            idINFO.texto = "Trabajando";
                            idINFO.padre = obj_pj.id;
                            
                            obj_pj.alarm[11] = 60;
                            
                        }
                    }    
                }    
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}



