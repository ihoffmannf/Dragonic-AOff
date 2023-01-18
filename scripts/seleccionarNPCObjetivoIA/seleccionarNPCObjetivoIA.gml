/// @description  seleccionarNPCObjetivoIA()
function seleccionarNPCObjetivoIA() {

	hayNPCs = false;
	contadorNPCs = 0;

	with (obj_npc_basic) {
	    if (object_index != obj_persona && hostil) {
	        other.hayNPCs = true;
	        break;
	    }
	}

	if (hayNPCs) {

	    NPCsEnView[0] = -1;
	    NPCsEnView[1] = -1;
	    NPCsEnView[2] = -1;
	    NPCsEnView[3] = -1;
	    NPCsEnView[4] = -1;
	    NPCsEnView[5] = -1;
	    NPCsEnView[6] = -1;
	    NPCsEnView[7] = -1;
	    NPCsEnView[8] = -1;
	    NPCsEnView[9] = -1;
	    NPCsEnView[10] = -1;
	    NPCsEnView[11] = -1;
	    NPCsEnView[12] = -1;
	    NPCsEnView[13] = -1;
	    NPCsEnView[14] = -1;
	    NPCsEnView[15] = -1;
	    NPCsEnView[16] = -1;
	    NPCsEnView[17] = -1;
	    NPCsEnView[18] = -1;
	    NPCsEnView[19] = -1;

	    with (obj_npc_basic) {
	        if (object_index != obj_persona && hostil && distance_to_object(obj_persona) <= 250 && !inmovilizado && !paralizado) {
	            other.NPCsEnView[other.contadorNPCs] = id;
	            if (other.contadorNPCs < 19) {
	                other.contadorNPCs++;
	            } else {
	                break;
	            }
	        }
	    }
    
	    if (NPCsEnView[0] != -1) {
	        do {
	            contadorNPCs = floor(random_range(0, 20));
	        } until(NPCsEnView[contadorNPCs] != -1);
	        return NPCsEnView[contadorNPCs];
	    } else {
	        return -1;
	    }
    
	} else {
	    return -1;
	}



}
