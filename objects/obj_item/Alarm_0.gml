/// @description  Gráfico

image_index = indice; 

/// Control posición

if (!noSetearAlarm) {

    if (!superpone) {
    
        var i = 1;
        
        tile1 = tile_layer_find(10000000, x, y);
        tile2 = tile_layer_find(1000000, x, y);
        tile3 = tile_layer_find(100000, x, y);
        
        while (place_meeting(x, y, obj_pj) || place_meeting(x, y, obj_bloque_basic) || place_meeting(x, y, obj_bloqueo_agua) || place_meeting(x, y, obj_tile_invalido) || place_meeting(x, y, obj_telep) || place_meeting(x, y, obj_npc_basic) || place_meeting(x, y, obj_oro) || place_meeting(x, y, obj_item) || (tile1 == -1 && tile2 == -1 && tile3 == -1)) {
        
            var banderaBreak = false;
            
            ////////////////////////////////////////////////////////////////////////////////
            // Si hay lugar arriba a la izquierda...
            
            tile1 = tile_layer_find(10000000, x - 32 * i, y - 32 * i); // Pasto
            tile2 = tile_layer_find(1000000, x - 32 * i, y - 32 * i); // Costa
            tile3 = tile_layer_find(100000, x - 32 * i, y - 32 * i); // Pisos y puentes
            
            if (
            !place_meeting(x - 32 * i, y - 32 * i, obj_pj) && 
            !place_meeting(x - 32 * i, y - 32 * i, obj_bloque_basic) && 
            !place_meeting(x - 32 * i, y - 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x - 32 * i, y - 32 * i, obj_tile_invalido) && 
            !place_meeting(x - 32 * i, y - 32 * i, obj_telep) && 
            !place_meeting(x - 32 * i, y - 32 * i, obj_npc_basic) &&
            !place_meeting(x - 32 * i, y - 32 * i, obj_oro) &&
            !place_meeting(x - 32 * i, y - 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x -= 32 * i;
                y -= 32 * i;
                break;
                
            }
            
            if (i > 1) {
            
                for (var iAux = i; iAux >= i - 1; iAux--) {
                
                    tile1 = tile_layer_find(10000000, (x - 32 * iAux) + 32, y - 32 * i);
                    tile2 = tile_layer_find(1000000, (x - 32 * iAux) + 32, y - 32 * i);
                    tile3 = tile_layer_find(100000, (x - 32 * iAux) + 32, y - 32 * i);
                
                    if (
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_pj) && 
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_bloque_basic) && 
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_bloqueo_agua) && 
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_tile_invalido) && 
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_telep) && 
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_npc_basic) &&
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_oro) &&
                    !place_meeting((x - 32 * iAux) + 32, y - 32 * i, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
                
                    tile1 = tile_layer_find(10000000, x - 32 * i, (y - 32 * iAux) + 32);
                    tile2 = tile_layer_find(1000000, x - 32 * i, (y - 32 * iAux) + 32);
                    tile3 = tile_layer_find(100000, x - 32 * i, (y - 32 * iAux) + 32);
                
                    if (
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_pj) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_bloque_basic) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_bloqueo_agua) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_tile_invalido) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_telep) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_npc_basic) && 
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_oro) &&
                    !place_meeting(x - 32 * i, (y - 32 * iAux) + 32, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x, y - 32 * i);
            tile2 = tile_layer_find(1000000, x, y - 32 * i);
            tile3 = tile_layer_find(100000, x, y - 32 * i);
            
            if (
            !place_meeting(x, y - 32 * i, obj_pj) && 
            !place_meeting(x, y - 32 * i, obj_bloque_basic) && 
            !place_meeting(x, y - 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x, y - 32 * i, obj_tile_invalido) && 
            !place_meeting(x, y - 32 * i, obj_telep) && 
            !place_meeting(x, y - 32 * i, obj_npc_basic) &&
            !place_meeting(x, y - 32 * i, obj_oro) &&
            !place_meeting(x, y - 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                y -= 32 * i;
                break;
                
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            
            ////////////////////////////////////////////////////////////////////////////////
            // Si hay lugar arriba a la derecha...
                
            if (i > 1) {
            
                for (var iAux = 1; iAux <= i; iAux++) {
                
                    tile1 = tile_layer_find(10000000, (x + 32 * iAux) + 32, y - 32 * i);
                    tile2 = tile_layer_find(1000000, (x + 32 * iAux) + 32, y - 32 * i);
                    tile3 = tile_layer_find(100000, (x + 32 * iAux) + 32, y - 32 * i);
                
                    if (
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_pj) && 
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_bloque_basic) && 
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_bloqueo_agua) && 
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_tile_invalido) && 
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_telep) && 
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_npc_basic) &&
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_oro) &&
                    !place_meeting((x + 32 * iAux) - 32, y - 32 * i, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x + 32 * i, y - 32 * i);
            tile2 = tile_layer_find(1000000, x + 32 * i, y - 32 * i);
            tile3 = tile_layer_find(100000, x + 32 * i, y - 32 * i);
            
            if (
            !place_meeting(x + 32 * i, y - 32 * i, obj_pj) && 
            !place_meeting(x + 32 * i, y - 32 * i, obj_bloque_basic) && 
            !place_meeting(x + 32 * i, y - 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x + 32 * i, y - 32 * i, obj_tile_invalido) && 
            !place_meeting(x + 32 * i, y - 32 * i, obj_telep) && 
            !place_meeting(x + 32 * i, y - 32 * i, obj_npc_basic) &&
            !place_meeting(x + 32 * i, y - 32 * i, obj_oro) &&
            !place_meeting(x + 32 * i, y - 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x += 32 * i;
                y -= 32 * i;
                break;
                
            }
            
            if (i > 1) {
                
                for (var iAux = i; iAux >= i - 1; iAux--) {
                
                    tile1 = tile_layer_find(10000000, x + 32 * i, (y - 32 * iAux) + 32);
                    tile2 = tile_layer_find(1000000, x + 32 * i, (y - 32 * iAux) + 32);
                    tile3 = tile_layer_find(100000, x + 32 * i, (y - 32 * iAux) + 32);
                
                    if (
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_pj) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_bloque_basic) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_bloqueo_agua) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_tile_invalido) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_telep) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_npc_basic) && 
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_oro) &&
                    !place_meeting(x + 32 * i, (y - 32 * iAux) + 32, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x + 32 * i, y);
            tile2 = tile_layer_find(1000000, x + 32 * i, y);
            tile3 = tile_layer_find(100000, x + 32 * i, y);
            
            if (
            !place_meeting(x + 32 * i, y, obj_pj) && 
            !place_meeting(x + 32 * i, y, obj_bloque_basic) && 
            !place_meeting(x + 32 * i, y, obj_bloqueo_agua) && 
            !place_meeting(x + 32 * i, y, obj_tile_invalido) && 
            !place_meeting(x + 32 * i, y, obj_telep) && 
            !place_meeting(x + 32 * i, y, obj_npc_basic) &&
            !place_meeting(x + 32 * i, y, obj_oro) &&
            !place_meeting(x + 32 * i, y, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x += 32 * i;
                break;
                
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            
            ////////////////////////////////////////////////////////////////////////////////
            // Si hay lugar abajo a la derecha...
            
            if (i > 1) {
                
                for (var iAux = 1; iAux <= i; iAux++) {
                
                    tile1 = tile_layer_find(10000000, x + 32 * i, (y + 32 * iAux) + 32);
                    tile2 = tile_layer_find(1000000, x + 32 * i, (y + 32 * iAux) + 32);
                    tile3 = tile_layer_find(100000, x + 32 * i, (y + 32 * iAux) + 32);
                
                    if (
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_pj) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_bloque_basic) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_bloqueo_agua) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_tile_invalido) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_telep) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_npc_basic) && 
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_oro) &&
                    !place_meeting(x + 32 * i, (y + 32 * iAux) - 32, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x + 32 * i, y + 32 * i);
            tile2 = tile_layer_find(1000000, x + 32 * i, y + 32 * i);
            tile3 = tile_layer_find(100000, x + 32 * i, y + 32 * i);
            
            if (
            !place_meeting(x + 32 * i, y + 32 * i, obj_pj) && 
            !place_meeting(x + 32 * i, y + 32 * i, obj_bloque_basic) && 
            !place_meeting(x + 32 * i, y + 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x + 32 * i, y + 32 * i, obj_tile_invalido) && 
            !place_meeting(x + 32 * i, y + 32 * i, obj_telep) && 
            !place_meeting(x + 32 * i, y + 32 * i, obj_npc_basic) &&
            !place_meeting(x + 32 * i, y + 32 * i, obj_oro) &&
            !place_meeting(x + 32 * i, y + 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x += 32 * i;
                y += 32 * i;
                break;
                
            }
            
            if (i > 1) {
            
                for (var iAux = i; iAux >= i - 1; iAux--) {
                
                    tile1 = tile_layer_find(10000000, (x + 32 * iAux) + 32, y + 32 * i);
                    tile2 = tile_layer_find(1000000, (x + 32 * iAux) + 32, y + 32 * i);
                    tile3 = tile_layer_find(100000, (x + 32 * iAux) + 32, y + 32 * i);
                
                    if (
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_pj) && 
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_bloque_basic) && 
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_bloqueo_agua) && 
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_tile_invalido) && 
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_telep) && 
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_npc_basic) &&
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_oro) &&
                    !place_meeting((x + 32 * iAux) - 32, y + 32 * i, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x, y + 32 * i);
            tile2 = tile_layer_find(1000000, x, y + 32 * i);
            tile3 = tile_layer_find(100000, x, y + 32 * i);
            
            if (
            !place_meeting(x, y + 32 * i, obj_pj) && 
            !place_meeting(x, y + 32 * i, obj_bloque_basic) && 
            !place_meeting(x, y + 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x, y + 32 * i, obj_tile_invalido) && 
            !place_meeting(x, y + 32 * i, obj_telep) && 
            !place_meeting(x, y + 32 * i, obj_npc_basic) &&
            !place_meeting(x, y + 32 * i, obj_oro) &&
            !place_meeting(x, y + 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                y += 32 * i;
                break;
                
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            
            ////////////////////////////////////////////////////////////////////////////////
            // Si hay lugar abajo a la izquierda...
            
            if (i > 1) {
            
                for (var iAux = 1; iAux <= i; iAux++) {
                
                    tile1 = tile_layer_find(10000000, (x - 32 * iAux) + 32, y + 32 * i);
                    tile2 = tile_layer_find(1000000, (x - 32 * iAux) + 32, y + 32 * i);
                    tile3 = tile_layer_find(100000, (x - 32 * iAux) + 32, y + 32 * i);
                
                    if (
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_pj) && 
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_bloque_basic) && 
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_bloqueo_agua) &&
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_tile_invalido) && 
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_telep) && 
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_npc_basic) &&
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_oro) &&
                    !place_meeting((x - 32 * iAux) + 32, y + 32 * i, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x - 32 * i, y + 32 * i);
            tile2 = tile_layer_find(1000000, x - 32 * i, y + 32 * i);
            tile3 = tile_layer_find(100000, x - 32 * i, y + 32 * i);
            
            if (
            !place_meeting(x - 32 * i, y + 32 * i, obj_pj) && 
            !place_meeting(x - 32 * i, y + 32 * i, obj_bloque_basic) && 
            !place_meeting(x - 32 * i, y + 32 * i, obj_bloqueo_agua) && 
            !place_meeting(x - 32 * i, y + 32 * i, obj_tile_invalido) && 
            !place_meeting(x - 32 * i, y + 32 * i, obj_telep) && 
            !place_meeting(x - 32 * i, y + 32 * i, obj_npc_basic) &&
            !place_meeting(x - 32 * i, y + 32 * i, obj_oro) &&
            !place_meeting(x - 32 * i, y + 32 * i, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x -= 32 * i;
                y += 32 * i;
                break;
                
            }
            
            if (i > 1) {
                
                for (var iAux = i; iAux >= i - 1; iAux--) {
                
                    tile1 = tile_layer_find(10000000, x - 32 * i, (y + 32 * iAux) - 32);
                    tile2 = tile_layer_find(1000000, x - 32 * i, (y + 32 * iAux) - 32);
                    tile3 = tile_layer_find(100000, x - 32 * i, (y + 32 * iAux) - 32);
                
                    if (
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_pj) && 
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_bloque_basic) && 
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_bloqueo_agua) &&
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_tile_invalido) && 
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_telep) && 
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_npc_basic) && 
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_oro) &&
                    !place_meeting(x - 32 * i, (y + 32 * iAux) - 32, obj_item) &&
                    (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
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
            
            tile1 = tile_layer_find(10000000, x - 32 * i, y);
            tile2 = tile_layer_find(1000000, x - 32 * i, y);
            tile3 = tile_layer_find(100000, x - 32 * i, y);
            
            if (
            !place_meeting(x - 32 * i, y, obj_pj) && 
            !place_meeting(x - 32 * i, y, obj_bloque_basic) && 
            !place_meeting(x - 32 * i, y, obj_bloqueo_agua) && 
            !place_meeting(x - 32 * i, y, obj_tile_invalido) && 
            !place_meeting(x - 32 * i, y, obj_telep) && 
            !place_meeting(x - 32 * i, y, obj_npc_basic) &&
            !place_meeting(x - 32 * i, y, obj_oro) &&
            !place_meeting(x - 32 * i, y, obj_item) &&
            (tile1 != -1 || tile2 != -1 || tile3 != -1) // Si hay algún tipo de suelo...
            ) {
                
                x -= 32 * i;
                break;
                
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            
            // Reinicio variables
            
            tile1 = tile_layer_find(10000000, x, y);
            tile2 = tile_layer_find(1000000, x, y);
            tile3 = tile_layer_find(100000, x, y);
                        
            // Si cierra el ciclo...
            
            i++;
            
            if (i * 32 > __view_get( e__VW.WView, 0 ) * 0.75) {
                instance_destroy();
            }
        
        }
    
    }

}

visible = true;

