/// @description  Control general / Control mouse

x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5;
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5;

posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 24;
posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 45;

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
            
            var indiceNPX = -1;
            var indiceNPY = -1;
        
            if ((device_mouse_x(device) >= posX && device_mouse_x(device) < posX + 16)) {
                // Puede ser el 1, el 4 o el 7
                indiceNPX = 0;
            } else if ((device_mouse_x(device) >= posX + 16 && device_mouse_x(device) < posX + 32)) {
                // Puede ser el 2, el 5 o el 8
                indiceNPX = 1;
            } else if ((device_mouse_x(device) >= posX + 32 && device_mouse_x(device) < posX + 48)) {
                // Puede ser el 3, el 6 o el 9
                indiceNPX = 2;
            }
            
            if ((device_mouse_y(device) >= posY && device_mouse_y(device) < posY + 15)) {
                // Puede ser el 1, el 2 o el 3
                indiceNPY = 0;
            } else if ((device_mouse_y(device) >= posY + 15 && device_mouse_y(device) < posY + 30)) {
                // Puede ser el 4, el 5 o el 6
                indiceNPY = 1;
            } else if ((device_mouse_y(device) >= posY + 30 && device_mouse_y(device) < posY + 45)) {
                // Puede ser el 7, el 8 o el 9
                indiceNPY = 2;
            } else if ((device_mouse_y(device) >= posY + 45 && device_mouse_y(device) < posY + 60)) {
                // Puede ser el 0, o el botón "Borrar"
                indiceNPY = 3;
            } else if ((device_mouse_y(device) >= posY + 75 && device_mouse_y(device) < posY + 90)) {
                // Es el boton "Tirar"
                indiceNPY = 4;
            }
            
            if (indiceNPX != -1 && indiceNPY != -1) {
                if (numPadInv[indiceNPY, indiceNPX] != -1 && numPadInv[indiceNPY, indiceNPX] != -2) {
                    // Escribe
                    var cantidadParcial = floor(real(cantidadS + string(numPadInv[indiceNPY, indiceNPX])));
                    if (cantidadParcial <= 10000) {
                        if (cantidadS != "0") {
                            cantidadS = string(cantidadParcial);    
                        } else {
                            cantidadS = string(numPadInv[indiceNPY, indiceNPX]);
                        }                                    
                    }                                
                } else if (numPadInv[indiceNPY, indiceNPX] == -1) {
                    // Borra
                    cantidadS = "0";
                } else {
                    // Tira
                    if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
						
                        var cant = floor(real(cantidadS));
						
						if (cant > obj_inventario.cantInv[obj_inventario.posSeleccionado])
							cant = obj_inventario.cantInv[obj_inventario.posSeleccionado];
						
                        if (!place_meeting(obj_pj.x, obj_pj.y, obj_tile_invalido) && obj_inventario.posSeleccionado != -1 && cant > 0 && obj_inventario.cantInv[obj_inventario.posSeleccionado] >= cant) {
                            
                                var valido = true;
                                
                                alarm[1] = 120;
                            
                                if (
                                !position_meeting(obj_pj.x, obj_pj.y - 16, obj_item) &&
                                !position_meeting(obj_pj.x, obj_pj.y - 16, obj_oro)
                                ) {
                                    var idItemTirado = instance_create(obj_pj.x, obj_pj.y, obj_item);
                                    idItemTirado.superpone = true;
                                    idItemTirado.indice = obj_inventario.indiceInv[obj_inventario.posSeleccionado];
                                    idItemTirado.cantidad = cant;
                                    idItemTirado.tipo = obj_inventario.tipoInv[obj_inventario.posSeleccionado];
                                } else if (position_meeting(obj_pj.x, obj_pj.y - 16, obj_item)) {
                                    var idItemTirado = instance_position(obj_pj.x, obj_pj.y - 16, obj_item);
                                    if (idItemTirado.indice == obj_inventario.indiceInv[obj_inventario.posSeleccionado] && idItemTirado.cantidad + cant <= 10000) {
                                        idItemTirado.cantidad += cant;
                                    } else {
                                        valido = false;
                                    }
                                }
                                
                                if (valido) {
                                
                                    if (obj_inventario.cantInv[obj_inventario.posSeleccionado] > cant) {
                                        obj_inventario.cantInv[obj_inventario.posSeleccionado] -= cant;
                                    } else {
                                    
                                        if (obj_inventario.indiceInv[obj_inventario.posSeleccionado] == obj_inventario.seleccionado) {
                                            obj_inventario.seleccionado = -1;
                                        }
                                        
                                        if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "ropa" && obj_inventario.posSeleccionado == obj_pj.ropaEnInv) {
                                            obj_pj.desnudo = true;
                                            obj_pj.ropaActual = -1;
                                            obj_pj.ropaEnInv = -1;
                                            obj_pj.ropaIndexada = false;
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "arma" && obj_inventario.posSeleccionado == obj_pj.armaEnInv) {
                                            obj_pj.armaActual = -1;
                                            obj_pj.armaEnInv = -1;
                                            reproducirSonido(snd_equiparODesequiparArma, false, false);
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "flecha" && obj_inventario.posSeleccionado == obj_pj.flechaEnInv) {
                                            obj_pj.flechaActual = -1;
                                            obj_pj.flechaEnInv = -1;
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "casco" && obj_inventario.posSeleccionado == obj_pj.cascoEnInv) {
                                            obj_pj.cascoActual = -1;
                                            obj_pj.cascoEnInv = -1;
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "escudo" && obj_inventario.posSeleccionado == obj_pj.escudoEnInv) {
                                            obj_pj.escudoActual = -1;
                                            obj_pj.escudoEnInv = -1;
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "laud" && obj_inventario.posSeleccionado == obj_pj.laudEnInv) {
                                            obj_pj.laudActual = -1;
                                            obj_pj.laudEnInv = -1;
                                            obj_pj.laudEquipado = false;
                                        } else if (obj_inventario.tipoInv[obj_inventario.posSeleccionado] == "trabajo" && obj_inventario.posSeleccionado == obj_pj.trabajoEnInv) {
                                            obj_pj.trabajoActual = -1;
                                            obj_pj.trabajoEnInv = -1;
                                            obj_pj.trabajoEquipado = false;
                                            obj_panel_trabajos.mostrado = false;
                                        }
                                    
                                        obj_inventario.cantInv[obj_inventario.posSeleccionado] = 0;
                                        obj_inventario.indiceInv[obj_inventario.posSeleccionado] = -1;
                                        obj_inventario.tipoInv[obj_inventario.posSeleccionado] = "";
                                        obj_inventario.equipadoInv[obj_inventario.posSeleccionado] = false;
                                        obj_inventario.nombreInv[obj_inventario.posSeleccionado] = "Vacío";
                                        
                                        obj_inventario.posSeleccionado = -1;
                                        
                                    }
                                    
                                    instance_destroy();
                                    
                                }
                        }
                    }
                }
            }
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

