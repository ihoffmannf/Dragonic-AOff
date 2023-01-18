/// @description  Dibujo la cabeza

if (room == rm_crearPJ) {
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
	draw_sprite(cabezas[seleccionado], 0, x, y + 8)
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

}

