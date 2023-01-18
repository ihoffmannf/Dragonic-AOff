/// @description  Dibujo

draw_set_halign(fa_center);
draw_set_alpha(image_alpha);
draw_set_font(fnt_Vedrana_8_bold);
draw_set_color(c_black);
draw_text(x, y - 16 - modY, string_hash_to_newline(dano));

if (!cura) {
    if (!apunala) {
        draw_set_color(c_red);
    } else {
        draw_set_color(colorApu);
    }
} else {
    draw_set_color(c_white);
}


draw_text(x - 1, y - 15 - modY, string_hash_to_newline(dano));
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_left);

