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
            
            if (!dobleClic) {
            
                obj_hechizos.moviendoHechizo = false;
                var idMsg = instance_create(x, y, obj_msg);
                idMsg.desc = desc;
                
                dobleClic = true;
                alarm[0] = 15;
                
            } else {
            
            if (!obj_pj.muerto) {
                obj_hechizos.moviendoHechizo = false;
                
                if (obj_panel_items.mostrado) {
                    obj_panel_items.idPadre = -1;
                    obj_panel_items.mostrado = false;
                } else {
                    obj_panel_trabajos.mostrado = false;        
                    obj_panel_items.idPadre = id;
                    obj_panel_items.mostrado = true;            
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

