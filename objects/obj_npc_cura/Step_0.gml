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
            
            deviceMantener = device;
            
            if (!dobleClic) {
            
                obj_hechizos.moviendoHechizo = false;
                var idMsg = instance_create(x, y, obj_msg);
                
                dobleClic = true;
                alarm[1] = 15;
                
                if (obj_pj.roomRuna != -1) {
                    if (obj_pj.roomRuna == room) {
                        idMsg.desc = desc4;
                    } else {
                        idMsg.desc = desc1;
                    }
                } else {
                    idMsg.desc = desc1;
                }
                
            } else {
            
                obj_hechizos.moviendoHechizo = false;
        
                if (obj_pj.muerto) {
                    with (obj_persona) {
                        gano = false;
                        tiempoEnView = 0;
                        yaHabloEnojado1 = false;
                        yaHabloEnojado2 = false;
                        yaHabloEnojado3 = false;
                    }
                    obj_pj.desnudo = true;
                    obj_pj.muerto = false;
                    obj_pj.image_alpha = 1;        
                }
                
                obj_pj.salud = obj_pj.saludMax;
                obj_pj.envenenado = false;
                obj_pj.veneno = 0;
                
                var idMsg = instance_create(x, y, obj_msg);
                idMsg.desc = desc2;
                
                reproducirSonido(snd_resucitar, false, false);
    
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
        // Elegir hogar

        if (device_mouse_check_button(deviceMantener, mb_left) && position_meeting(device_mouse_x(deviceMantener), device_mouse_y(deviceMantener), self)) {
        
            if (alarm[2] == -1) {
                alarm[2] = 60;
            }
        
            obj_control_devices.devicesL[deviceMantener] = true;
        
            if (elegirHogar && !yaEligio) {
                if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
                
                    elegirHogar = false;
                    yaEligio = true;
                    alarm[0] = -1;
                
                    var idMsg = instance_create(x, y, obj_msg);
                    
                    if (obj_pj.roomRuna != -1 && obj_pj.roomRuna == room) {
                        idMsg.desc = desc5;
                    } else {
                        idMsg.desc = desc3;
                    }
                    
                    obj_pj.roomRuna = room;
                    obj_pj.xRuna = obj_pj.x;
                    obj_pj.yRuna = obj_pj.y
                    
                } 
            }
        
            obj_control_devices.devicesL[deviceMantener] = false;
            
        } else {
            elegirHogar = false;
            yaEligio = false;
        }
        
    }

}

