/// @description  cargarPJs(nroPJ)
/// @param nroPJ
function cargarPJs(argument0) {

	var armaActual;
	var escudoActual;
	var cascoActual;
	var ropaActual;
	var nombre;
	var nroRaza;
	var genero;
	var desnudo;
	var muerto;
	var sprCabeza;
	var pk;

	var imgRopa = -1;
	var imgArma = -1;
	var imgEscudo = -1;
	var imgCasco = -1;

	if (file_exists("partida" + string(argument0) + ".ini")) {

	    dec("partida" + string(argument0) + ".ini");
	    ini_open("partida" + string(argument0) + ".ini");
    
	    armaActual = read("obj_pj", "armaActual", -1);
	    escudoActual = read("obj_pj", "escudoActual", -1);
	    cascoActual = read("obj_pj", "cascoActual", -1);
	    ropaActual = read("obj_pj", "ropaActual", -1);
	    nombre = readS("obj_pj", "nombre", "RESTAURAR_PERSONAJE");
	    nroRaza = read("obj_pj", "nroRaza", 0);
	    genero = read("obj_pj", "genero", 0);
	    desnudo = read("obj_pj", "desnudo", 0);
	    muerto = read("obj_pj", "muerto", 0); 
	    sprCabeza = asset_get_index(readS("obj_pj", "sprCabeza", "spr_cabeza_1"));     
	    pk = read("obj_pj", "pk", 0); 
    
	    if (!muerto) {
    
	        if (cascoActual != -1) {
	            switch (cascoActual) {
	                case 93:
	                    imgCasco = spr_casco_1;
	                    break;
	                case 94:
	                    imgCasco = spr_casco_2;
	                    break;
	                case 95:
	                    imgCasco = spr_casco_3;
	                    break;
	                case 96:
	                    imgCasco = spr_gorro_1;
	                    break;
	                case 97:
	                    imgCasco = spr_gorro_2;
	                    break;
	            }
	        }
    
	        if (escudoActual != -1) {
	            switch (escudoActual) {
	                case 98:
	                    imgEscudo = spr_escudo_1;
	                    break;
	                case 99:
	                    imgEscudo = spr_escudo_2;
	                    break;
	                case 100:
	                    imgEscudo = spr_escudo_3;
	                    break;
	            }
	        }
    
	        if (armaActual != -1) {
	            switch (armaActual) {
	                case 0:
	                    imgArma = spr_arma_1;
	                    break;
	                case 1:
	                    imgArma = spr_arma_1;
	                    break;
	                case 2:
	                    imgArma = spr_arma_2;
	                    break;
	                case 3:
	                    imgArma = spr_arma_3;
	                    break;
	                case 4:
	                    imgArma = spr_arma_3;
	                    break;
	                case 5:
	                    imgArma = spr_arma_4;
	                    break;
	                case 6:
	                    imgArma = spr_arma_5;
	                    break;
	                case 7:
	                    imgArma = spr_arma_6;
	                    break;
	                case 8:
	                    imgArma = spr_arma_6;
	                    break;
	                case 9:
	                    imgArma = spr_arma_7;
	                    break;
	                case 10:
	                    imgArma = spr_arma_8;
	                    break;
	                case 11:
	                    imgArma = spr_arma_9;
	                    break;
	                case 12:
	                    imgArma = spr_arma_10;
	                    break;
	                case 13:
	                    imgArma = spr_arma_11;
	                    break;
	                case 14:
	                    imgArma = spr_arma_12;
	                    break;
	                case 15:
	                    imgArma = spr_arma_13;
	                    break;
	                case 16:
	                    imgArma = spr_arma_14;
	                    break;
	                case 17:
	                    imgArma = spr_arma_15;
	                    break;
	                case 18:
	                    imgArma = spr_arma_16;
	                    break;
	                case 19:
	                    imgArma = spr_arma_17;
	                    break;
	                case 20:
	                    imgArma = spr_arma_18;
	                    break;
	                case 21:
	                    imgArma = spr_arma_19;
	                    break;
	                case 22:
	                    imgArma = spr_arma_20;
	                    break;
	                case 23:
	                    imgArma = spr_arma_21;
	                    break;
	                case 24:
	                    imgArma = spr_arma_22;
	                    break;
	                case 25:
	                    imgArma = spr_arma_23;
	                    break;
	                case 26:
	                    imgArma = spr_arma_24;
	                    break;
	                case 27:
	                    imgArma = spr_arma_25;
	                    break;
	                case 227:
	                    imgArma = spr_arma_26;
	                    break;
	            }
	        }
    
	        if (!desnudo) {
        
	            if (ropaActual != -1) {
	                switch (ropaActual) {
                        
	                    // Túnicas
                
	                    case 33:
	                        imgRopa = spr_tunica_1;
	                        break;
	                    case 34:
	                        imgRopa = spr_tunica_2;
	                        break;
	                    case 35:
	                        imgRopa = spr_tunica_3;
	                        break;
	                    case 36:
	                        imgRopa = spr_tunica_4;
	                        break;
	                    case 37:
	                        imgRopa = spr_tunica_5;
	                        break;
	                    case 38:
	                        imgRopa = spr_tunica_6;
	                        break;
	                    case 39:
	                        imgRopa = spr_tunica_7;
	                        break;
	                    case 40:
	                        imgRopa = spr_tunica_8;
	                        break;
	                    case 41:
	                        imgRopa = spr_tunica_9;
	                        break;
	                    case 42:
	                        imgRopa = spr_tunica_10;
	                        break;
	                    case 43:
	                        imgRopa = spr_tunica_11;
	                        break;
	                    case 44:
	                        imgRopa = spr_tunica_12;
	                        break;
                        
	                    // Ropas
                    
	                    case 45:
	                        imgRopa = spr_ropa_1;
	                        break;
	                    case 46:
	                        imgRopa = spr_ropa_2;
	                        break;
	                    case 47:
	                        imgRopa = spr_ropa_3;
	                        break;
	                    case 48:
	                        imgRopa = spr_ropa_4;
	                        break;
	                    case 49:
	                        imgRopa = spr_ropa_5;
	                        break;
	                    case 50:
	                        imgRopa = spr_ropa_6;
	                        break;
	                    case 51:
	                        imgRopa = spr_ropa_7;
	                        break;
	                    case 52:
	                        imgRopa = spr_ropa_8;
	                        break;
	                    case 53:
	                        imgRopa = spr_ropa_9;
	                        break;
	                    case 54:
	                        imgRopa = spr_ropa_10;
	                        break;
	                    case 55:
	                        imgRopa = spr_ropa_11;
	                        break;
	                    case 56:
	                        imgRopa = spr_ropa_12;
	                        break;
	                    case 57:
	                        imgRopa = spr_ropa_13;
	                        break;
	                    case 58:
	                        imgRopa = spr_ropa_14;
	                        break;
	                    case 59:
	                        imgRopa = spr_ropa_15;
	                        break;
	                    case 60:
	                        imgRopa = spr_ropa_16;
	                        break;
	                    case 61:
	                        imgRopa = spr_ropa_17;
	                        break;
	                    case 62:
	                        imgRopa = spr_ropa_18;
	                        break;
	                    case 63:
	                        imgRopa = spr_ropa_19;
	                        break;
	                    case 64:
	                        imgRopa = spr_ropa_20;
	                        break;
	                    case 65:
	                        imgRopa = spr_ropa_21;
	                        break;
	                    case 66:
	                        imgRopa = spr_ropa_22;
	                        break;
	                    case 67:
	                        imgRopa = spr_ropa_23;
	                        break;
	                    case 68:
	                        imgRopa = spr_ropa_24;
	                        break;
	                    case 69:
	                        imgRopa = spr_ropa_25;
	                        break;
	                    case 70:
	                        imgRopa = spr_ropa_26;
	                        break;
	                    case 71:
	                        imgRopa = spr_ropa_27;
	                        break;
                        
	                    // Armaduras
                    
	                    case 72:
	                        imgRopa = spr_armadura_1;
	                        break;
	                    case 73:
	                        imgRopa = spr_armadura_2;
	                        break;
	                    case 74:
	                        imgRopa = spr_armadura_3;
	                        break;
	                    case 75:
	                        imgRopa = spr_armadura_4;
	                        break;
	                    case 76:
	                        imgRopa = spr_armadura_5;
	                        break;
	                    case 77:
	                        imgRopa = spr_armadura_6;
	                        break;
	                    case 78:
	                        imgRopa = spr_armadura_7;
	                        break;
	                    case 79:
	                        imgRopa = spr_armadura_8;
	                        break;
	                    case 80:
	                        imgRopa = spr_armadura_9;
	                        break;
	                    case 81:
	                        imgRopa = spr_armadura_10;
	                        break;
	                    case 82:
	                        imgRopa = spr_armadura_11;
	                        break;
	                    case 83:
	                        imgRopa = spr_armadura_12;
	                        break;
	                    case 84:
	                        imgRopa = spr_armadura_13;
	                        break;
	                    case 85:
	                        imgRopa = spr_armadura_14;
	                        break;
	                    case 86:
	                        imgRopa = spr_armadura_15;
	                        break;
	                    case 87:
	                        imgRopa = spr_armadura_16;
	                        break;
	                    case 88:
	                        imgRopa = spr_armadura_17;
	                        break;
	                    case 89:
	                        imgRopa = spr_armadura_18;
	                        break;
	                    case 90:
	                        imgRopa = spr_armadura_19;
	                        break;
	                    case 91:
	                        imgRopa = spr_armadura_20;
	                        break;
	                    case 92:
	                        imgRopa = spr_armadura_21;
	                        break;
	                    case 212:
	                        imgRopa = spr_armadura_22;
	                        break;
	                    case 213:
	                        imgRopa = spr_armadura_23;
	                        break;
	                    case 214:
	                        imgRopa = spr_armadura_25;
	                        break;
	                    case 215:
	                        imgRopa = spr_armadura_24;
	                        break;
	                    case 216:
	                        imgRopa = spr_armadura_26;
	                        break;
	                    case 222:
	                        imgRopa = spr_armadura_27;
	                        break;
	                    case 223:
	                        imgRopa = spr_armadura_28;
	                        break;
	                    case 224:
	                        imgRopa = spr_armadura_29;
	                        break;
	                    case 225:
	                        imgRopa = spr_armadura_30;
	                        break;
	                    case 226:
	                        imgRopa = spr_armadura_31;
	                        break;
							
						// Armaduras y túnicas faccionarias
						
						case 164:
							imgRopa = spr_armada_1;
							break;
						case 165:
							imgRopa = spr_armada_13;
							break;
						case 166:
							imgRopa = spr_armada_2;
							break;
						case 167:
							imgRopa = spr_armada_14;
							break;
						case 168:
							imgRopa = spr_armada_3;
							break;
						case 169:
							imgRopa = spr_armada_15;
							break;
						case 170:
							imgRopa = spr_legion_1;
							break;
						case 171:
							imgRopa = spr_legion_13;
							break;
						case 172:
							imgRopa = spr_legion_2;
							break;
						case 173:
							imgRopa = spr_legion_14;
							break;
						case 174:
							imgRopa = spr_legion_3;
							break;
						case 175:
							imgRopa = spr_legion_15;
							break;
						case 176:
							imgRopa = spr_armada_4;
							break;
						case 177:
							imgRopa = spr_armada_16;
							break;
						case 178:
							imgRopa = spr_armada_5;
							break;
						case 179:
							imgRopa = spr_armada_17;
							break;
						case 180:
							imgRopa = spr_armada_6;
							break;
						case 181:
							imgRopa = spr_armada_18;
							break;
						case 182:
							imgRopa = spr_legion_4;
							break;
						case 183:
							imgRopa = spr_legion_16;
							break;
						case 184:
							imgRopa = spr_legion_5;
							break;
						case 185:
							imgRopa = spr_legion_17;
							break;
						case 186:
							imgRopa = spr_legion_6;
							break;
						case 187:
							imgRopa = spr_legion_18;
							break;
						case 188:
							imgRopa = spr_armada_7;
							break;
						case 189:
							imgRopa = spr_armada_19;
							break;
						case 190:
							imgRopa = spr_armada_8;
							break;
						case 191:
							imgRopa = spr_armada_20;
							break;
						case 192:
							imgRopa = spr_armada_9;
							break;
						case 193:
							imgRopa = spr_armada_21;
							break;
						case 194:
							imgRopa = spr_legion_7;
							break;
						case 195:
							imgRopa = spr_legion_19;
							break;
						case 196:
							imgRopa = spr_legion_8;
							break;
						case 197:
							imgRopa = spr_legion_20;
							break;
						case 198:
							imgRopa = spr_legion_9;
							break;
						case 199:
							imgRopa = spr_legion_21;
							break;
						case 200:
							imgRopa = spr_armada_10;
							break;
						case 201:
							imgRopa = spr_armada_22;
							break;
						case 202:
							imgRopa = spr_armada_11;
							break;
						case 203:
							imgRopa = spr_armada_23;
							break;
						case 204:
							imgRopa = spr_armada_12;
							break;
						case 205:
							imgRopa = spr_armada_24;
							break;
						case 206:
							imgRopa = spr_legion_10;
							break;
						case 207:
							imgRopa = spr_legion_22;
							break;
						case 208:
							imgRopa = spr_legion_11;
							break;
						case 209:
							imgRopa = spr_legion_23;
							break;
						case 210:
							imgRopa = spr_legion_12;
							break;
						case 211:
							imgRopa = spr_legion_24;
							break;
                        
	                }
	            } else {
            
	                if (genero == 0) {
	                    if (nroRaza == 0 || nroRaza == 1) {
	                        imgRopa = spr_cuerpo_alto_h;
	                    } else if (nroRaza == 2) {
	                        imgRopa = spr_cuerpo_negro_h;
	                    } else {
	                        imgRopa = spr_cuerpo_bajo_h;
	                    }
	                } else {
	                    if (nroRaza == 0 || nroRaza == 1) {
	                        imgRopa = spr_cuerpo_alto_m;
	                    } else if (nroRaza == 2) {
	                        imgRopa = spr_cuerpo_negro_m;
	                    } else {
	                        imgRopa = spr_cuerpo_bajo_m;
	                    }
	                }
            
	            }
        
	        } else {
        
	            if (genero == 0) {
	                if (nroRaza == 0 || nroRaza == 1) {
	                    imgRopa = spr_cuerpo_alto_h;
	                } else if (nroRaza == 2) {
	                    imgRopa = spr_cuerpo_negro_h;
	                } else {
	                    imgRopa = spr_cuerpo_bajo_h;
	                }
	            } else {
	                if (nroRaza == 0 || nroRaza == 1) {
	                    imgRopa = spr_cuerpo_alto_m;
	                } else if (nroRaza == 2) {
	                    imgRopa = spr_cuerpo_negro_m;
	                } else {
	                    imgRopa = spr_cuerpo_bajo_m;
	                }
	            }
            
	        }
    
	    } else {
	        sprCabeza = spr_cabeza_muerto;
	        imgRopa = spr_muerto;
	    }
    
	    // Guardo los datos
    
	    datosPJ[argument0, 1] = nombre;
	    datosPJ[argument0, 2] = nroRaza;
	    datosPJ[argument0, 3] = sprCabeza;
	    datosPJ[argument0, 4] = pk;
	    datosPJ[argument0, 5] = imgRopa;
	    datosPJ[argument0, 6] = imgArma;
	    datosPJ[argument0, 7] = imgEscudo;
	    datosPJ[argument0, 8] = imgCasco;
    
	    ini_close(); 
	    enc("partida" + string(argument0) + ".ini");
      
	}




}
