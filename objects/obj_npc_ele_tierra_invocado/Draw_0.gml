/// @description Dibuja

draw_self();

// Palabras mágicas

if (dicePalabrasMagicas && salud > 0) {
    draw_set_alpha(1);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_text(x + 1, y - 66, string_hash_to_newline(palabrasMagicas));
    var color = make_color_rgb(19, 215, 209);
    draw_set_color(color);
    draw_set_alpha(0.75);
    draw_text(x, y - 65, string_hash_to_newline(palabrasMagicas));
    draw_set_halign(fa_left);
}

draw_set_alpha(1);