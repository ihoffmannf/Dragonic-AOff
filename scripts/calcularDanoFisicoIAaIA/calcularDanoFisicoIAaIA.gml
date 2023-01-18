/// @description  calcularDanoFisicoIAaIA(dañoBaseIA, objetivo)
/// @param dañoBaseIA
/// @param  objetivo
function calcularDanoFisicoIAaIA(argument0, argument1) {

	var danoTotal = argument0;
	var defensaIA = 0;
	var danoArma = 0;

	if (argument1.eqRopa != -1) {
	    switch (argument1.eqRopa) {
	        case 33:
	            defensaIA = floor(random_range(5,15));
	            break;
	        case 34:
	            defensaIA = floor(random_range(5,15));
	            break;
	        case 35:
	            defensaIA = floor(random_range(5,15));
	            break;
	        case 36:
	            defensaIA = floor(random_range(5,15));
	            break;
	        case 37:
	            defensaIA = floor(random_range(15,20));
	            break;
	        case 38:
	            defensaIA = floor(random_range(15,20));
	            break;
	        case 39:
	            defensaIA = floor(random_range(5,5));
	            break;
	        case 40:
	            defensaIA = floor(random_range(5,15));
	            break;
	        case 41:
	            defensaIA = floor(random_range(25,30));
	            break;
	        case 42:
	            defensaIA = floor(random_range(25,30));
	            break;
	        case 43:
	            defensaIA = floor(random_range(20,25));
	            break;
	        case 44:
	            defensaIA = floor(random_range(20,25));
	            break;
	        case 45:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 46:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 47:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 48:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 49:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 50:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 51:
	            defensaIA = floor(random_range(3,3));
	            break;
	        case 52:
	            defensaIA = floor(random_range(5,5));
	            break;
	        case 53:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 54:
	            defensaIA = floor(random_range(5,5));
	            break;
	        case 55:
	            defensaIA = floor(random_range(5,10));
	            break;
	        case 56:
	            defensaIA = floor(random_range(5,10));
	            break;
	        case 57:
	            defensaIA = floor(random_range(5,8));
	            break;
	        case 58:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 59:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 60:
	            defensaIA = floor(random_range(5,10));
	            break;
	        case 61:
	            defensaIA = floor(random_range(15,25));
	            break;
	        case 62:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 63:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 64:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 65:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 66:
	            defensaIA = floor(random_range(15,20));
	            break;
	        case 67:
	            defensaIA = floor(random_range(15,20));
	            break;
	        case 68:
	            defensaIA = floor(random_range(15,27));
	            break;
	        case 69:
	            defensaIA = floor(random_range(15,27));
	            break;
	        case 70:
	            defensaIA = floor(random_range(15,27));
	            break;
	        case 71:
	            defensaIA = floor(random_range(2,2));
	            break;
	        case 72:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 73:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 74:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 75:
	            defensaIA = floor(random_range(12,17));
	            break;
	        case 76:
	            defensaIA = floor(random_range(12,17));
	            break;
	        case 77:
	            defensaIA = floor(random_range(12,17));
	            break;
	        case 78:
	            defensaIA = floor(random_range(15,20));
	            break;
	        case 79:
	            defensaIA = floor(random_range(10,25));
	            break;
	        case 80:
	            defensaIA = floor(random_range(10,25));
	            break;
	        case 81:
	            defensaIA = floor(random_range(10,27));
	            break;
	        case 82:
	            defensaIA = floor(random_range(12,25));
	            break;
	        case 83:
	            defensaIA = floor(random_range(10,20));
	            break;
	        case 84:
	            defensaIA = floor(random_range(10,20));
	            break;
	        case 85:
	            defensaIA = floor(random_range(8,12));
	            break;
	        case 86:
	            defensaIA = floor(random_range(17,28));
	            break;
	        case 87:
	            defensaIA = floor(random_range(17,28));
	            break;
	        case 88:
	            defensaIA = floor(random_range(17,28));
	            break;
	        case 89:
	            defensaIA = floor(random_range(20,30));
	            break;
	        case 90:
	            defensaIA = floor(random_range(20,30));
	            break;
	        case 91:
	            defensaIA = floor(random_range(23,33));
	            break;
	        case 92:
	            defensaIA = floor(random_range(25,35));
	            break;
	        case 212:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 213:
	            defensaIA = floor(random_range(10,15));
	            break;
	        case 214:
	            defensaIA = floor(random_range(12,17));
	            break;
	        case 215:
	            defensaIA = floor(random_range(10,20));
	            break;
	        case 216:
	            defensaIA = floor(random_range(12,25));
	            break;
	        case 222:
	            defensaIA = floor(random_range(40,45));
	            break;
	        case 223:
	            defensaIA = floor(random_range(40,45));
	            break;
	        case 224:
	            defensaIA = floor(random_range(40,45));
	            break;
	        case 225:
	            defensaIA = floor(random_range(40,45));
	            break;
	        case 226:
	            defensaIA = floor(random_range(40,45));
	            break;
	    }
    
	}

	if (argument1.eqCascoGorro != -1) {
	    switch (argument1.eqCascoGorro) {
	        case 93:
	            defensaIA += floor(random_range(3,8) * 0.85);
	            break;
	        case 94:
	            defensaIA += floor(random_range(10,13) * 0.85);
	            break;
	        case 95:
	            defensaIA += floor(random_range(15,20) * 0.85);
	            break;
	    }
	}

	if (argument1.eqEscudo != -1) {
	    switch (argument1.eqEscudo) {
	        case 98:
	            defensaIA += floor(random_range(1,1) * 1.5);
	            break;
	        case 99:
	            defensaIA += floor(random_range(2,4) * 1.5);
	            break;
	        case 100:
	            defensaIA += floor(random_range(4,6) * 1.5);
	            break;
	    }
	}

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

	danoTotal = floor((danoTotal - defensaIA) * 1.5);

	if (danoTotal <= 0) {
	    danoTotal = 1;
	}

	return danoTotal;



}
