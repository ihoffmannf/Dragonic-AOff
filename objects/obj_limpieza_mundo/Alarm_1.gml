/// @description  Limpia el mundo

with (obj_item_basic) {
    instance_destroy();
}

// Vacía vectores con items de todo el mundo

var datosItemABorrar;

for (var j = obj_npcs_mundo.primerRoomDeMapa; j <= obj_npcs_mundo.totalRooms; j++) { // Room
    for (var k = 0; k < array_length_2d(obj_items_mundo.ItemsXRM, j); k++) { // Item
        datosItemABorrar = obj_items_mundo.ItemsXRM[j, k];
        if (datosItemABorrar[0] != -1) {
        
            // Borro
            
            datosItemABorrar[0] = -1;
            datosItemABorrar[1] = -1;
            datosItemABorrar[2] = -1;
            datosItemABorrar[3] = "";
            datosItemABorrar[4] = -1;
            datosItemABorrar[5] = -1;
            
        }
    }
}

alarm[0] = 17100;

