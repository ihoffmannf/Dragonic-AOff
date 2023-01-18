/// @description  Dibuja el menú

draw_sprite(bck_pausa, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

__view_set( e__VW.Visible, 1, false );
__view_set( e__VW.WView, 0, 600 );
__view_set( e__VW.HView, 0, 360 );

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_colour(c_white);

// Skills

draw_set_halign(fa_left);

draw_set_font(fnt_Vedrana_5_bold);

draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88, string_hash_to_newline("Magia: " + string(skills[0])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8, string_hash_to_newline("Tácticas de Combate: " + string(skills[1])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 2, string_hash_to_newline("Combate con Armas: " + string(skills[2])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 3, string_hash_to_newline("Meditar: " + string(skills[3])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 4, string_hash_to_newline("Apuñalar: " + string(skills[4])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 5, string_hash_to_newline("Talar: " + string(skills[5])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 6, string_hash_to_newline("Defensa con Escudos: " + string(skills[6])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 7, string_hash_to_newline("Pesca: " + string(skills[7])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 8, string_hash_to_newline("Minería: " + string(skills[8])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 9, string_hash_to_newline("Carpintería: " + string(skills[9])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 10, string_hash_to_newline("Herrería: " + string(skills[10])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 11, string_hash_to_newline("Domar Animales: " + string(skills[11])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 12, string_hash_to_newline("Arquería: " + string(skills[12])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 13, string_hash_to_newline("Combate sin Armas: " + string(skills[13])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 14, string_hash_to_newline("Navegación: " + string(skills[14])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 15, string_hash_to_newline("Sastrería: " + string(skills[15])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 16, string_hash_to_newline("Comercio: " + string(skills[16])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 88 + 8 * 17, string_hash_to_newline("Resistencia Mágica: " + string(skills[17])));

// Datos PJ

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fnt_Vedrana_5_bold);

draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264, string_hash_to_newline("Experiencia: " + string(experiencia) + "/" + string(expLvl[nivel])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 8, string_hash_to_newline("Fuerza: " + string(atributos[0])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 16, string_hash_to_newline("Agilidad: " + string(atributos[1])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 24, string_hash_to_newline("Inteligencia: " + string(atributos[2])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 32, string_hash_to_newline("Carisma: " + string(atributos[3])));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 40, string_hash_to_newline("Constitución: " + string(atributos[4])));

claseTxt = "";

switch (clase) {
    case 0:
        claseTxt = "Arquero";
        break;
    case 1:
        claseTxt = "Asesino";
        break;
    case 2:
        claseTxt = "Bardo";
        break;
    case 3:
        claseTxt = "Cazador";
        break;
    case 4:
        claseTxt = "Clérigo";
        break;
    case 5:
        claseTxt = "Druida";
        break;
    case 6:
        claseTxt = "Guerrero";
        break;
    case 7:
        claseTxt = "Mago";
        break;
    case 8:
        claseTxt = "Paladín";
        break;
}

draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 48, string_hash_to_newline("Clase: " + claseTxt));

var totalMatados = ciudadanosMatados + criminalesMatados;

draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 56, string_hash_to_newline("Personas matadas: " + string(totalMatados)));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 64, string_hash_to_newline("Ciudadanos matados: " + string(ciudadanosMatados)));
draw_text(__view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 264 + 72, string_hash_to_newline("Criminales matados: " + string(criminalesMatados)));

// Mapa

draw_set_halign(fa_center);
draw_sprite(spr_mapa, roomDesconocida, __view_get( e__VW.XView, 0 ) + 230, __view_get( e__VW.YView, 0 ) + 96);

draw_set_valign(fa_middle);
draw_set_font(fnt_Vedrana_5_bold);
draw_text_ext(__view_get( e__VW.XView, 0 ) + 295, __view_get( e__VW.YView, 0 ) + 200, string_hash_to_newline(nombreMapaPausa), 8, 60);
draw_set_valign(fa_top);

if (dibuja) {

    draw_set_valign(fa_top);
    draw_set_halign(fa_center);
    draw_set_font(fnt_Vedrana_8_bold);
    
    if (pudoGuardar) {
        draw_set_colour(c_lime);
        draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + 2, string_hash_to_newline("Partida guardada"));
    } else {
        draw_set_colour(c_red);
        if (IACerca) {
            draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + 2, string_hash_to_newline("No podés guardar la partida habiendo enemigos cerca tuyo"));
        } else {
            draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + 2, string_hash_to_newline("No se pudo guardar la partida"));
        }
    }
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

}

