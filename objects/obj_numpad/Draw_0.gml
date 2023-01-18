/// @description  Dibujo

draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Vedrana_5_bold);
draw_text(posX + 24, posY + 68, string_hash_to_newline(cantidadS));
draw_set_halign(fa_left);
draw_set_valign(fa_top);



