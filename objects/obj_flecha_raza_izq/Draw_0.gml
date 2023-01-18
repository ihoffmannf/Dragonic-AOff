/// @description  Dibujo

if (room == rm_crearPJ) {
    draw_set_font(fnt_Vedrana_8_bold);
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
	if (!razaRecomendadaParaClase(seleccionado)) {
		draw_text(45, 89, string_hash_to_newline(raza[seleccionado]));
	} else {
		draw_text(45, 86, string_hash_to_newline(raza[seleccionado]));
		draw_set_color(c_yellow);	
		draw_set_font(fnt_Vedrana_5_bold);
		var claseSeleccionada = obj_flecha_clase_izq.clase[obj_flecha_clase_izq.seleccionado];
		draw_text(45, 96, string_hash_to_newline("Recomendado " + claseSeleccionada));
	    draw_set_font(fnt_Vedrana_8_bold);
	    draw_set_color(c_white);
	}
    draw_set_valign(fa_top);
}

