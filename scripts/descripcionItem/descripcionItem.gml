/// @description  descripcionItem(item)
/// @param item
function descripcionItem(argument0) {

	datosItem[0] = ""; // Descripción
	datosItem[1] = 0; // Precio

	if (argument0 >= 0 && argument0 <= 17) {
	    datosItem[0] = "Ataque: ";
	} else if ((argument0 >= 18 && argument0 <= 20) || argument0 == 140 || argument0 == 227) {
	    datosItem[0] = "Poder mágico: ";
	} else if ((argument0 >= 21 && argument0 <= 32) && argument0 != 28) {
	    datosItem[0] = "Ataque: ";
	} else if ((argument0 >= 33 && argument0 <= 95) || (argument0 >= 98 && argument0 <= 100) || (argument0 >= 164 && argument0 <= 211) || (argument0 >= 222 && argument0 <= 226) || (argument0 >= 212 && argument0 <= 216)) {
	    datosItem[0] = "Defensa: ";
	} else if (argument0 == 96 || argument0 == 97) {
	    datosItem[0] = "Defensa mágica: ";
	} else if (argument0 >= 101 && argument0 <= 115) {
	    datosItem[0] = "Puntos de hambre: ";
	} else if (argument0 >= 116 && argument0 <= 119) {
	    datosItem[0] = "Puntos de sed: ";
	} else if (argument0 >= 120 && argument0 <= 139) {
	    datosItem[0] = "Descripción detallada en manual";
	}

	switch (argument0) {
	    case 0:
	        datosItem[0] += "1/3"; // Descripción
	        datosItem[1] = 7; // Precio
	        break;
	    case 1:
	        datosItem[0] += "2/3"; // Descripción
	        datosItem[1] = 333; // Precio
	        break;
	    case 2:
	        datosItem[0] += "3/5"; // Descripción
	        datosItem[1] = 1333; // Precio
	        break;
	    case 3:
	        datosItem[0] += "4/6"; // Descripción
	        datosItem[1] = 667; // Precio
	        break;
	    case 4:
	        datosItem[0] += "6/8"; // Descripción
	        datosItem[1] = 2300; // Precio
	        break;
	    case 5:
	        datosItem[0] += "7/9"; // Descripción
	        datosItem[1] = 2133; // Precio
	        break;
	    case 6:
	        datosItem[0] += "8/10"; // Descripción
	        datosItem[1] = 4000; // Precio
	        break;
	    case 7:
	        datosItem[0] += "2/6"; // Descripción
	        datosItem[1] = 333; // Precio
	        break;
	    case 8:
	        datosItem[0] += "1/8"; // Descripción
	        datosItem[1] = 117; // Precio
	        break;
	    case 9:
	        datosItem[0] += "2/10"; // Descripción
	        datosItem[1] = 167; // Precio
	        break;
	    case 10:
	        datosItem[0] += "3/12"; // Descripción
	        datosItem[1] = 667; // Precio
	        break;
	    case 11:
	        datosItem[0] += "5/12"; // Descripción
	        datosItem[1] = 1667; // Precio
	        break;
	    case 12:
	        datosItem[0] += "5/16"; // Descripción
	        datosItem[1] = 2000; // Precio
	        break;
	    case 13:
	        datosItem[0] += "5/20"; // Descripción
	        datosItem[1] = 6667; // Precio
	        break;
	    case 14:
	        datosItem[0] += "8/14"; // Descripción
	        datosItem[1] = 6667; // Precio
	        break;
	    case 15:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 10000; // Precio
	        break;
	    case 16:
	        datosItem[0] += "17/20"; // Descripción
	        datosItem[1] = 11667; // Precio
	        break;
	    case 17:
	        datosItem[0] += "19/21"; // Descripción
	        datosItem[1] = 12000; // Precio
	        break;
	    case 18:
	        datosItem[0] += "1"; // Descripción
	        datosItem[1] = 600; // Precio
	        break;
	    case 19:
	        datosItem[0] += "2"; // Descripción
	        datosItem[1] = 1735; // Precio
	        break;
	    case 20:
	        datosItem[0] += "3"; // Descripción
	        datosItem[1] = 3333; // Precio
	        break;
	    case 21:
	        datosItem[0] += "1/5"; // Descripción
	        datosItem[1] = 200; // Precio
	        break;
	    case 22:
	        datosItem[0] += "3/8"; // Descripción
	        datosItem[1] = 800; // Precio
	        break;
	    case 23:
	        datosItem[0] += "4/10"; // Descripción
	        datosItem[1] = 1250; // Precio
	        break;
	    case 24:
	        datosItem[0] += "6/12"; // Descripción
	        datosItem[1] = 2666; // Precio
	        break;
	    case 25:
	        datosItem[0] += "9/12"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 26:
	        datosItem[0] += "8/13"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 27:
	        datosItem[0] += "8/15"; // Descripción
	        datosItem[1] = 3333; // Precio
	        break;
	    case 28:
	        datosItem[0] += "Necesaria para fabricar objetos de sastrería"; // Descripción
	        datosItem[1] = 30; // Precio
	        break;
	    case 29:
	        datosItem[0] += "1/2"; // Descripción
	        datosItem[1] = 2; // Precio
	        break;
	    case 30:
	        datosItem[0] += "3/4"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 31:
	        datosItem[0] += "5/6"; // Descripción
	        datosItem[1] = 4; // Precio
	        break;
	    case 32:
	        datosItem[0] += "7/8"; // Descripción
	        datosItem[1] = 5; // Precio
	        break;
	    case 217:
	        datosItem[0] += "Paraliza a la víctima"; // Descripción
	        datosItem[1] = 6; // Precio
	        break;
	    case 33:
	        datosItem[0] += "5/15"; // Descripción
	        datosItem[1] = 1200; // Precio
	        break;
	    case 34:
	        datosItem[0] += "5/15"; // Descripción
	        datosItem[1] = 1200; // Precio
	        break;
	    case 35:
	        datosItem[0] += "5/15"; // Descripción
	        datosItem[1] = 1200; // Precio
	        break;
	    case 36:
	        datosItem[0] += "5/15"; // Descripción
	        datosItem[1] = 1200; // Precio
	        break;
	    case 37:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 5333; // Precio
	        break;
	    case 38:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 5333; // Precio
	        break;
	    case 39:
	        datosItem[0] += "5/5"; // Descripción
	        datosItem[1] = 200; // Precio
	        break;
	    case 40:
	        datosItem[0] += "5/15"; // Descripción
	        datosItem[1] = 1200; // Precio
	        break;
	    case 41:
	        datosItem[0] += "25/30"; // Descripción
	        datosItem[1] = 10666; // Precio
	        break;
	    case 42:
	        datosItem[0] += "25/30"; // Descripción
	        datosItem[1] = 10666; // Precio
	        break;
	    case 43:
	        datosItem[0] += "20/25"; // Descripción
	        datosItem[1] = 10000; // Precio
	        break;
	    case 44:
	        datosItem[0] += "20/25"; // Descripción
	        datosItem[1] = 10000; // Precio
	        break;
	    case 45:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 46:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 47:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 48:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 49:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 50:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 51:
	        datosItem[0] += "3/3"; // Descripción
	        datosItem[1] = 200; // Precio
	        break;
	    case 52:
	        datosItem[0] += "5/5"; // Descripción
	        datosItem[1] = 433; // Precio
	        break;
	    case 53:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 200; // Precio
	        break;
	    case 54:
	        datosItem[0] += "5/5"; // Descripción
	        datosItem[1] = 266; // Precio
	        break;
	    case 55:
	        datosItem[0] += "5/10"; // Descripción
	        datosItem[1] = 666; // Precio
	        break;
	    case 56:
	        datosItem[0] += "5/10"; // Descripción
	        datosItem[1] = 666; // Precio
	        break;
	    case 57:
	        datosItem[0] += "5/8"; // Descripción
	        datosItem[1] = 666; // Precio
	        break;
	    case 58:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 59:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 60:
	        datosItem[0] += "5/10"; // Descripción
	        datosItem[1] = 700; // Precio
	        break;
	    case 61:
	        datosItem[0] += "15/25"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 62:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 666; // Precio
	        break;
	    case 63:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 2666; // Precio
	        break;
	    case 64:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 2666; // Precio
	        break;
	    case 65:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 2666; // Precio
	        break;
	    case 66:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 3333; // Precio
	        break;
	    case 67:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 3333; // Precio
	        break;
	    case 68:
	        datosItem[0] += "15/27 (Necesaria para soportar el frío)"; // Descripción
	        datosItem[1] = 3666; // Precio
	        break;
	    case 69:
	        datosItem[0] += "15/27 (Necesaria para soportar el frío)"; // Descripción
	        datosItem[1] = 3666; // Precio
	        break;
	    case 70:
	        datosItem[0] += "15/27 (Necesaria para soportar el frío)"; // Descripción
	        datosItem[1] = 3666; // Precio
	        break;
	    case 71:
	        datosItem[0] += "2/2"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 72:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 73:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 74:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 212:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 213:
	        datosItem[0] += "10/15"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 75:
	        datosItem[0] += "12/17"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 76:
	        datosItem[0] += "12/17"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 77:
	        datosItem[0] += "12/17"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 214:
	        datosItem[0] += "12/17"; // Descripción
	        datosItem[1] = 750; // Precio
	        break;
	    case 78:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 2000; // Precio
	        break;
	    case 79:
	        datosItem[0] += "10/25"; // Descripción
	        datosItem[1] = 2500; // Precio
	        break;
	    case 80:
	        datosItem[0] += "10/25"; // Descripción
	        datosItem[1] = 2500; // Precio
	        break;
	    case 81:
	        datosItem[0] += "10/27"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 82:
	        datosItem[0] += "12/25"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 216:
	        datosItem[0] += "12/25"; // Descripción
	        datosItem[1] = 3000; // Precio
	        break;
	    case 83:
	        datosItem[0] += "10/20"; // Descripción
	        datosItem[1] = 1700; // Precio
	        break;
	    case 84:
	        datosItem[0] += "10/20"; // Descripción
	        datosItem[1] = 1700; // Precio
	        break;
	    case 215:
	        datosItem[0] += "10/20"; // Descripción
	        datosItem[1] = 1700; // Precio
	        break;
	    case 85:
	        datosItem[0] += "8/12"; // Descripción
	        datosItem[1] = 400; // Precio
	        break;
	    case 86:
	        datosItem[0] += "25/30"; // Descripción
	        datosItem[1] = 8000; // Precio
	        break;
	    case 87:
	        datosItem[0] += "25/30"; // Descripción
	        datosItem[1] = 8000; // Precio
	        break;
	    case 88:
	        datosItem[0] += "25/30"; // Descripción
	        datosItem[1] = 8000; // Precio
	        break;
	    case 89:
	        datosItem[0] += "27/35"; // Descripción
	        datosItem[1] = 8333; // Precio
	        break;
	    case 90:
	        datosItem[0] += "27/35"; // Descripción
	        datosItem[1] = 8333; // Precio
	        break;
	    case 91:
	        datosItem[0] += "30/37"; // Descripción
	        datosItem[1] = 8666; // Precio
	        break;
	    case 92:
	        datosItem[0] += "35/40"; // Descripción
	        datosItem[1] = 9000; // Precio
	        break;
	    case 222:
	        datosItem[0] += "40/45"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    case 223:
	        datosItem[0] += "40/45"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    case 224:
	        datosItem[0] += "40/45"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    case 225:
	        datosItem[0] += "40/45"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    case 226:
	        datosItem[0] += "40/45"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    case 93:
	        datosItem[0] += "3/8"; // Descripción
	        datosItem[1] = 350; // Precio
	        break;
	    case 94:
	        datosItem[0] += "10/20"; // Descripción
	        datosItem[1] = 1333; // Precio
	        break;
	    case 95:
	        datosItem[0] += "20/25"; // Descripción
	        datosItem[1] = 3666; // Precio
	        break;
	    case 96:
	        datosItem[0] += "5/5"; // Descripción
	        datosItem[1] = 1333; // Precio
	        break;
	    case 97:
	        datosItem[0] += "15/20"; // Descripción
	        datosItem[1] = 3666; // Precio
	        break;
	    case 98:
	        datosItem[0] += "1/1"; // Descripción
	        datosItem[1] = 333; // Precio
	        break;
	    case 99:
	        datosItem[0] += "1/4"; // Descripción
	        datosItem[1] = 1333; // Precio
	        break;
	    case 100:
	        datosItem[0] += "4/8"; // Descripción
	        datosItem[1] = 4666; // Precio
	        break;
	    case 101:
	        datosItem[0] += "10"; // Descripción
	        datosItem[1] = 1; // Precio
	        break;
	    case 102:
	        datosItem[0] += "15"; // Descripción
	        datosItem[1] = 2; // Precio
	        break;
	    case 103:
	        datosItem[0] += "15"; // Descripción
	        datosItem[1] = 2; // Precio
	        break;
	    case 104:
	        datosItem[0] += "20"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 105:
	        datosItem[0] += "20"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 106:
	        datosItem[0] += "25"; // Descripción
	        datosItem[1] = 10; // Precio
	        break;
	    case 107:
	        datosItem[0] += "75"; // Descripción
	        datosItem[1] = 7; // Precio
	        break;
	    case 108:
	        datosItem[0] += "50"; // Descripción
	        datosItem[1] = 10; // Precio
	        break;
	    case 109:
	        datosItem[0] += "50"; // Descripción
	        datosItem[1] = 5; // Precio
	        break;
	    case 110:
	        datosItem[0] += "25"; // Descripción
	        datosItem[1] = 5; // Precio
	        break;
	    case 111:
	        datosItem[0] += "50"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 112:
	        datosItem[0] += "75"; // Descripción
	        datosItem[1] = 25; // Precio
	        break;
	    case 113:
	        datosItem[0] += "75"; // Descripción
	        datosItem[1] = 50; // Precio
	        break;
	    case 114:
	        datosItem[0] += "75"; // Descripción
	        datosItem[1] = 66; // Precio
	        break;
	    case 115:
	        datosItem[0] += "100"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 116:
	        datosItem[0] += "30"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 117:
	        datosItem[0] += "60"; // Descripción
	        datosItem[1] = 7; // Precio
	        break;
	    case 118:
	        datosItem[0] += "90"; // Descripción
	        datosItem[1] = 10; // Precio
	        break;
	    case 119:
	        datosItem[0] += "100"; // Descripción
	        datosItem[1] = 12; // Precio
	        break;
	    case 120:
	        datosItem[1] = 100; // Precio
	        break;
	    case 121:
	        datosItem[1] = 250; // Precio
	        break;
	    case 122:
	        datosItem[1] = 17500; // Precio
	        break;
	    case 123:
	        datosItem[1] = 16500; // Precio
	        break;
	    case 124:
	        datosItem[1] = 105000; // Precio
	        break;
	    case 125:
	        datosItem[1] = 250; // Precio
	        break;
	    case 126:
	        datosItem[1] = 1250; // Precio
	        break;
	    case 127:
	        datosItem[1] = 2250; // Precio
	        break;
	    case 128:
	        datosItem[1] = 4500; // Precio
	        break;
	    case 129:
	        datosItem[1] = 32000; // Precio
	        break;
	    case 130:
	        datosItem[1] = 600000; // Precio
	        break;
	    case 131:
	        datosItem[1] = 1200000; // Precio
	        break;
	    case 132:
	        datosItem[1] = 25000; // Precio
	        break;
	    case 133:
	        datosItem[1] = 35000; // Precio
	        break;
	    case 134:
	        datosItem[1] = 7000; // Precio
	        break;
	    case 135:
	        datosItem[1] = 10000; // Precio
	        break;
	    case 136:
	        datosItem[1] = 175000; // Precio
	        break;
	    case 137:
	        datosItem[1] = 750000; // Precio
	        break;
	    case 138:
	        datosItem[1] = 750000; // Precio
	        break;
	    case 139:
	        datosItem[1] = 500000; // Precio
	        break;
	    case 140:
	        datosItem[0] += "4"; // Descripción
	        datosItem[1] = 4333; // Precio
	        break;
	    case 227:
	        datosItem[0] += "3"; // Descripción
	        datosItem[1] = 3333; // Precio
	        break;
	    case 141:
	        datosItem[0] = "Restaura un 15% de vida"; // Descripción
	        datosItem[1] = 5; // Precio
	        break;
	    case 142:
	        datosItem[0] = "Restaura un 15% de maná"; // Descripción
	        datosItem[1] = 6; // Precio
	        break;
	    case 143:
	        datosItem[0] = "Cura el envenenamiento"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 218:
	        datosItem[0] = "Aumenta la agilidad temporalmente"; // Descripción
	        datosItem[1] = 20; // Precio
	        break;
	    case 219:
	        datosItem[0] = "Aumenta la fuerza temporalmente"; // Descripción
	        datosItem[1] = 40; // Precio
	        break;
	    case 220:
	        datosItem[0] = "Remueve la parálisis a costa de 1/3 de la vida actual"; // Descripción
	        datosItem[1] = 250; // Precio
	        break;
	    case 221:
	        datosItem[0] = "Te vuelve invisible dejándote casi agonizante"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 144:
	        datosItem[0] = "Necesaria para poder navegar"; // Descripción
	        datosItem[1] = 16666; // Precio
	        break;
	    case 145:
	        datosItem[0] = "Permite teletransportarte a tu hogar al morir"; // Descripción
	        datosItem[1] = 500; // Precio
	        break;
	    case 146:
	        datosItem[0] = "Necesaria para fabricar objetos de carpintería"; // Descripción
	        datosItem[1] = 1; // Precio
	        break;
	    case 147:
	        datosItem[0] = "Herramienta de trabajo para la tala"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 148:
	        datosItem[0] = "Necesarios para fabricar lingotes de hierro"; // Descripción
	        datosItem[1] = 2; // Precio
	        break;
	    case 149:
	        datosItem[0] = "Necesarios para fabricar lingotes de plata"; // Descripción
	        datosItem[1] = 3; // Precio
	        break;
	    case 150:
	        datosItem[0] = "Necesarios para fabricar lingotes de oro"; // Descripción
	        datosItem[1] = 4; // Precio
	        break;
	    case 151:
	        datosItem[0] = "Necesario para fabricar objetos de herrería"; // Descripción
	        datosItem[1] = 16; // Precio
	        break;
	    case 152:
	        datosItem[0] = "Necesario para fabricar objetos de herrería"; // Descripción
	        datosItem[1] = 54; // Precio
	        break;
	    case 153:
	        datosItem[0] = "Necesario para fabricar objetos de herrería"; // Descripción
	        datosItem[1] = 136; // Precio
	        break;
	    case 154:
	        datosItem[0] = "Herramienta de trabajo para la minería"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 155:
	        datosItem[0] = "Herramienta de trabajo para la pesca"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 156:
	        datosItem[0] = "Herramienta de trabajo para la pesca"; // Descripción
	        datosItem[1] = 250; // Precio
	        break;
	    case 157:
	        datosItem[0] = "Herramienta de trabajo para la carpintería"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 158:
	        datosItem[0] = "Herramienta de trabajo para la herrería"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 159:
	        datosItem[0] = "Herramienta de trabajo para la sastrería"; // Descripción
	        datosItem[1] = 100; // Precio
	        break;
	    case 160:
	        datosItem[0] = "Piel obtenida de un Oso Pardo"; // Descripción
	        datosItem[1] = 60; // Precio
	        break;
	    case 161:
	        datosItem[0] = "Piel obtenida de un Oso Polar"; // Descripción
	        datosItem[1] = 240; // Precio
	        break;
	    case 162:
	        datosItem[0] = "Piel obtenida de un Lobo Invernal"; // Descripción
	        datosItem[1] = 120; // Precio
	        break;
	    case 163:
	        datosItem[0] = "Restos del legendario dragón. Premiten fabricar objetos"; // Descripción
	        datosItem[1] = 500000; // Precio
	        break;
	    default:
        
	        var ar = argument0;

	        if (ar == 164 || ar == 165 || ar == 170 || ar == 171 || ar == 188 || ar == 189 || ar == 194 || ar == 195 || ar == 200 || ar == 201 || ar == 206 || ar == 207) {
	            datosItem[0] += "12/17 (No vendible)"
	        } else if (ar == 166 || ar == 167 || ar == 172 || ar == 173 || ar == 190 || ar == 191 || ar == 196 || ar == 197) {
	            datosItem[0] += "20/25 (No vendible)"
	        } else if (ar == 168 || ar == 169 || ar == 174 || ar == 175 || ar == 192 || ar == 193 || ar == 198 || ar == 199) {
	            datosItem[0] += "25/30 (No vendible)"
	        } else if (ar == 202 || ar == 203 || ar == 208 || ar == 209) {
	            datosItem[0] += "15/26 (No vendible)"
	        } else if (ar == 204 || ar == 205 || ar == 210 || ar == 211) {
	            datosItem[0] += "27/35 (No vendible)"
	        } else if (ar == 176 || ar == 177 || ar == 182 || ar == 183) {
	            datosItem[0] += "12/24 (No vendible)"
	        } else if (ar == 178 || ar == 179 || ar == 184 || ar == 185) {
	            datosItem[0] += "25/32 (No vendible)"
	        } else if (ar == 180 || ar == 181 || ar == 186 || ar == 187) {
	            datosItem[0] += "35/40 (No vendible)"
	        }
        
	        break;
	}

	return datosItem;




}
