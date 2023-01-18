/// @description  Creo los NPCs

crearNPCsRoom(room);

/*

    datosNPC[0] = object_index;
    datosNPC[1] = salud;
    datosNPC[2] = x;
    datosNPC[3] = y;
    datosNPC[4] = inmovilizado;
    datosNPC[5] = paralizado;
    datosNPC[6] = direccion;
    datosNPC[7] = alarm[4];

*/

datosNPC = NPCsXRM[room, 0];

if (datosNPC[0] != -1) {

    i = 0;
    
    with (obj_npc_basic) {
        if (object_index != obj_persona) {
            if (hostil) {
                if (!domado && !invocado) {
                    other.i++;
                    instance_destroy();
                }
            }
        }
    }

    for (var j = 1; j < i; j++) {
        var idNPC = instance_create(datosNPC[2], datosNPC[3], datosNPC[0]); 
        idNPC.salud = datosNPC[1];
        idNPC.inmovilizado = datosNPC[4];
        idNPC.paralizado = datosNPC[5];
        idNPC.direccion = datosNPC[6];
        idNPC.alarm[4] = datosNPC[7];
        idNPC.image_index = idNPC.index[idNPC.direccion, 0];
        datosNPC = NPCsXRM[room, j]; 
    }
    
    if (i > 1) {
        var idNPC = instance_create(datosNPC[2], datosNPC[3], datosNPC[0]); 
        idNPC.salud = datosNPC[1];
        idNPC.inmovilizado = datosNPC[4];
        idNPC.paralizado = datosNPC[5];
        idNPC.direccion = datosNPC[6];
        idNPC.alarm[4] = datosNPC[7];
        idNPC.image_index = idNPC.index[idNPC.direccion, 0];
    }
    
}

/* */
/*  */
