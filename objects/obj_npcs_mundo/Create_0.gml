/// @description  Matriz que lleva la cuenta de los NPC de todo el mundo

i = 0;
NPCsRMActual[0] = -1;
aux[0] = -1;

// Lista de rooms

totalRooms = 164; // ¡Cuidado al cambiar! Se debe restar 1 al total (163 - 1 = 144 mapas principales + 11 dungeons y minas + 8 rooms de menú)
primerRoomDeMapa = 8;

NPCsXRM[0, 0] = aux;

for (var j = 1; j <= totalRooms; j++) {
    NPCsXRM[j, 0] = aux;
}

datosNPC[0] = -1;

