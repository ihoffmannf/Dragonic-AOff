/// @description  corregirPosNPCEnTelep()
function corregirPosNPCEnTelep() {

	if (place_meeting(x, y, obj_telep)) {

	    if (object_index != obj_npc_calamar && object_index != obj_npc_galeon_fantasmal && object_index != obj_npc_leviatan) {

	        do {
    
	            x = 16 * floor(random_range(2, room_width / 16 - 32));
	            y = 16 * floor(random_range(1, room_height / 16 - 32));
	            var tileAux = tile_layer_find(10000000, x, y);
        
	        } until (
	        x % 16 == 0 &&
	        y % 16 == 0 &&
	        x % 32 != 0 &&
	        y % 32 != 0 &&
	        tileAux != -1 && 
	        !place_meeting(x, y, obj_pj) &&
	        !place_meeting(x, y, obj_bloque_basic) && 
	        !place_meeting(x, y, obj_bloque) && 
	        !place_meeting(x, y, obj_telep) &&
	        !place_meeting(x, y, obj_npc_basic)
	        );
        
	    } else {

	        do {
    
	            x = 16 * floor(random_range(2, room_width / 16 - 32));
	            y = 16 * floor(random_range(1, room_height / 16 - 32));
	            var tileAux1 = tile_layer_find(10000000, x, y);
	            var tileAux2 = tile_layer_find(1000000, x, y);
	            var tileAux3 = tile_layer_find(100000, x, y);
        
	        } until (
	        x % 16 == 0 &&
	        y % 16 == 0 &&
	        x % 32 != 0 &&
	        y % 32 != 0 &&
	        tileAux1 == -1 && tileAux2 == -1 && tileAux3 == -1 && 
	        !place_meeting(x, y, obj_pj) &&
	        !place_meeting(x, y, obj_bloque_basic) && 
	        !place_meeting(x, y, obj_bloque) && 
	        !place_meeting(x, y, obj_telep) &&
	        !place_meeting(x, y, obj_npc_basic)
	        );
        
	    }
    
	}



}
