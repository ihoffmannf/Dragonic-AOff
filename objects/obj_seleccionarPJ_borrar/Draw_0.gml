/// @description  Dibujo

if (confirmado) {
    draw_set_color(c_red);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_ext(299, 336, string_hash_to_newline("Presioná aquí nuevamente para confirmar el borrado"), 10, 120);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

