/// @description  Dibujo

if (invisible || muerto) {
    image_alpha = 0.5; 
} else {
    image_alpha = 1;
}

if (muerto && navega) {
    image_alpha = 0.85; 
}

draw_set_alpha(image_alpha);   

draw_self();

if (!navega) {

    if (!muerto) {
    
        if (desnudo) {
        
            if (genero == 0) {
                if (nroRaza == 0 || nroRaza == 1) {
                    sprite_index = spr_cuerpo_alto_h;
                } else if (nroRaza == 2) {
                    sprite_index = spr_cuerpo_negro_h;
                } else {
                    sprite_index = spr_cuerpo_bajo_h;
                }
            } else {
                if (nroRaza == 0 || nroRaza == 1) {
                    sprite_index = spr_cuerpo_alto_m;
                } else if (nroRaza == 2) {
                    sprite_index = spr_cuerpo_negro_m;
                } else {
                    sprite_index = spr_cuerpo_bajo_m;
                }
            }
            
            ropaIndexada = false;
            
        } else if (!ropaIndexada) {
        
            var indiceRopa = -1;
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (
                (obj_inventario.tipoInv[i] == "ropa") &&
                (obj_inventario.equipadoInv[i])
                ) {
                    indiceRopa = obj_inventario.indiceInv[i];
                    break;
                }
            }
            
            if (indiceRopa != -1) {
            
                ropaIndexada = true;
            
                switch (indiceRopa) {
                
                    // Túnicas
                
                    case 33:
                        sprite_index = spr_tunica_1;
                        break;
                    case 34:
                        sprite_index = spr_tunica_2;
                        break;
                    case 35:
                        sprite_index = spr_tunica_3;
                        break;
                    case 36:
                        sprite_index = spr_tunica_4;
                        break;
                    case 37:
                        sprite_index = spr_tunica_5;
                        break;
                    case 38:
                        sprite_index = spr_tunica_6;
                        break;
                    case 39:
                        sprite_index = spr_tunica_7;
                        break;
                    case 40:
                        sprite_index = spr_tunica_8;
                        break;
                    case 41:
                        sprite_index = spr_tunica_9;
                        break;
                    case 42:
                        sprite_index = spr_tunica_10;
                        break;
                    case 43:
                        sprite_index = spr_tunica_11;
                        break;
                    case 44:
                        sprite_index = spr_tunica_12;
                        break;
                        
                    // Ropas
                    
                    case 45:
                        sprite_index = spr_ropa_1;
                        break;
                    case 46:
                        sprite_index = spr_ropa_2;
                        break;
                    case 47:
                        sprite_index = spr_ropa_3;
                        break;
                    case 48:
                        sprite_index = spr_ropa_4;
                        break;
                    case 49:
                        sprite_index = spr_ropa_5;
                        break;
                    case 50:
                        sprite_index = spr_ropa_6;
                        break;
                    case 51:
                        sprite_index = spr_ropa_7;
                        break;
                    case 52:
                        sprite_index = spr_ropa_8;
                        break;
                    case 53:
                        sprite_index = spr_ropa_9;
                        break;
                    case 54:
                        sprite_index = spr_ropa_10;
                        break;
                    case 55:
                        sprite_index = spr_ropa_11;
                        break;
                    case 56:
                        sprite_index = spr_ropa_12;
                        break;
                    case 57:
                        sprite_index = spr_ropa_13;
                        break;
                    case 58:
                        sprite_index = spr_ropa_14;
                        break;
                    case 59:
                        sprite_index = spr_ropa_15;
                        break;
                    case 60:
                        sprite_index = spr_ropa_16;
                        break;
                    case 61:
                        sprite_index = spr_ropa_17;
                        break;
                    case 62:
                        sprite_index = spr_ropa_18;
                        break;
                    case 63:
                        sprite_index = spr_ropa_19;
                        break;
                    case 64:
                        sprite_index = spr_ropa_20;
                        break;
                    case 65:
                        sprite_index = spr_ropa_21;
                        break;
                    case 66:
                        sprite_index = spr_ropa_22;
                        break;
                    case 67:
                        sprite_index = spr_ropa_23;
                        break;
                    case 68:
                        sprite_index = spr_ropa_24;
                        break;
                    case 69:
                        sprite_index = spr_ropa_25;
                        break;
                    case 70:
                        sprite_index = spr_ropa_26;
                        break;
                    case 71:
                        sprite_index = spr_ropa_27;
                        break;
                        
                    // Armaduras
                    
                    case 72:
                        sprite_index = spr_armadura_1;
                        break;
                    case 73:
                        sprite_index = spr_armadura_2;
                        break;
                    case 74:
                        sprite_index = spr_armadura_3;
                        break;
                    case 75:
                        sprite_index = spr_armadura_4;
                        break;
                    case 76:
                        sprite_index = spr_armadura_5;
                        break;
                    case 77:
                        sprite_index = spr_armadura_6;
                        break;
                    case 78:
                        sprite_index = spr_armadura_7;
                        break;
                    case 79:
                        sprite_index = spr_armadura_8;
                        break;
                    case 80:
                        sprite_index = spr_armadura_9;
                        break;
                    case 81:
                        sprite_index = spr_armadura_10;
                        break;
                    case 82:
                        sprite_index = spr_armadura_11;
                        break;
                    case 83:
                        sprite_index = spr_armadura_12;
                        break;
                    case 84:
                        sprite_index = spr_armadura_13;
                        break;
                    case 85:
                        sprite_index = spr_armadura_14;
                        break;
                    case 86:
                        sprite_index = spr_armadura_15;
                        break;
                    case 87:
                        sprite_index = spr_armadura_16;
                        break;
                    case 88:
                        sprite_index = spr_armadura_17;
                        break;
                    case 89:
                        sprite_index = spr_armadura_18;
                        break;
                    case 90:
                        sprite_index = spr_armadura_19;
                        break;
                    case 91:
                        sprite_index = spr_armadura_20;
                        break;
                    case 92:
                        sprite_index = spr_armadura_21;
                        break;
                    case 212:
                        sprite_index = spr_armadura_22;
                        break;
                    case 213:
                        sprite_index = spr_armadura_23;
                        break;
                    case 214:
                        sprite_index = spr_armadura_25;
                        break;
                    case 215:
                        sprite_index = spr_armadura_24;
                        break;
                    case 216:
                        sprite_index = spr_armadura_26;
                        break;
                    case 222:
                        sprite_index = spr_armadura_27;
                        break;
                    case 223:
                        sprite_index = spr_armadura_28;
                        break;
                    case 224:
                        sprite_index = spr_armadura_29;
                        break;
                    case 225:
                        sprite_index = spr_armadura_30;
                        break;
                    case 226:
                        sprite_index = spr_armadura_31;
                        break;
                        
                    // Armaduras faccionarias
                        
                    case 164:
                       sprite_index = spr_armada_1;
                       break;
                    case 165:
                       sprite_index = spr_armada_13;
                       break;
                    case 166:
                       sprite_index = spr_armada_2;
                       break;
                    case 167:
                       sprite_index = spr_armada_14;
                       break;
                    case 168:
                       sprite_index = spr_armada_3;
                       break;
                    case 169:
                        sprite_index = spr_armada_15;
                        break;
                    case 170:
                        sprite_index = spr_legion_1;
                        break;
                    case 171:
                        sprite_index = spr_legion_13;
                        break;
                    case 172:
                        sprite_index = spr_legion_2;
                        break;
                    case 173:
                        sprite_index = spr_legion_14;
                        break;
                    case 174:
                        sprite_index = spr_legion_3;
                        break;
                    case 175:
                        sprite_index = spr_legion_15;
                        break;
                    case 176:
                        sprite_index = spr_armada_4;
                        break;
                    case 177:
                        sprite_index = spr_armada_16;
                        break;
                    case 178:
                        sprite_index = spr_armada_5;
                        break;
                    case 179:
                        sprite_index = spr_armada_17;
                        break;
                    case 180:
                        sprite_index = spr_armada_6;
                        break;
                    case 181:
                        sprite_index = spr_armada_18;
                        break;
                    case 182:
                        sprite_index = spr_legion_4;
                        break;
                    case 183:
                        sprite_index = spr_legion_16;
                        break;
                    case 184:
                        sprite_index = spr_legion_5;
                        break;
                    case 185:
                        sprite_index = spr_legion_17;
                        break;
                    case 186:
                        sprite_index = spr_legion_6;
                        break;
                    case 187:
                        sprite_index = spr_legion_18;
                        break;
                    case 188:
                        sprite_index = spr_armada_7;
                        break;
                    case 189:
                        sprite_index = spr_armada_19;
                        break;
                    case 190:
                        sprite_index = spr_armada_8;
                        break;
                    case 191:
                        sprite_index = spr_armada_20;
                        break;
                    case 192:
                        sprite_index = spr_armada_9;
                        break;
                    case 193:
                        sprite_index = spr_armada_21;
                        break;
                    case 194:
                        sprite_index = spr_legion_7;
                        break;
                    case 195:
                        sprite_index = spr_legion_19;
                        break;
                    case 196:
                        sprite_index = spr_legion_8;
                        break;
                    case 197:
                        sprite_index = spr_legion_20;
                        break;
                    case 198:
                        sprite_index = spr_legion_9;
                        break;
                    case 199:
                        sprite_index = spr_legion_21;
                        break;
                    case 200:
                        sprite_index = spr_armada_10;
                        break;
                    case 201:
                        sprite_index = spr_armada_22;
                        break;
                    case 202:
                        sprite_index = spr_armada_11;
                        break;
                    case 203:
                        sprite_index = spr_armada_23;
                        break;
                    case 204:
                        sprite_index = spr_armada_12;
                        break;
                    case 205:
                        sprite_index = spr_armada_24;
                        break;
                    case 206:
                        sprite_index = spr_legion_10;
                        break;
                    case 207:
                        sprite_index = spr_legion_22;
                        break;
                    case 208:
                        sprite_index = spr_legion_11;
                        break;
                    case 209:
                        sprite_index = spr_legion_23;
                        break;
                    case 210:
                        sprite_index = spr_legion_12;
                        break;
                    case 211:
                        sprite_index = spr_legion_24;
                        break;
                        
                }
                
            }
            
        }
    
        // Cabeza
        
        if (nroRaza < 3) {
        
            if (image_index >= 0 && image_index <= 4) {
                draw_sprite(sprCabeza, 0, x, y - 36);
            } else if (image_index >= 5 && image_index <= 9) {
                draw_sprite(sprCabeza, 1, x, y - 36);
            } else if (image_index >= 10 && image_index <= 14) {
                draw_sprite(sprCabeza, 2, x, y - 36);
            } else if (image_index >= 15 && image_index <= 19) {
                draw_sprite(sprCabeza, 3, x, y - 36);
            }
            
        } else {
        
            if (image_index >= 0 && image_index <= 4) {
                draw_sprite(sprCabeza, 0, x, y - 28);
            } else if (image_index >= 5 && image_index <= 9) {
                draw_sprite(sprCabeza, 1, x, y - 28);
            } else if (image_index >= 10 && image_index <= 14) {
                draw_sprite(sprCabeza, 2, x, y - 28);
            } else if (image_index >= 15 && image_index <= 19) {
                draw_sprite(sprCabeza, 3, x, y - 28);
            }
            
        }
        
        // Casco / Gorro
        
        if (cascoActual != -1) {
        
            var sprCascoGorro = 0;
            
            switch (cascoActual) {
                case 93:
                    sprCascoGorro = spr_casco_1;
                    break;
                case 94:
                    sprCascoGorro = spr_casco_2;
                    break;
                case 95:
                    sprCascoGorro = spr_casco_3;
                    break;
                case 96:
                    sprCascoGorro = spr_gorro_1;
                    break;
                case 97:
                    sprCascoGorro = spr_gorro_2;
                    break;
            }
            
            if (nroRaza < 3) {
            
                if (image_index >= 0 && image_index <= 4) {
                    draw_sprite(sprCascoGorro, 0, x, y - 36);
                } else if (image_index >= 5 && image_index <= 9) {
                    draw_sprite(sprCascoGorro, 1, x, y - 36);
                } else if (image_index >= 10 && image_index <= 14) {
                    draw_sprite(sprCascoGorro, 2, x, y - 36);
                } else if (image_index >= 15 && image_index <= 19) {
                    draw_sprite(sprCascoGorro, 3, x, y - 36);
                }
                
            } else {
            
                if (image_index >= 0 && image_index <= 4) {
                    draw_sprite(sprCascoGorro, 0, x, y - 28);
                } else if (image_index >= 5 && image_index <= 9) {
                    draw_sprite(sprCascoGorro, 1, x, y - 28);
                } else if (image_index >= 10 && image_index <= 14) {
                    draw_sprite(sprCascoGorro, 2, x, y - 28);
                } else if (image_index >= 15 && image_index <= 19) {
                    draw_sprite(sprCascoGorro, 3, x, y - 28);
                }
                
            }
        
        }
        
    } else {
        
        sprite_index = spr_muerto;
        
        if (image_index >= 0 && image_index <= 4) {
            draw_sprite(spr_cabeza_muerto, 0, x, y - 27);
        } else if (image_index >= 5 && image_index <= 9) {
            draw_sprite(spr_cabeza_muerto, 1, x, y - 27);
        } else if (image_index >= 10 && image_index <= 14) {
            draw_sprite(spr_cabeza_muerto, 2, x, y - 27);
        } else if (image_index >= 15 && image_index <= 19) {
            draw_sprite(spr_cabeza_muerto, 3, x, y - 27);
        }
        
        draw_set_alpha(1);
        
    }

} else {

    if (!muerto) {
        if (esArmada) {
            sprite_index = spr_barca_Ciuda;
        } else if (esLegion) {
            sprite_index = spr_barca_PK;
        } else {
            sprite_index = spr_barca;
        }
    } else {
        sprite_index = spr_barca_muerto;
    }
    ropaIndexada = false;
    
}

