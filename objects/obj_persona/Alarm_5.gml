/// @description  Movimiento random

if (!muerto && !inmovilizado) {

    yaEncontroItem = false;
    var IAObj = elegirIAObjetivoIA(true);
    
    if (IAObj != -1 && enemigo && !obj_pj.inmovilizado && (!IAObj.inmovilizado && IAAtacaAPJ()) && (!obj_pj.invisible || (obj_pj.invisible && obj_pj.meditando))) {
        IAObj = -1;
    }
    
    if (!agitando) {
    
        xObjetivo = floor(random(room_width));
        yObjetivo = floor(random(room_height));
        
        if (xObjetivo < 0) {
            xObjetivo = 0;
        }
        
        if (yObjetivo < 0) {
            yObjetivo = 0;
        }
        
        if (
        (lukea) &&
        (
        !(place_meeting(x + 32, y, obj_bloque_basic) && direccion == 3) &&
        !(place_meeting(x - 32, y, obj_bloque_basic) && direccion == 2) &&
        !(place_meeting(x, y + 32, obj_bloque_basic) && direccion == 0) &&
        !(place_meeting(x, y - 32, obj_bloque_basic) && direccion == 1)
        ) 
        &&
        (
        !(place_meeting(x + 32, y, obj_telep) && direccion == 3) &&
        !(place_meeting(x - 32, y, obj_telep) && direccion == 2) &&
        !(place_meeting(x, y + 32, obj_telep) && direccion == 0) &&
        !(place_meeting(x, y - 32, obj_telep) && direccion == 1)
        ) 
        &&
        (
        !(place_meeting(x + 32, y, obj_npc_basic) && direccion == 3) &&
        !(place_meeting(x - 32, y, obj_npc_basic) && direccion == 2) &&
        !(place_meeting(x, y + 32, obj_npc_basic) && direccion == 0) &&
        !(place_meeting(x, y - 32, obj_npc_basic) && direccion == 1)
        )
        &&
        (
        !(place_meeting(x + 32, y, obj_pj) && direccion == 3) &&
        !(place_meeting(x - 32, y, obj_pj) && direccion == 2) &&
        !(place_meeting(x, y + 32, obj_pj) && direccion == 0) &&
        !(place_meeting(x, y - 32, obj_pj) && direccion == 1)
        )
        ) {
        
            var validoNavegacion = true;
        
            if (!navega) {
                
                if (
                (place_meeting(x + 32, y, obj_bloqueo_agua) && direccion == 3) ||
                (place_meeting(x - 32, y, obj_bloqueo_agua) && direccion == 2) ||
                (place_meeting(x, y + 32, obj_bloqueo_agua) && direccion == 0) ||
                (place_meeting(x, y - 32, obj_bloqueo_agua) && direccion == 1)
                )
                {
                    validoNavegacion = false;
                }
                
            }
            
            if (validoNavegacion) {
                with (obj_item_basic) {
                    if (!other.yaEncontroItem) {
                        if (distance_to_object(other.id) <= 250 && !place_meeting(x, y, other)) {
                            other.yaEncontroItem = true;
                            other.xObjetivo = x;
                            other.yObjetivo = y;                        
                        }
                    }
                }
            }
            
        } else {
            lukea = false;
        }
        
        if (distance_to_object(obj_pj) > 400 || random(10) > 5) {
           lukea = true; 
        }
        
        if (salud < saludMax) {
            lukea = false;
        }
    
        if (yaEncontroItem) {
        
            if (
            (
            (place_meeting(x + 32, y, obj_bloque_basic) && direccion == 3) ||
            (place_meeting(x - 32, y, obj_bloque_basic) && direccion == 2) ||
            (place_meeting(x, y + 32, obj_bloque_basic) && direccion == 0) ||
            (place_meeting(x, y - 32, obj_bloque_basic) && direccion == 1)
            ) 
            ||
            (
            (place_meeting(x + 32, y, obj_telep) && direccion == 3) ||
            (place_meeting(x - 32, y, obj_telep) && direccion == 2) ||
            (place_meeting(x, y + 32, obj_telep) && direccion == 0) ||
            (place_meeting(x, y - 32, obj_telep) && direccion == 1)
            ) 
            ||
            (
            (place_meeting(x + 32, y, obj_npc_basic) && direccion == 3) ||
            (place_meeting(x - 32, y, obj_npc_basic) && direccion == 2) ||
            (place_meeting(x, y + 32, obj_npc_basic) && direccion == 0) ||
            (place_meeting(x, y - 32, obj_npc_basic) && direccion == 1)
            )
            ||
            (
            (place_meeting(x + 32, y, obj_pj) && direccion == 3) ||
            (place_meeting(x - 32, y, obj_pj) && direccion == 2) ||
            (place_meeting(x, y + 32, obj_pj) && direccion == 0) ||
            (place_meeting(x, y - 32, obj_pj) && direccion == 1)
            )
            ) {
            
                xObjetivo = floor(random(room_width));
                yObjetivo = floor(random(room_height));
                
                if (xObjetivo < 0) {
                    xObjetivo = 0;
                }
                
                if (yObjetivo < 0) {
                    yObjetivo = 0;
                }
                
                alarm[5] = floor(random_range(1.5 * 60, 2 * 60));
                
            } else {
                alarm[5] = 1;
            }
        
        } else {
            alarm[5] = floor(random_range(4 * 60, 5.5 * 60));
        }
    
    } else if (!obj_pj.muerto && cantidadIARivalCerca() == 0) {
        
        var valido = false; 
    
        if (obj_pj.inmovilizado && clase == 0) {
        
            if (
            (x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
            (y >= __view_get( e__VW.YView, 0 ) && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
            ) {
               valido = true; 
            }
        
            if (valido) {
            
                // Dentro de view
            
                if (
                !place_meeting(x + 32, y, obj_pj) &&
                !place_meeting(x - 32, y, obj_pj) &&
                !place_meeting(x, y + 32, obj_pj) &&
                !place_meeting(x, y - 32, obj_pj)
                ) {
                
                    // Si el enemigo no está al lado del PJ...
                
                    if (
                    (
                    (place_meeting(x + 32, y, obj_bloque_basic) && direccion == 3) ||
                    (place_meeting(x - 32, y, obj_bloque_basic) && direccion == 2) ||
                    (place_meeting(x, y + 32, obj_bloque_basic) && direccion == 0) ||
                    (place_meeting(x, y - 32, obj_bloque_basic) && direccion == 1)
                    ) 
                    ||
                    (
                    (place_meeting(x + 32, y, obj_telep) && direccion == 3) ||
                    (place_meeting(x - 32, y, obj_telep) && direccion == 2) ||
                    (place_meeting(x, y + 32, obj_telep) && direccion == 0) ||
                    (place_meeting(x, y - 32, obj_telep) && direccion == 1)
                    ) 
                    ||
                    (
                    (place_meeting(x + 32, y, obj_npc_basic) && direccion == 3) ||
                    (place_meeting(x - 32, y, obj_npc_basic) && direccion == 2) ||
                    (place_meeting(x, y + 32, obj_npc_basic) && direccion == 0) ||
                    (place_meeting(x, y - 32, obj_npc_basic) && direccion == 1)
                    ) 
                    ) {
                    
                        // Si tiene algún bloqueo en frente...
                    
                        xObjetivo = floor(random_range(__view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64));
                        yObjetivo = floor(random_range(__view_get( e__VW.YView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64));
                        
                        alarm[5] = 60 * random_range(1.5, 2);
            
                    } else {
                    
                        if (!place_meeting(obj_pj.x + 32, obj_pj.y, obj_bloque_basic) && !place_meeting(obj_pj.x + 32, obj_pj.y, obj_npc_basic)) {
                            xObjetivo = obj_pj.x + 32;
                            yObjetivo = obj_pj.y;
                        } else if (!place_meeting(obj_pj.x - 32, obj_pj.y, obj_bloque_basic) && !place_meeting(obj_pj.x - 32, obj_pj.y, obj_npc_basic)) {
                            xObjetivo = obj_pj.x - 32;
                            yObjetivo = obj_pj.y;
                        } else if (!place_meeting(obj_pj.x, obj_pj.y - 32, obj_bloque_basic) && !place_meeting(obj_pj.x, obj_pj.y - 32, obj_npc_basic)) {
                            xObjetivo = obj_pj.x;
                            yObjetivo = obj_pj.y - 32;
                        } else if (!place_meeting(obj_pj.x, obj_pj.y + 32, obj_bloque_basic) && !place_meeting(obj_pj.x, obj_pj.y + 32, obj_npc_basic)) {
                            xObjetivo = obj_pj.x;
                            yObjetivo = obj_pj.y + 32;
                        }
            
                        alarm[5] = 60 * random_range(5, 6);
                    
                    }
                                
                }
                
            } else {
            
                // OOV
                
                xObjetivo = floor(random_range(__view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64));
                yObjetivo = floor(random_range(__view_get( e__VW.YView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64));
                
                alarm[5] = 60 * random_range(3, 4);
                
            }
            
        } else {
        
            var mantienePos = false;
            
            if (obj_pj.invisible && !obj_pj.meditando) {
                if (obj_pj.x == obj_pj.xMeditando && obj_pj.y == obj_pj.yMeditando) {
                    mantienePos = true;        
                }
            }
        
            if (
            (!obj_pj.invisible || (obj_pj.invisible && (obj_pj.inmovilizado || obj_pj.meditando))) ||
            mantienePos
            ) {
                xObjetivo = floor(random_range(__view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64));
                yObjetivo = floor(random_range(__view_get( e__VW.YView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64));
            } else {
                xObjetivo = floor(random(room_width));
                yObjetivo = floor(random(room_height));
            }
            
        }
        
    } else if (IAObj != -1) {
    
        if (clase == 0 && (pk || IAObj.pk) && (!enemigo || obj_pj.muerto) && cantidadIARivalCerca() == 1 && IAObj.inmovilizado) {
        
            if (
            !place_meeting(x + 32, y, IAObj) &&
            !place_meeting(x - 32, y, IAObj) &&
            !place_meeting(x, y + 32, IAObj) &&
            !place_meeting(x, y - 32, IAObj)
            ) {
            
                // Si el enemigo no está al lado del PJ...
            
                if (
                (
                (place_meeting(x + 32, y, obj_bloque_basic) && direccion == 3) ||
                (place_meeting(x - 32, y, obj_bloque_basic) && direccion == 2) ||
                (place_meeting(x, y + 32, obj_bloque_basic) && direccion == 0) ||
                (place_meeting(x, y - 32, obj_bloque_basic) && direccion == 1)
                ) 
                ||
                (
                (place_meeting(x + 32, y, obj_telep) && direccion == 3) ||
                (place_meeting(x - 32, y, obj_telep) && direccion == 2) ||
                (place_meeting(x, y + 32, obj_telep) && direccion == 0) ||
                (place_meeting(x, y - 32, obj_telep) && direccion == 1)
                ) 
                ||
                (
                (place_meeting(x + 32, y, obj_pj) && direccion == 3) ||
                (place_meeting(x - 32, y, obj_pj) && direccion == 2) ||
                (place_meeting(x, y + 32, obj_pj) && direccion == 0) ||
                (place_meeting(x, y - 32, obj_pj) && direccion == 1)
                ) 
                ) {
                
                    // Si tiene algún bloqueo en frente...
                
                    xObjetivo = floor(random_range(x - 128, x + 128));
                    yObjetivo = floor(random_range(y - 128, y + 128));
                    
                    alarm[5] = 60 * random_range(1.5, 2);
        
                } else {
                
                    if (!place_meeting(IAObj.x + 32, IAObj.y, obj_bloque_basic) && !place_meeting(IAObj.x + 32, IAObj.y, obj_pj)) {
                        xObjetivo = IAObj.x + 32;
                        yObjetivo = IAObj.y;
                    } else if (!place_meeting(IAObj.x - 32, IAObj.y, obj_bloque_basic) && !place_meeting(IAObj.x - 32, IAObj.y, obj_pj)) {
                        xObjetivo = IAObj.x - 32;
                        yObjetivo = IAObj.y;
                    } else if (!place_meeting(IAObj.x, IAObj.y - 32, obj_bloque_basic) && !place_meeting(IAObj.x, IAObj.y - 32, obj_pj)) {
                        xObjetivo = IAObj.x;
                        yObjetivo = IAObj.y - 32;
                    } else if (!place_meeting(IAObj.x, IAObj.y + 32, obj_bloque_basic) && !place_meeting(IAObj.x, IAObj.y + 32, obj_pj)) {
                        xObjetivo = IAObj.x;
                        yObjetivo = IAObj.y + 32;
                    }
        
                    alarm[5] = 60 * random_range(5, 6);
                
                }
                
            }
            
        } else {
    
            do {
                xObjetivo = floor(random_range(IAObj.x - 150, IAObj.x + 150));
            } until(xObjetivo > 0 && xObjetivo < room_width);
            do {
                yObjetivo = floor(random_range(IAObj.y - 70, IAObj.y + 70));
            } until(yObjetivo > 0 && yObjetivo < room_height);
            
            alarm[5] = floor(random_range(1.5 * 60, 2 * 60));
        
        }
        
    } else {
    
        xObjetivo = floor(random_range(__view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64));
        yObjetivo = floor(random_range(__view_get( e__VW.YView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64));
        
        alarm[5] = floor(random_range(1.5 * 60, 2 * 60));
        
    }

} else {
    xObjetivo = x;
    yObjetivo = y;
}


