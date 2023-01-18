/// @description  dibujarIA()
function dibujarIA() {

	if (!muerto) {

	    if (!enBarca) {
	        switch (eqRopa) { 
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
	            case 43:
	                sprite_index = spr_tunica_11;
	                break;
	            case 44:
	                sprite_index = spr_tunica_12;
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
	            case 72:
	                sprite_index = spr_armadura_1;
	                break;
	            case 73:
	                sprite_index = spr_armadura_2;
	                break;
	            case 75:
	                sprite_index = spr_armadura_4;
	                break;
	            case 76:
	                sprite_index = spr_armadura_5;
	                break;
	            case 83:
	                sprite_index = spr_armadura_12;
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
        
	        var sprCascoGorro = -1;
        
	        if (eqCascoGorro != -1) {
	            switch (eqCascoGorro) {
	                case 93:
	                    sprCascoGorro = spr_casco_1;
	                    break;
	                case 96:
	                    sprCascoGorro = spr_gorro_1;
	                    break;
	            }
	        }    
            
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
        
	            if (sprCascoGorro != -1) {
        
	                if (image_index >= 0 && image_index <= 4) {
	                    draw_sprite(sprCascoGorro, 0, x, y - 36);
	                } else if (image_index >= 5 && image_index <= 9) {
	                    draw_sprite(sprCascoGorro, 1, x, y - 36);
	                } else if (image_index >= 10 && image_index <= 14) {
	                    draw_sprite(sprCascoGorro, 2, x, y - 36);
	                } else if (image_index >= 15 && image_index <= 19) {
	                    draw_sprite(sprCascoGorro, 3, x, y - 36);
	                }
            
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
        
	            if (sprCascoGorro != -1) {
        
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
	        sprite_index = spr_barca;
	    }
    
	} else {
        
	    if (!enBarca) {
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
	    } else {
	        sprite_index = spr_barca_muerto;
	    }

	}



}