// Nombre

draw_set_halign(fa_center);
draw_set_font(fnt_Vedrana_8_bold);
    
draw_set_color(c_black);
draw_text(x + 1, y + 1, string_hash_to_newline(nombre));
    
if (!invisible) {
    if (!pk) {
        if (esArmada) {
            var color = make_color_rgb(42, 187, 192);   
        } else {
            var color = make_color_rgb(65, 134, 175);
        }
    } else {
        if (esLegion) {
            var color = make_color_rgb(202, 87, 97);   
        } else {
            var color = make_color_rgb(199, 16, 26);
        }
    }
} else {
    var color = c_yellow;
}
    
draw_set_color(color);
draw_text(x, y + 2, string_hash_to_newline(nombre));
if (obj_pj.insigniaPionero && obj_opciones.opcionInsigniaPionero) 
	draw_sprite(spr_insignia, 0, x - floor(string_width(nombre) / 2) - 12, y + 3)
    
if (esLegion) {
    draw_set_color(c_black);
    draw_text(x + 1, y + 12, string_hash_to_newline("<Legión Oscura>"));
    draw_set_color(color);
    draw_text(x, y + 13, string_hash_to_newline("<Legión Oscura>"));
} else if (esArmada) {
    draw_set_color(c_black);
    draw_text(x + 1, y + 12, string_hash_to_newline("<Armada Imperial>"));
    draw_set_color(color);
    draw_text(x, y + 13, string_hash_to_newline("<Armada Imperial>"));
}

// Palabras mágicas

if (dicePalabrasMagicas) {
    //draw_set_font(fnt_Vedrana_7_bold);
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_text(x + 1, y - 66, string_hash_to_newline(palabrasMagicas));
    var color = make_color_rgb(19, 215, 209);
    draw_set_color(color);
    draw_set_alpha(0.75);
    draw_text(x, y - 65, string_hash_to_newline(palabrasMagicas));
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}

image_alpha = 1;
draw_set_alpha(image_alpha);

