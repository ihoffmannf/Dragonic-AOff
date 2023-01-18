/// @description  Vector que lleva la cuenta de los mapas de todo el mundo (Zonas seguras o no)
/// @param Zonas seguras o no

// Lista de rooms

totalRooms = obj_npcs_mundo.totalRooms;
primerRoomDeMapa = obj_npcs_mundo.primerRoomDeMapa;

mapas[0] = false;

for (var j = 1; j <= totalRooms; j++) {
    mapas[j] = false;
}

mapas[rm_24] = true;
mapas[rm_45] = true;
mapas[rm_79] = true;
mapas[rm_81] = true;
mapas[rm_159] = true;


