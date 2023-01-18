/// @description  Dibujo los atributos

if (room == rm_crearPJ) {

    draw_set_color(c_white);
    draw_set_font(fnt_Vedrana_8_bold);
    
    draw_set_valign(fa_middle);
    
    var hor1 = 156;
    
    draw_text(hor1, 254, string_hash_to_newline(string(dados[0]))); // Fuerza
    draw_text(hor1, 274, string_hash_to_newline(string(dados[1]))); // Agilidad
    draw_text(hor1, 294, string_hash_to_newline(string(dados[2]))); // Inteligencia
    draw_text(hor1, 314, string_hash_to_newline(string(dados[3]))); // Carisma
    draw_text(hor1, 334, string_hash_to_newline(string(dados[4]))); // Constitución
    
    draw_set_color(c_yellow);
    draw_set_font(fnt_Vedrana_5_bold);
    
    var hor2 = 175;
    
    switch (obj_flecha_raza_izq.seleccionado) {
        case 0:
            draw_text(hor2, 254, string_hash_to_newline("+1"));
            draw_text(hor2, 274, string_hash_to_newline("+1"));
            draw_text(hor2, 334, string_hash_to_newline("+2"));
            break;
        case 1:
            draw_text(hor2, 274, string_hash_to_newline("+4"));
            draw_text(hor2, 294, string_hash_to_newline("+1"));
            draw_text(hor2, 314, string_hash_to_newline("+2"));
            break;
        case 2:
            draw_text(hor2, 254, string_hash_to_newline("+2"));
            draw_text(hor2, 274, string_hash_to_newline("+2"));
            draw_text(hor2, 294, string_hash_to_newline("+2"));
            draw_text(hor2, 314, string_hash_to_newline(" -3"));
            break;
        case 3:
            draw_text(hor2, 254, string_hash_to_newline("+3"));
            draw_text(hor2, 274, string_hash_to_newline(" -1"));
            draw_text(hor2, 294, string_hash_to_newline(" -6"));
            draw_text(hor2, 314, string_hash_to_newline(" -2"));
            draw_text(hor2, 334, string_hash_to_newline("+3"));
            break;
        case 4:
            draw_text(hor2, 254, string_hash_to_newline(" -4"));
            draw_text(hor2, 274, string_hash_to_newline("+3"));
            draw_text(hor2, 294, string_hash_to_newline("+3"));
            draw_text(hor2, 314, string_hash_to_newline("+1"));
            break;
    }
    
    draw_set_valign(fa_top);

}

