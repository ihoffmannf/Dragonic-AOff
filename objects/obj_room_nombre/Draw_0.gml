/// @description  Dibujo el nombre

draw_set_font(fnt_Vedrana_18);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(300, 300, string_hash_to_newline(nombre));
draw_set_valign(fa_top);
draw_set_halign(fa_left);

if (dibuja) {
    draw_set_font(fnt_Vedrana_8_bold);
    draw_set_color(c_red);
    draw_set_valign(fa_bottom);
    draw_set_halign(fa_center);
    draw_text(room_width * 0.5, room_height - 2, string_hash_to_newline("Nombre inválido o en uso por otro personaje"));
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}

