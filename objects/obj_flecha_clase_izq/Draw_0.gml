/// @description  Dibujo

if (room == rm_crearPJ) {

draw_sprite(spr_foto_clase, seleccionado, 419, 107);

draw_set_font(fnt_Vedrana_11_bold);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(504, 312, string_hash_to_newline(clase[seleccionado]));
draw_set_color(c_white);
draw_text(502, 310, string_hash_to_newline(clase[seleccionado]));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

}


