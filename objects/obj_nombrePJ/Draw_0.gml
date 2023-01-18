/// @description  Dibujo el nombre

if (room == rm_crearPJ) {

    draw_set_color(c_white);
    
    draw_set_font(fnt_Vedrana_8_bold);
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_text(305, 29, string_hash_to_newline(nombre));
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

}

