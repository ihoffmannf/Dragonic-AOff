/// @description  nombreItem(indiceItem)
/// @param indiceItem
function nombreItem(argument0) {

	var nombre = "";

	switch (argument0) {
        
	    // Armas (Cuerpo a cuerpo, báculos, arcos)
    
	    case 0:
	        nombre = "Daga";
	        break;
	    case 1:
	        nombre = "Daga +1";
	        break;
	    case 2:
	        nombre = "Daga +2";
	        break;
	    case 3:
	        nombre = "Daga +3";
	        break;
	    case 4:
	        nombre = "Daga +4";
	        break;
	    case 5:
	        nombre = "Daga Templaria";
	        break;
	    case 6:
	        nombre = "Daga Infernal";
	        break;
	    case 7:
	        nombre = "Espada Corta";
	        break;
	    case 8:
	        nombre = "Espada Larga";
	        break;
	    case 9:
	        nombre = "Hacha Orca";
	        break;
	    case 10:
	        nombre = "Hacha Larga";
	        break;
	    case 11:
	        nombre = "Sable";
	        break;
	    case 12:
	        nombre = "Hacha Bárbara";
	        break;
	    case 13:
	        nombre = "Hacha Doble Filo";
	        break;
	    case 14:
	        nombre = "Cimitarra";
	        break;
	    case 15:
	        nombre = "Espada de Plata";
	        break;
	    case 16:
	        nombre = "Espada de Plata +1";
	        break;
	    case 17:
	        nombre = "Espada Neithan";
	        break;
	    case 18:
	        nombre = "Vara de Fresno";
	        break;
	    case 19:
	        nombre = "Bastón Nudoso";
	        break;
	    case 20:
	        nombre = "Báculo Engarzado";
	        break;
	    case 227:
	        nombre = "Báculo Delideral";
	        break;
	    case 21:
	        nombre = "Arco Simple";
	        break;
	    case 22:
	        nombre = "Arco Simple Reforzado";
	        break;
	    case 23:
	        nombre = "Arco Compuesto";
	        break;
	    case 24:
	        nombre = "Arco de las Tinieblas";
	        break;
	    case 25:
	        nombre = "Arco de la Marca";
	        break;
	    case 26:
	        nombre = "Arco Largo Engarzado";
	        break;
	    case 27:
	        nombre = "Arco Élfico";
	        break;
        
	    // Piel de lobo y flechas
        
	    case 28:
	        nombre = "Piel de Lobo";
	        break;
	    case 29:
	        nombre = "Flecha";
	        break;
	    case 30:
	        nombre = "Flecha +1";
	        break;
	    case 31:
	        nombre = "Flecha +2";
	        break;
	    case 32:
	        nombre = "Flecha Incendiaria";
	        break;
	    case 217:
	        nombre = "Flecha Paralizante";
	        break;
        
	    // Túnicas, ropas y armaduras
        
	    case 33:
	        nombre = "Túnica Roja";
	        break;
	    case 34:
	        nombre = "Túnica Roja (E/G)";
	        break;
	    case 35:
	        nombre = "Túnica de Monje";
	        break;
	    case 36:
	        nombre = "Túnica de Mago";
	        break;
	    case 37:
	        nombre = "Túnica Morghai";
	        break;
	    case 38:
	        nombre = "Túnica Morghai (E/G)";
	        break;
	    case 39:
	        nombre = "Túnica de la Cruz";
	        break;
	    case 40:
	        nombre = "Túnica Azul";
	        break;
	    case 41:
	        nombre = "Túnica Legendaria";
	        break;
	    case 42:
	        nombre = "Túnica Legendaria (E/G)";
	        break;
	    case 43:
	        nombre = "Túnica de Druida";
	        break;
	    case 44:
	        nombre = "Túnica de Druida (E/G)";
	        break;
	    case 45:
	        nombre = "Ropa Común";
	        break;
	    case 46:
	        nombre = "Ropa Común";
	        break;
	    case 47:
	        nombre = "Ropa Común";
	        break;
	    case 48:
	        nombre = "Ropa Común (M-H/E)";
	        break;
	    case 49:
	        nombre = "Ropa Común (E/G)";
	        break;
	    case 50:
	        nombre = "Ropa Común (M-E/G)";
	        break;
	    case 51:
	        nombre = "Ropa de Clan (H/E)";
	        break;
	    case 52:
	        nombre = "Vestido Azul (M-H/E)";
	        break;
	    case 53:
	        nombre = "Ropa de Pordiosero (H/E)";
	        break;
	    case 54:
	        nombre = "Ropa de Obispo";
	        break;
	    case 55:
	        nombre = "Ropa de Campesino";
	        break;
	    case 56:
	        nombre = "Ropa de Campesino (E/G)";
	        break;
	    case 57:
	        nombre = "Ropa de Carpintero";
	        break;
	    case 58:
	        nombre = "Ropa de Minero";
	        break;
	    case 59:
	        nombre = "Ropa de Minero (E/G)";
	        break;
	    case 60:
	        nombre = "Vestido Negro (M-E/G)";
	        break;
	    case 61:
	        nombre = "Vestido Indulgente (M-H/E)";
	        break;
	    case 62:
	        nombre = "Ropa Estuario (M-H/E)";
	        break;
	    case 63:
	        nombre = "White Lady (M-H/E)";
	        break;
	    case 64:
	        nombre = "Vestido de Novia Sensual (M-H/E)";
	        break;
	    case 65:
	        nombre = "Vestido de Novia Sensual (M-EO)";
	        break;
	    case 66:
	        nombre = "Vestido de Bruja (M-H/E)";
	        break;
	    case 67:
	        nombre = "Vestido de Bruja (M-EO)";
	        break;
	    case 68:
	        nombre = "Ropa Invernal";
	        break;
	    case 69:
	        nombre = "Ropa Invernal (M)";
	        break;
	    case 70:
	        nombre = "Ropa Invernal (E/G)";
	        break;
	    case 71:
	        nombre = "Ropa Común (M-EO)";
	        break;
	    case 72:
	        nombre = "Armadura de Cuero (H/E)";
	        break;
	    case 73:
	        nombre = "Armadura de Cuero (M-H/E)";
	        break;
	    case 74:
	        nombre = "Armadura de Cuero (E/G)";
	        break;
	    case 75:
	        nombre = "Cota de Mallas";
	        break;
	    case 76:
	        nombre = "Cota de Mallas (M-H/E)";
	        break;
	    case 77:
	        nombre = "Cota de Mallas (E/G)";
	        break;
	    case 78:
	        nombre = "Armadura de las Sombras";
	        break;
	    case 79:
	        nombre = "Armadura de Placas";
	        break;
	    case 80:
	        nombre = "Armadura de Placas (E/G)";
	        break;
	    case 81:
	        nombre = "Armadura de Placas Azul (M)";
	        break;
	    case 82:
	        nombre = "Armadura de Placas Roja (M-H/E)";
	        break;
	    case 83:
	        nombre = "Armadura de Cazador (H/E)";
	        break;
	    case 84:
	        nombre = "Armadura de Cazador (E/G)";
	        break;
	    case 85:
	        nombre = "Armadura de Herrero";
	        break;
	    case 86:
	        nombre = "Armadura de la Ciénaga";
	        break;
	    case 87:
	        nombre = "Trampa Visual (M-E/H)";
	        break;
	    case 88:
	        nombre = "Armadura de Placas +1";
	        break;
	    case 89:
	        nombre = "Armadura Bruñida";
	        break;
	    case 90:
	        nombre = "Armadura de Placas +2";
	        break;
	    case 91:
	        nombre = "Armadura Escarlata";
	        break;
	    case 92:
	        nombre = "Armadura Legendaria";
	        break;
		case 212:
			nombre = "Armadura de Cuero (EO)";
			break;
		case 213:
			nombre = "Armadura de Cuero (M-EO)";
			break;
		case 214:
			nombre = "Cota de Mallas (M-EO)";
			break;
		case 215:
			nombre = "Armadura de Cazador (EO)";
			break;
		case 216:
			nombre = "Armadura de Placas Roja (M-EO)";
			break;
		case 222:
			nombre = "Armadura Dragonic";
			break;
		case 223:
			nombre = "Armadura Dragonic (M)";
			break;
		case 224:
			nombre = "Armadura Dragonic (E/G)";
			break;
		case 225:
			nombre = "Túnica Dragonic";
			break;
		case 226:
			nombre = "Túnica Dragonic (E/G)";
			break;
        
	    // Cascos y gorros
    
	    case 93:
	        nombre = "Casco de Hierro";
	        break;
	    case 94:
	        nombre = "Casco de Hierro Completo";
	        break;
	    case 95:
	        nombre = "Casco de Plata";
	        break;
	    case 96:
	        nombre = "Sombrero de Principiante";
	        break;
	    case 97:
	        nombre = "Sombrero de Hechicero";
	        break;
        
	    // Escudos
    
	    case 98:
	        nombre = "Escudo de Tortuga";
	        break;
	    case 99:
	        nombre = "Escudo de Hierro";
	        break;
	    case 100:
	        nombre = "Escudo Imperial";
	        break;
        
	    // Comida
    
	    case 101:
	        nombre = "Manzana";
	        break;
	    case 102:
	        nombre = "Porción de Tarta";
	        break;
	    case 103:
	        nombre = "Frutas del Bosque";
	        break;
	    case 104:
	        nombre = "Pan de Trigo";
	        break;
	    case 105:
	        nombre = "Pan de Maíz";
	        break;
	    case 106:
	        nombre = "Pastel";
	        break;
	    case 107:
	        nombre = "Pollo";
	        break;
	    case 108:
	        nombre = "Chuleta";
	        break;
	    case 109:
	        nombre = "Queso de Cabra";
	        break;
	    case 110:
	        nombre = "Sandía";
	        break;
	    case 111:
	        nombre = "Merluza";
	        break;
	    case 112:
	        nombre = "Pejerrey";
	        break;
	    case 113:
	        nombre = "Pez Espada";
	        break;
	    case 114:
	        nombre = "Salmón";
	        break;
	    case 115:
	        nombre = "Caballito de Mar";
	        break;
        
	    // Bebida
    
	    case 116:
	        nombre = "Agua";
	        break;
	    case 117:
	        nombre = "Cerveza";
	        break;
	    case 118:
	        nombre = "Vino";
	        break;
	    case 119:
	        nombre = "Jugo de Frutas";
	        break;
        
	    // Hechizos
    
	    case 120:
	        nombre = "Curar Veneno";
	        break;
	    case 121:
	        nombre = "Curar Heridas Leves";
	        break;
	    case 122:
	        nombre = "Curar Heridas Graves";
	        break;
	    case 123:
	        nombre = "Remover Parálisis";
	        break;
	    case 124:
	        nombre = "Invisibilidad";
	        break;
	    case 125:
	        nombre = "Dardo Mágico";
	        break;
	    case 126:
	        nombre = "Flecha Mágica";
	        break;
	    case 127:
	        nombre = "Flecha Eléctrica";
	        break;
	    case 128:
	        nombre = "Misil Mágico";
	        break;
	    case 129:
	        nombre = "Tormenta de Fuego";
	        break;
	    case 130:
	        nombre = "Descarga Eléctrica";
	        break;
	    case 131:
	        nombre = "Apocalipsis";
	        break;
	    case 132:
	        nombre = "Paralizar";
	        break;
	    case 133:
	        nombre = "Inmovilizar";
	        break;
	    case 134:
	        nombre = "Llamado a la Naturaleza";
	        break;
	    case 135:
	        nombre = "Invocar Zombies";
	        break;
	    case 136:
	        nombre = "Invocar Elemental de Agua";
	        break;
	    case 137:
	        nombre = "Invocar Elemental de Tierra";
	        break;
	    case 138:
	        nombre = "Invocar Elemental de Fuego";
	        break;
	    case 139:
	        nombre = "Invocar Mascotas";
	        break;
        
	    // Laúd
        
	    case 140:
	        nombre = "Laúd";
	        break;
        
	    // Pociones
        
	    case 141:
	        nombre = "Poción Roja";
	        break;
	    case 142:
	        nombre = "Poción Azul";
	        break; 
	    case 143:
	        nombre = "Poción Violeta";
	        break;
	    case 218:
	        nombre = "Poción Amarilla";
	        break;
	    case 219:
	        nombre = "Poción Verde";
	        break;
	    case 220:
	        nombre = "Poción Negra";
	        break;
	    case 221:
	        nombre = "Poción Blanca";
	        break;
        
	    // Barca
    
	    case 144:
	        nombre = "Barca";
	        break;
        
	    // Runa
    
	    case 145:
	        nombre = "Runa de Resurrección";
	        break;
        
	    // Trabajos
    
	    case 146:
	        nombre = "Leña";
	        break;
	    case 147:
	        nombre = "Hacha de Talador";
	        break;
	    case 148:
	        nombre = "Minerales de Hierro";
	        break;
	    case 149:
	        nombre = "Minerales de Plata";
	        break;
	    case 150:
	        nombre = "Minerales de Oro";
	        break;
	    case 151:
	        nombre = "Lingote de Hierro";
	        break;
	    case 152:
	        nombre = "Lingote de Plata";
	        break;
	    case 153:
	        nombre = "Lingote de Oro";
	        break;
	    case 154:
	        nombre = "Piquete de Minero";
	        break;
	    case 155:
	        nombre = "Caña de Pesca";
	        break;
	    case 156:
	        nombre = "Red de Pesca";
	        break;
	    case 157:
	        nombre = "Serrucho de Carpintero";
	        break;
	    case 158:
	        nombre = "Martillo de Herrero";
	        break;
	    case 159:
	        nombre = "Costurero";
	        break;
	    case 160:
	        nombre = "Piel de Oso Pardo";
	        break;
	    case 161:
	        nombre = "Piel de Oso Polar";
	        break;
	    case 162:
	        nombre = "Piel de Lobo Invernal";
	        break;
	    case 163:
	        nombre = "Escamas de Dragonic";
	        break;
	    case 164:
	        nombre = "Armadura Imperial 3° Jerarquía";
	        break;
	    case 165:
	        nombre = "Armadura Imperial 3° Jerarquía (E/G)";
	        break;
	    case 166:
	        nombre = "Armadura Imperial 2° Jerarquía";
	        break;
	    case 167:
	        nombre = "Armadura Imperial 2° Jerarquía (E/G)";
	        break;
	    case 168:
	        nombre = "Armadura Imperial 1° Jerarquía";
	        break;
	    case 169:
	        nombre = "Armadura Imperial 1° Jerarquía (E/G)";
	        break;
	    case 170:
	        nombre = "Armadura Legionaria 3° Jerarquía";
	        break;
	    case 171:
	        nombre = "Armadura Legionaria 3° Jerarquía (E/G)";
	        break;
	    case 172:
	        nombre = "Armadura Legionaria 2° Jerarquía";
	        break;
	    case 173:
	        nombre = "Armadura Legionaria 2° Jerarquía (E/G)";
	        break;
	    case 174:
	        nombre = "Armadura Legionaria 1° Jerarquía";
	        break;
	    case 175:
	        nombre = "Armadura Legionaria 1° Jerarquía (E/G)";
	        break;
	    case 176:
	        nombre = "Armadura Imperial 3° Jerarquía";
	        break;
	    case 177:
	        nombre = "Armadura Imperial 3° Jerarquía (E/G)";
	        break;
	    case 178:
	        nombre = "Armadura Imperial 2° Jerarquía";
	        break;
	    case 179:
	        nombre = "Armadura Imperial 2° Jerarquía (E/G)";
	        break;
	    case 180:
	        nombre = "Armadura Imperial 1° Jerarquía";
	        break;
	    case 181:
	        nombre = "Armadura Imperial 1° Jerarquía (E/G)";
	        break;
	    case 182:
	        nombre = "Armadura Legionaria 3° Jerarquía";
	        break;
	    case 183:
	        nombre = "Armadura Legionaria 3° Jerarquía (E/G)";
	        break;
	    case 184:
	        nombre = "Armadura Legionaria 2° Jerarquía";
	        break;
	    case 185:
	        nombre = "Armadura Legionaria 2° Jerarquía (E/G)";
	        break;
	    case 186:
	        nombre = "Armadura Legionaria 1° Jerarquía";
	        break;
	    case 187:
	        nombre = "Armadura Legionaria 1° Jerarquía (E/G)";
	        break;
	    case 188:
	        nombre = "Túnica Imperial 3° Jerarquía";
	        break;
	    case 189:
	        nombre = "Túnica Imperial 3° Jerarquía (E/G)";
	        break;
	    case 190:
	        nombre = "Túnica Imperial 2° Jerarquía";
	        break;
	    case 191:
	        nombre = "Túnica Imperial 2° Jerarquía (E/G)";
	        break;
	    case 192:
	        nombre = "Túnica Imperial 1° Jerarquía";
	        break;
	    case 193:
	        nombre = "Túnica Imperial 1° Jerarquía (E/G)";
	        break;
	    case 194:
	        nombre = "Túnica Legionaria 3° Jerarquía";
	        break;
	    case 195:
	        nombre = "Túnica Legionaria 3° Jerarquía (E/G)";
	        break;
	    case 196:
	        nombre = "Túnica Legionaria 2° Jerarquía";
	        break;
	    case 197:
	        nombre = "Túnica Legionaria 2° Jerarquía (E/G)";
	        break;
	    case 198:
	        nombre = "Túnica Legionaria 1° Jerarquía";
	        break;
	    case 199:
	        nombre = "Túnica Legionaria 1° Jerarquía (E/G)";
	        break;
	    case 200:
	        nombre = "Armadura Imperial 3° Jerarquía";
	        break;
	    case 201:
	        nombre = "Armadura Imperial 3° Jerarquía (E/G)";
	        break;
	    case 202:
	        nombre = "Armadura Imperial 2° Jerarquía";
	        break;
	    case 203:
	        nombre = "Armadura Imperial 2° Jerarquía (E/G)";
	        break;
	    case 204:
	        nombre = "Armadura Imperial 1° Jerarquía";
	        break;
	    case 205:
	        nombre = "Armadura Imperial 1° Jerarquía (E/G)";
	        break;
	    case 206:
	        nombre = "Armadura Legionaria 3° Jerarquía";
	        break;
	    case 207:
	        nombre = "Armadura Legionaria 3° Jerarquía (E/G)";
	        break;
	    case 208:
	        nombre = "Armadura Legionaria 2° Jerarquía";
	        break;
	    case 209:
	        nombre = "Armadura Legionaria 2° Jerarquía (E/G)";
	        break;
	    case 210:
	        nombre = "Armadura Legionaria 1° Jerarquía";
	        break;
	    case 211:
	        nombre = "Armadura Legionaria 1° Jerarquía (E/G)";
	        break;
    
	}

	return nombre;
















}
