/// @description  dibujarItemInv(idItem, offY, posicion)
/// @param idItem
/// @param  offY
/// @param  posicion
function dibujarItemInv(argument0, argument1, argument2) {

	if (indiceInv[argument0] != -1) {
	    draw_sprite(spr_items, indiceInv[argument0], __view_get( e__VW.XView, 1 ) + 136 + argument2, __view_get( e__VW.YView, 1 ) + 40 + argument1);
	    draw_text(__view_get( e__VW.XView, 1 ) + 152 + argument2, __view_get( e__VW.YView, 1 ) + 28 + argument1, string_hash_to_newline(string(cantInv[argument0])));
    
	    if (equipadoInv[argument0]) {
	        draw_sprite(spr_cruz_equipado, 0, __view_get( e__VW.XView, 1 ) + 136 + argument2, __view_get( e__VW.YView, 1 ) + 40 + argument1);
	    }
    
	    if (posSeleccionado == argument0) {
			if (obj_mover_inventario.moviendoItem)
				draw_sprite(spr_borde_inv_moviendo, 0, __view_get( e__VW.XView, 1 ) + 136 + argument2, __view_get( e__VW.YView, 1 ) + 40 + argument1);
			else
				draw_sprite(spr_borde_inv, 0, __view_get( e__VW.XView, 1 ) + 136 + argument2, __view_get( e__VW.YView, 1 ) + 40 + argument1);
	    }
    
	    if (obj_pj.atacaConArco && obj_pj.armaEnInv == argument0) {
	        draw_set_halign(fa_left);
	        draw_set_color(c_yellow);
	        draw_text(__view_get( e__VW.XView, 1 ) + 122 + argument2, __view_get( e__VW.YView, 1 ) + 8 + argument1, string_hash_to_newline("U"));
	        draw_set_color(c_white);
	        draw_set_halign(fa_right);
	    }
	}



}
