/// @description  Creo el oro (O drop)
/// @param O drop

// Si no estaba domado dropea

if (!domado && salud <= 0) {

    xOro = xInicio;
    yOro = yInicio;
    
    if (moviendose) {
    
        switch (direccion) {
            case 0:
                yOro += 32;
                break;
            case 1:
                yOro -= 32;
                break;
            case 2:
                xOro -= 32;
                break;
            case 3:
                xOro += 32;
                break;
        }
        
    }
        
    var idItem = instance_create(xOro, yOro, obj_item);
    
    idItem.indice = 160;
    idItem.cantidad = 1;
    
}

// Si estaba domada desaparece

if (domado) {

    for (var i = 0; i < 3; i++) {
        if (obj_pj.criaturasHijas[i, 0] == id) {
            break;
        }
    }

    obj_pj.criaturasHijas[i, 0] = -1;
    
    if (salud <= 0) {
    
        obj_pj.criaturasHijas[i, 1] = -1;
    
        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
        idINFO.color = c_red;
        idINFO.padre = obj_pj.id;
        idINFO.texto = "¡Tu mascota murió!";
        
    }    
    
}

// Respawn

if (roomInicial == room && salud <= 0) {

    var multX = 16;
    var multY = 16;
    var xNuevo = 0;
    var yNuevo = 0;
    
    do {
    
        xNuevo = multX * floor(random_range(2, room_width / multX - 32));
        yNuevo = multY * floor(random_range(1, room_height / multY - 32));
        var tile = tile_layer_find(10000000, xNuevo, yNuevo);
    
    } until (
    xNuevo % 16 == 0 &&
    yNuevo % 16 == 0 &&
    xNuevo % 32 != 0 &&
    yNuevo % 32 != 0 &&
    tile != -1 && 
    instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
    instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_telep) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
    );
    
    instance_create(xNuevo, yNuevo, object_index);

}




