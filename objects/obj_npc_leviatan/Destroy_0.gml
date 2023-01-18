/// @description  Creo el oro (O drop)
/// @param O drop

// Respawn

if (roomInicial == room && salud <= 0) {

    var multX = 16;
    var multY = 16;
    var xNuevo = 0;
    var yNuevo = 0;
    
    do {
    
        xNuevo = multX * floor(random_range(2, room_width / multX - 32));
        yNuevo = multY * floor(random_range(1, room_height / multY - 32));
        var tile1 = tile_layer_find(10000000, xNuevo, yNuevo);
        var tile2 = tile_layer_find(1000000, xNuevo, yNuevo);
        var tile3 = tile_layer_find(100000, xNuevo, yNuevo);
    
    } until (
    xNuevo % 16 == 0 &&
    yNuevo % 16 == 0 &&
    xNuevo % 32 != 0 &&
    yNuevo % 32 != 0 &&
    tile1 == -1 && tile2 == -1 && tile3 == -1 && 
    instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
    instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_telep) == noone && 
    instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
    );
    
    instance_create(xNuevo, yNuevo, object_index);

}


