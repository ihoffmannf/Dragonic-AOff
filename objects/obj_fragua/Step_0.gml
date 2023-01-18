/// @description  Control general / control mouse

if (activo) {
    if (!obj_pj.trabajando) {
        activo = false;
    }
}

// Depth

if (y < obj_pj.y) {
    depth = obj_pj.depth + obj_pj.y - y;
} else if (y > obj_pj.y) {
    depth = obj_pj.depth - y + obj_pj.y;
} else {
    depth = obj_pj.depth;
}

// Control mouse

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
            
            if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
                if (obj_inventario.seleccionado == 148 || obj_inventario.seleccionado == 149 || obj_inventario.seleccionado == 150) {
                    if (
                    place_meeting(x - 32, y, obj_pj) ||
                    place_meeting(x + 32, y, obj_pj) ||
                    place_meeting(x, y - 32, obj_pj) ||
                    place_meeting(x, y + 32, obj_pj)
                    ) {
                    
                        activo = true;
                        obj_pj.trabajaTala = false;
                        obj_pj.trabajaMineria = false;
                        obj_pj.trabajaPesca = false;
                        obj_pj.trabajaFragua = true;
                        obj_pj.trabajando = true;
                        
						obj_skills_libres.mostrado = false;
						
                        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                        idINFO.texto = "Trabajando";
                        idINFO.padre = obj_pj.id;
                        
                        obj_pj.alarm[11] = 60;
                        
                    }
                }   
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

