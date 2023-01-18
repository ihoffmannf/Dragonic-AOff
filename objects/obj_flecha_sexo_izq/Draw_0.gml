/// @description  Dibujo

if (room == rm_crearPJ) {
    draw_set_font(fnt_Vedrana_8_bold);
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_text(45, 180, string_hash_to_newline(sexo[seleccionado]));
    draw_set_valign(fa_top);
}

