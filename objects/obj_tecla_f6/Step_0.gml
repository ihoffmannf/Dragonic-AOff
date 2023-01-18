/// @description  Control mouse

var device = -1;

image_index = obj_pj.meditando;

if (
!position_meeting(device_mouse_x(0), device_mouse_y(0), self) && 
!position_meeting(device_mouse_x(1), device_mouse_y(1), self) && 
!position_meeting(device_mouse_x(2), device_mouse_y(2), self) && 
!position_meeting(device_mouse_x(3), device_mouse_y(3), self) && 
!position_meeting(device_mouse_x(4), device_mouse_y(4), self)
) {
    keyboard_key_release(vk_f6);
} else if (
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
            
            if (!obj_pj.muerto) {

                if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
            
                    keyboard_key_press(vk_f6);
                
                    if (teclaApretada) {
                        teclaApretada = false;
                    } else if (obj_pj.mana < obj_pj.manaMax) {
                        teclaApretada = true;
                    }
                
                } else {
                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                    idINFO.padre = obj_pj.id;
                    idINFO.texto = "¡No podés meditar en movimiento!";
                }
                
            } else {
                var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                idINFO.padre = obj_pj.id;
                idINFO.texto = "¡Estás muerto!";
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
    }

}


