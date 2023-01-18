/// @description  Dibuja

if (dibujarErrorElegible) {
    draw_set_color(c_red);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_ext(x + 44, y + 5, string_hash_to_newline("¡Nivel menor a 30!"), 10, 89);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

