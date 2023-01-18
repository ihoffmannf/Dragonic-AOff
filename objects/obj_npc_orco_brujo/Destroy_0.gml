/// @description  Creo el oro (O drop)
/// @param O drop

if (salud <= 0) {

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
        
    var idOro = instance_create(xOro, yOro, obj_oro);
    idOro.valor = oro;

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


