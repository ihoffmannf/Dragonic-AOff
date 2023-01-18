/// @description  calcularDanoFisicoNPC(dañoBaseNPC)
/// @param dañoBaseNPC
function calcularDanoFisicoNPC(argument0) {

	var danoTotal = argument0;
	var defensaPJ = 0;
	var danoArma = 0;

	if (obj_pj.ropaActual != -1) {
	    switch (obj_pj.ropaActual) {
	        case 33:
	            defensaPJ = floor(random_range(5,15));
	            break;
	        case 34:
	            defensaPJ = floor(random_range(5,15));
	            break;
	        case 35:
	            defensaPJ = floor(random_range(5,15));
	            break;
	        case 36:
	            defensaPJ = floor(random_range(5,15));
	            break;
	        case 37:
	            defensaPJ = floor(random_range(15,20));
	            break;
	        case 38:
	            defensaPJ = floor(random_range(15,20));
	            break;
	        case 39:
	            defensaPJ = floor(random_range(5,5));
	            break;
	        case 40:
	            defensaPJ = floor(random_range(5,15));
	            break;
	        case 41:
	            defensaPJ = floor(random_range(25,30));
	            break;
	        case 42:
	            defensaPJ = floor(random_range(25,30));
	            break;
	        case 43:
	            defensaPJ = floor(random_range(20,25));
	            break;
	        case 44:
	            defensaPJ = floor(random_range(20,25));
	            break;
	        case 45:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 46:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 47:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 48:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 49:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 50:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 51:
	            defensaPJ = floor(random_range(3,3));
	            break;
	        case 52:
	            defensaPJ = floor(random_range(5,5));
	            break;
	        case 53:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 54:
	            defensaPJ = floor(random_range(5,5));
	            break;
	        case 55:
	            defensaPJ = floor(random_range(5,10));
	            break;
	        case 56:
	            defensaPJ = floor(random_range(5,10));
	            break;
	        case 57:
	            defensaPJ = floor(random_range(5,8));
	            break;
	        case 58:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 59:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 60:
	            defensaPJ = floor(random_range(5,10));
	            break;
	        case 61:
	            defensaPJ = floor(random_range(15,25));
	            break;
	        case 62:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 63:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 64:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 65:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 66:
	            defensaPJ = floor(random_range(15,20));
	            break;
	        case 67:
	            defensaPJ = floor(random_range(15,20));
	            break;
	        case 68:
	            defensaPJ = floor(random_range(15,27));
	            break;
	        case 69:
	            defensaPJ = floor(random_range(15,27));
	            break;
	        case 70:
	            defensaPJ = floor(random_range(15,27));
	            break;
	        case 71:
	            defensaPJ = floor(random_range(2,2));
	            break;
	        case 72:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 73:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 74:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 75:
	            defensaPJ = floor(random_range(12,17));
	            break;
	        case 76:
	            defensaPJ = floor(random_range(12,17));
	            break;
	        case 77:
	            defensaPJ = floor(random_range(12,17));
	            break;
	        case 78:
	            defensaPJ = floor(random_range(15,20));
	            break;
	        case 79:
	            defensaPJ = floor(random_range(10,25));
	            break;
	        case 80:
	            defensaPJ = floor(random_range(10,25));
	            break;
	        case 81:
	            defensaPJ = floor(random_range(10,27));
	            break;
	        case 82:
	            defensaPJ = floor(random_range(12,25));
	            break;
	        case 83:
	            defensaPJ = floor(random_range(10,20));
	            break;
	        case 84:
	            defensaPJ = floor(random_range(10,20));
	            break;
	        case 85:
	            defensaPJ = floor(random_range(8,12));
	            break;
	        case 86:
	            defensaPJ = floor(random_range(17,28));
	            break;
	        case 87:
	            defensaPJ = floor(random_range(17,28));
	            break;
	        case 88:
	            defensaPJ = floor(random_range(17,28));
	            break;
	        case 89:
	            defensaPJ = floor(random_range(20,30));
	            break;
	        case 90:
	            defensaPJ = floor(random_range(20,30));
	            break;
	        case 91:
	            defensaPJ = floor(random_range(23,33));
	            break;
	        case 92:
	            defensaPJ = floor(random_range(25,35));
	            break;
	        case 212:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 213:
	            defensaPJ = floor(random_range(10,15));
	            break;
	        case 214:
	            defensaPJ = floor(random_range(12,17));
	            break;
	        case 215:
	            defensaPJ = floor(random_range(10,20));
	            break;
	        case 216:
	            defensaPJ = floor(random_range(12,25));
	            break;
	        case 222:
	            defensaPJ = floor(random_range(40,45));
	            break;
	        case 223:
	            defensaPJ = floor(random_range(40,45));
	            break;
	        case 224:
	            defensaPJ = floor(random_range(40,45));
	            break;
	        case 225:
	            defensaPJ = floor(random_range(40,45));
	            break;
	        case 226:
	            defensaPJ = floor(random_range(40,45));
	            break;
	        default:
        
	            var ra = obj_pj.ropaActual;

	            if (ra == 164 || ra == 165 || ra == 170 || ra == 171 || ra == 188 || ra == 189 || ra == 194 || ra == 195 || ra == 200 || ra == 201 || ra == 206 || ra == 207) {
	                	defensaPJ = floor(random_range(12,17));
	            } else if (ra == 166 || ra == 167 || ra == 172 || ra == 173 || ra == 190 || ra == 191 || ra == 196 || ra == 197) {
	                	defensaPJ = floor(random_range(20,25));
	            } else if (ra == 168 || ra == 169 || ra == 174 || ra == 175 || ra == 192 || ra == 193 || ra == 198 || ra == 199) {
	                	defensaPJ = floor(random_range(25,30));
	            } else if (ra == 202 || ra == 203 || ra == 208 || ra == 209) {
	                	defensaPJ = floor(random_range(15,26));
	            } else if (ra == 204 || ra == 205 || ra == 210 || ra == 211) {
	                	defensaPJ = floor(random_range(20,30));
	            } else if (ra == 176 || ra == 177 || ra == 182 || ra == 183) {
	                	defensaPJ = floor(random_range(12,24));
	            } else if (ra == 178 || ra == 179 || ra == 184 || ra == 185) {
	                	defensaPJ = floor(random_range(22,25));
	            } else if (ra == 180 || ra == 181 || ra == 186 || ra == 187) {
	                	defensaPJ = floor(random_range(25,35));
	            }
            
	            break;
            
	    }
    
	}

	if (obj_pj.cascoActual != -1) {
	    switch (obj_pj.cascoActual) {
	        case 93:
	            defensaPJ += floor(random_range(3,8) * 0.85);
	            break;
	        case 94:
	            defensaPJ += floor(random_range(10,13) * 0.85);
	            break;
	        case 95:
	            defensaPJ += floor(random_range(15,20) * 0.85);
	            break;
	    }
	}

	if (obj_pj.escudoActual != -1) {
	    switch (obj_pj.escudoActual) {
	        case 98:
	            defensaPJ += floor(random_range(1,1) * 1.5);
	            break;
	        case 99:
	            defensaPJ += floor(random_range(2,4) * 1.5);
	            break;
	        case 100:
	            defensaPJ += floor(random_range(4,6) * 1.5);
	            break;
	    }
	}

	if (object_index == obj_persona) {
	    if (clase == 0) {
    
	        switch (eqArma) {
	            case 8:
	                danoArma = floor(random_range(7, 9)); // 6, 7
	                break;
	            case 9:
	                danoArma = floor(random_range(9, 10)); // 6, 8
	                break;
	            case 10:
	                danoArma = floor(random_range(11, 14)); // 9, 10
	                break;
	            case 11:
	                danoArma = floor(random_range(10, 12)); // 8, 10
	                break;
	            case 12:
	                danoArma = floor(random_range(14, 16)); // 10, 11
	                break;
	            case 13:
	                danoArma = floor(random_range(16, 18)); // 12, 13
	                break;
	            case 14:
	                danoArma = floor(random_range(15, 17)); // 11, 12
	                break;
	            case 15:
	                danoArma = floor(random_range(18, 20)); // 14, 16
	                break;
	        }
        
	        danoTotal = floor(danoTotal * danoArma);
        
	    } else {
    
	        var modFlecha = 0;
    
	        switch (eqArma) {
	            case 21:
	                danoArma = floor(random_range(4, 5));
	                break;
	            case 22:
	                danoArma = floor(random_range(6, 7));
	                break;
	            case 23:
	                danoArma = floor(random_range(9, 11));
	                break;
	            case 24:
	                danoArma = floor(random_range(13, 15));
	                break;
	            case 25:
	                danoArma = floor(random_range(16, 16));
	                break;
	            case 26:
	                danoArma = floor(random_range(15, 17));
	                break;
	        }
        
	        switch (eqFlechas) {
	            case 29:
	                modFlecha = random_range(4, 5) / 4.5;
	                break;
	            case 30:
	                modFlecha = random_range(5, 6) / 4.5;
	                break;
	        }
        
	        danoTotal = floor(danoTotal * danoArma * modFlecha);
        
	    }
	}

	danoTotal = floor((danoTotal - defensaPJ) * 1.5);

	if (danoTotal <= 0) {
	    danoTotal = 1;
	}

	return danoTotal;



}
