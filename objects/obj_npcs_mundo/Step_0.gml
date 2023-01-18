/// @description  Baja el tiempo de inmovilidad / parálisis de todos los NPCs

var datosNPCInmo;

for (var j = primerRoomDeMapa; j <= totalRooms; j++) { // Room
    if (j != room) {
        for (var k = 0; k < array_length_2d(NPCsXRM, j); k++) { // NPC
            datosNPCInmo = NPCsXRM[j, k];
            if (datosNPCInmo[0] != -1) {
                if (datosNPCInmo[7] != -1) {
                    if (datosNPCInmo[7] > 1) {
                        datosNPCInmo[7]--;
                    }
                }
            }
        }
    }
}

