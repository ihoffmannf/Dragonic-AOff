/// @description  Matriz que lleva la cuenta de los items de todo el mundo

i = 0;
ItemsRMActual[0] = -1;
aux[0] = -1;

// Lista de rooms

totalRooms = obj_npcs_mundo.totalRooms;
primerRoomDeMapa = obj_npcs_mundo.primerRoomDeMapa;

ItemsXRM[0, 0] = aux;

for (var j = 1; j <= totalRooms; j++) {
    ItemsXRM[j, 0] = aux;
}

datosItem[0] = -1;

