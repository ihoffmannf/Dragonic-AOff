/// @description  Spawn

var rand = 2.5;

if (random(10) > rand) {
    
    if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {
    
        var repetir = irandom_range(2, 4);
        
        repeat (repetir) {
        
            var puedeCrear = false;
            var i = 0;
            while (i < obj_personas_mundo.totalMultiIA) {
                aux = obj_personas_mundo.globalIA[i];
                if (aux[0] == -1) {
                    obj_personas_mundo.globalIA[i] = aux;
                    puedeCrear = true;
                    break;
                } else {  
                    obj_personas_mundo.globalIA[i] = aux;
                }
                i++;
            }
            
            if (puedeCrear) {
    
                var multX = 16;
                var multY = 16;
                var xNuevo = 0;
                var yNuevo = 0;
                
                do {
                
                    xNuevo = multX * floor(random_range(2, room_width / multX - 32));
                    yNuevo = multY * floor(random_range(1, room_height / multY - 32));
                    
                    var tile = tile_layer_find(10000000, xNuevo, yNuevo);
                    
                    if (obj_pj.nivel >= 25) {
                        tile = 1;
                    }
                
                } until (
                xNuevo % 16 == 0 &&
                yNuevo % 16 == 0 &&
                xNuevo % 32 != 0 &&
                yNuevo % 32 != 0 &&
                tile != -1 && 
                posicionLejosDePJ(xNuevo, yNuevo - 16) && 
                // instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
                instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
                instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
                instance_position(xNuevo, yNuevo - 16, obj_telep) == noone && 
                instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
                );
                
                var idPersona = instance_create(xNuevo, yNuevo, obj_persona);
                
                var idEfecto = instance_create(idPersona.x, idPersona.y, obj_efecto_login);
                idEfecto.padre = idPersona;
                with (idPersona) {
                    guardarDatosIAEnGlobalIA();
                    reproducirSonido(snd_logueo, false, false);
                }
            
            }
            
        }
        
    }

}

if (obj_control_opciones.simularHorarios) {

    // Actualiza los intervalos según la hora
    
    var hora = current_hour;
    
    if (hora >= 1 && hora < 3) {
        intervaloMin = 10800;
    } else if (hora >= 3 && hora < 5) {
        intervaloMin = 14400;
    } else if (hora >= 5 && hora < 8) {
        intervaloMin = 18000;
    } else if (hora >= 8 && hora < 12) {
        intervaloMin = 14400;
    } else if (hora >= 12 && hora < 14) {
        intervaloMin = 10800;
    } else if (hora >= 14 && hora < 16) {
        intervaloMin = 7200;
    } else if (hora >= 16 && hora < 19) {
        intervaloMin = 3600;
    } else if (hora >= 19 && hora < 21) {
        intervaloMin = 7200;
    } else if ((hora >= 21) || (hora >= 0 && hora < 1)) {
        intervaloMin = 10800;
    }
    
} else {
    intervaloMin = 9000;
}
    
if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {
    intervaloMin = intervaloMin / setearIntervaloCreacionIA(room);
}

intervaloMax = intervaloMin + intervaloMin / 2.5;

alarm[0] = floor(random_range(intervaloMin, intervaloMax));





