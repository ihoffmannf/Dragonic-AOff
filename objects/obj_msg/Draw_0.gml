/// @description  Dibujo

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fnt_Vedrana_7_bold);
draw_set_color(c_black);
draw_text_ext(x + 1, y - 57, string_hash_to_newline(desc), 10, 128);
draw_set_color(c_white);
draw_text_ext(x, y - 56, string_hash_to_newline(desc), 10, 128);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

