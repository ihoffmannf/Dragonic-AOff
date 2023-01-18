/// @description  Dibujo los skills

if (room == rm_crearPJ) {

    draw_set_color(c_white);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(330, 71, string_hash_to_newline(string(skillsLibres)));
    
    var offset = 14;
    
    draw_text(360, 88 + offset * 0, string_hash_to_newline(string(skills[0])));
    draw_text(360, 88 + offset * 1 + 1, string_hash_to_newline(string(skills[1])));
    draw_text(360, 88 + offset * 2 + 2, string_hash_to_newline(string(skills[2])));
    draw_text(360, 88 + offset * 3 + 3, string_hash_to_newline(string(skills[3])));
    draw_text(360, 88 + offset * 4 + 4, string_hash_to_newline(string(skills[4])));
    draw_text(360, 88 + offset * 5 + 5, string_hash_to_newline(string(skills[5])));
    draw_text(360, 88 + offset * 6 + 7, string_hash_to_newline(string(skills[6])));
    draw_text(360, 88 + offset * 7 + 8, string_hash_to_newline(string(skills[7])));
    draw_text(360, 88 + offset * 8 + 9, string_hash_to_newline(string(skills[8])));
    draw_text(360, 88 + offset * 9 + 10, string_hash_to_newline(string(skills[9])));
    draw_text(360, 88 + offset * 10 + 12, string_hash_to_newline(string(skills[10])));
    draw_text(360, 88 + offset * 11 + 13, string_hash_to_newline(string(skills[11])));
    draw_text(360, 88 + offset * 12 + 14, string_hash_to_newline(string(skills[12])));
    draw_text(360, 88 + offset * 13 + 15, string_hash_to_newline(string(skills[13])));
    draw_text(360, 88 + offset * 14 + 17, string_hash_to_newline(string(skills[14])));
    draw_text(360, 88 + offset * 15 + 18, string_hash_to_newline(string(skills[15])));
    draw_text(360, 88 + offset * 16 + 19, string_hash_to_newline(string(skills[16])));
    draw_text(360, 88 + offset * 17 + 20, string_hash_to_newline(string(skills[17])));
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

}

