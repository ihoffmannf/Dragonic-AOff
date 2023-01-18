/// @description  Control de posición de teletransporte / logueo / encierro

var i = 1;

var idBloqueo = instance_create(x - 16, y, obj_bloqueo);

tile = tile_layer_find(1000000, x, y);

while (place_meeting(x, y, obj_bloque_basic) || place_meeting(x, y, obj_npc_basic) || place_meeting(x, y, obj_telep) || tile != -1 || encerrado) {

    encerrado = false;
    var banderaBreak = false;
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar arriba a la izquierda...
    
    tile = tile_layer_find(1000000, x - 32 * i, y - 32 * i);
    
    if (
    !place_meeting(x - 32 * i, y - 32 * i, obj_bloque_basic) && 
    !place_meeting(x - 32 * i, y - 32 * i, obj_npc_basic) &&
    !place_meeting(x - 32 * i, y - 32 * i, obj_telep) &&
    tile == -1
    ) {
        
        x -= 32 * i;
        y -= 32 * i;
        break;
        
    }
    
    if (i > 1) {
    
        for (var iAux = i; iAux >= i - 1; iAux--) {
        
            tile = tile_layer_find(1000000, (x - 32 * iAux) + 32, y - 32 * i);
        
            if (
            !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_bloque_basic) && 
            !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_npc_basic) &&
            !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_telep) &&
            tile == -1
            ) {
                
                x = (x - 32 * iAux) + 32;
                y -= 32 * i;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
        for (var iAux = i; iAux >= i - 1; iAux--) {
        
            tile = tile_layer_find(1000000, x - 32 * i, (y - 32 * iAux) + 32);
        
            if (
            !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_bloque_basic) && 
            !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_npc_basic) && 
            !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_telep) && 
            tile == -1
            ) {
                
                x -= 32 * i;
                y = (y - 32 * iAux) + 32;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar arriba...
    
    tile = tile_layer_find(1000000, x, y - 32 * i);
    
    if (
    !place_meeting(x, y - 32 * i, obj_bloque_basic) && 
    !place_meeting(x, y - 32 * i, obj_npc_basic) &&
    !place_meeting(x, y - 32 * i, obj_telep) &&
    tile == -1
    ) {
        
        y -= 32 * i;
        break;
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar arriba a la derecha...
        
    if (i > 1) {
    
        for (var iAux = 1; iAux <= i; iAux++) {
        
            tile = tile_layer_find(1000000, (x + 32 * iAux) + 32, y - 32 * i);
        
            if (
            !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_bloque_basic) && 
            !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_npc_basic) &&
            !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_telep) &&
            tile == -1
            ) {
                
                x = (x + 32 * iAux) - 32;
                y -= 32 * i;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
    }
    
    tile = tile_layer_find(1000000, x + 32 * i, y - 32 * i);
    
    if (
    !place_meeting(x + 32 * i, y - 32 * i, obj_bloque_basic) && 
    !place_meeting(x + 32 * i, y - 32 * i, obj_npc_basic) &&
    !place_meeting(x + 32 * i, y - 32 * i, obj_telep) &&
            tile == -1
    ) {
        
        x += 32 * i;
        y -= 32 * i;
        break;
        
    }
    
    if (i > 1) {
        
        for (var iAux = i; iAux >= i - 1; iAux--) {
        
            tile = tile_layer_find(1000000, x + 32 * i, (y - 32 * iAux) + 32);
        
            if (
            !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_bloque_basic) && 
            !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_npc_basic) && 
            !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_telep) && 
            tile == -1
            ) {
                
                x += 32 * i;
                y = (y - 32 * iAux) + 32;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar a la derecha...
    
    tile = tile_layer_find(1000000, x + 32 * i, y);
    
    if (
    !place_meeting(x + 32 * i, y, obj_bloque_basic) && 
    !place_meeting(x + 32 * i, y, obj_npc_basic) &&
    !place_meeting(x + 32 * i, y, obj_telep) &&
    tile == -1
    ) {
        
        x += 32 * i;
        break;
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar abajo a la derecha...
    
    if (i > 1) {
        
        for (var iAux = 1; iAux <= i; iAux++) {
        
            tile = tile_layer_find(1000000, x + 32 * i, (y + 32 * iAux) + 32);
        
            if (
            !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_bloque_basic) && 
            !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_npc_basic) && 
            !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_telep) && 
            tile == -1
            ) {
                
                x += 32 * i;
                y = (y + 32 * iAux) - 32;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
    
    }
    
    tile = tile_layer_find(1000000, x + 32 * i, y + 32 * i);
    
    if (
    !place_meeting(x + 32 * i, y + 32 * i, obj_bloque_basic) && 
    !place_meeting(x + 32 * i, y + 32 * i, obj_npc_basic) &&
    !place_meeting(x + 32 * i, y + 32 * i, obj_telep) &&
            tile == -1
    ) {
        
        x += 32 * i;
        y += 32 * i;
        break;
        
    }
    
    if (i > 1) {
    
        for (var iAux = i; iAux >= i - 1; iAux--) {
        
            tile = tile_layer_find(1000000, (x + 32 * iAux) + 32, y + 32 * i);
        
            if (
            !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_bloque_basic) && 
            !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_npc_basic) &&
            !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_telep) &&
            tile == -1
            ) {
                
                x = (x + 32 * iAux) - 32;
                y += 32 * i;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar abajo...
    
    tile = tile_layer_find(1000000, x, y + 32 * i);
    
    if (
    !place_meeting(x, y + 32 * i, obj_bloque_basic) && 
    !place_meeting(x, y + 32 * i, obj_npc_basic) &&
    !place_meeting(x, y + 32 * i, obj_telep) &&
    tile == -1
    ) {
        
        y += 32 * i;
        break;
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar abajo a la izquierda...
    
    if (i > 1) {
    
        for (var iAux = 1; iAux <= i; iAux++) {
        
            tile = tile_layer_find(1000000, (x - 32 * iAux) + 32, y + 32 * i);
        
            if (
            !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_bloque_basic) && 
            !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_npc_basic) &&
            !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_telep) &&
            tile == -1
            ) {
                
                x = (x - 32 * iAux) + 32;
                y += 32 * i;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
        
    }
    
    tile = tile_layer_find(1000000, x - 32 * i, y + 32 * i);
    
    if (
    !place_meeting(x - 32 * i, y + 32 * i, obj_bloque_basic) && 
    !place_meeting(x - 32 * i, y + 32 * i, obj_npc_basic) &&
    !place_meeting(x - 32 * i, y + 32 * i, obj_telep) &&
            tile == -1
    ) {
        
        x -= 32 * i;
        y += 32 * i;
        break;
        
    }
    
    if (i > 1) {
        
        for (var iAux = i; iAux >= i - 1; iAux--) {
        
            tile = tile_layer_find(1000000, x - 32 * i, (y + 32 * iAux) - 32);
        
            if (
            !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_bloque_basic) && 
            !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_npc_basic) && 
            !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_telep) && 
            tile == -1
            ) {
                
                x -= 32 * i;
                y = (y + 32 * iAux) - 32;
                banderaBreak = true;
                break;
                
            }
            
        }
        
        if (banderaBreak) {
            break;
        }
    
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////
    // Si hay lugar a la izquierda...
    
    tile = tile_layer_find(1000000, x - 32 * i, y);
    
    if (
    !place_meeting(x - 32 * i, y, obj_bloque_basic) && 
    !place_meeting(x - 32 * i, y, obj_npc_basic) &&
    !place_meeting(x - 32 * i, y, obj_telep) &&
    tile == -1
    ) {
        
        x -= 32 * i;
        break;
        
    }
    
    ////////////////////////////////////////////////////////////////////////////////
                
    // Si cierra el ciclo...
    
    i++;
    
    if (i * 32 > __view_get( e__VW.WView, 0 ) * 0.75) {
        instance_destroy();
    }

}

if (instance_exists(idBloqueo)) {
    with (idBloqueo) {
        instance_destroy();
    }
}

if (!teletransporta) {
    instance_create(x, y, obj_efecto_login);
    reproducirSonido(snd_logueo, false, false);
}

teletransporta = false;


