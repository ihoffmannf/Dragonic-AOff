/// @description  Dibujo

if (!muerto) {
    image_alpha = 1;
}

draw_set_alpha(image_alpha);

draw_self();
dibujarIA();

// Nombre

if (!muerto) {
    draw_set_alpha(1);
} else {
    draw_set_alpha(image_alpha);
}
    
draw_set_halign(fa_center);
draw_set_font(fnt_Vedrana_8_bold);
    
draw_set_color(c_black);
draw_text(x + 1, y + 1, string_hash_to_newline(nombre));

if (!pk) {
    if (rangoFaccion > 0) {
        var color = make_color_rgb(42, 187, 192);  
	    draw_set_color(c_black);
	    draw_text(x + 1, y + 12, string_hash_to_newline("<Armada Imperial>"));
	    draw_set_color(color);
	    draw_text(x, y + 13, string_hash_to_newline("<Armada Imperial>"));
    } else {
        var color = make_color_rgb(65, 134, 175);
    }
} else {
    if (rangoFaccion > 0) {
        var color = make_color_rgb(202, 87, 97); 
		draw_set_color(c_black);
	    draw_text(x + 1, y + 12, string_hash_to_newline("<Legión Oscura>"));
	    draw_set_color(color);
	    draw_text(x, y + 13, string_hash_to_newline("<Legión Oscura>"));  
    } else {
        var color = make_color_rgb(199, 16, 26);
    }
}
    
draw_set_color(color);
draw_text(x, y + 2, string_hash_to_newline(nombre));

// Palabras mágicas

if (dicePalabrasMagicas && !muerto) {
    draw_set_alpha(1);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_text(x + 1, y - 66, string_hash_to_newline(palabrasMagicas));
    var color = make_color_rgb(19, 215, 209);;
    draw_set_color(color);
    draw_set_alpha(0.75);
    draw_text(x, y - 65, string_hash_to_newline(palabrasMagicas));
    draw_set_halign(fa_left);
}

draw_set_alpha(1);


/* */
/*  */
