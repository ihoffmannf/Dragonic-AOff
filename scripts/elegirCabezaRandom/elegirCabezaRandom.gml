/// @description  elegirCabezaRandom(raza, sexo)
/// @param raza
/// @param  sexo
function elegirCabezaRandom(argument0, argument1) {

	indiceCabeza = -1;
	spriteCabeza = spr_cabeza_1;

	if (argument0 == 0) {
	    if (argument1 == 0) {
    
	        indiceCabeza = floor(random_range(1, 25));
        
	        if (object_index == obj_pj && nombre == "Ringwood") {
	            indiceCabeza = 1;
	        }
        
	        switch (indiceCabeza) {
	            case 1:
	                spriteCabeza = spr_cabeza_1;
	                break;
	            case 2:
	                spriteCabeza = spr_cabeza_2;
	                break;
	            case 3:
	                spriteCabeza = spr_cabeza_3;
	                break;
	            case 4:
	                spriteCabeza = spr_cabeza_4;
	                break;
	            case 5:
	                spriteCabeza = spr_cabeza_5;
	                break;
	            case 6:
	                spriteCabeza = spr_cabeza_6;
	                break;
	            case 7:
	                spriteCabeza = spr_cabeza_7;
	                break;
	            case 8:
	                spriteCabeza = spr_cabeza_8;
	                break;
	            case 9:
	                spriteCabeza = spr_cabeza_9;
	                break;
	            case 10:
	                spriteCabeza = spr_cabeza_10;
	                break;
	            case 11:
	                spriteCabeza = spr_cabeza_11;
	                break;
	            case 12:
	                spriteCabeza = spr_cabeza_12;
	                break;
	            case 13:
	                spriteCabeza = spr_cabeza_13;
	                break;
	            case 14:
	                spriteCabeza = spr_cabeza_14;
	                break;
	            case 15:
	                spriteCabeza = spr_cabeza_15;
	                break;
	            case 16:
	                spriteCabeza = spr_cabeza_16;
	                break;
	            case 17:
	                spriteCabeza = spr_cabeza_17;
	                break;
	            case 18:
	                spriteCabeza = spr_cabeza_18;
	                break;
	            case 19:
	                spriteCabeza = spr_cabeza_19;
	                break;
	            case 20:
	                spriteCabeza = spr_cabeza_20;
	                break;
	            case 21:
	                spriteCabeza = spr_cabeza_21;
	                break;
	            case 22:
	                spriteCabeza = spr_cabeza_22;
	                break;
	            case 23:
	                spriteCabeza = spr_cabeza_23;
	                break;
	            case 24:
	                spriteCabeza = spr_cabeza_24;
	                break;
	        }
        
	    } else {
    
	        indiceCabeza = floor(random_range(25, 30));
        
	        switch (indiceCabeza) {
	            case 25:
	                spriteCabeza = spr_cabeza_25;
	                break;
	            case 26:
	                spriteCabeza = spr_cabeza_26;
	                break;
	            case 27:
	                spriteCabeza = spr_cabeza_27;
	                break;
	            case 28:
	                spriteCabeza = spr_cabeza_28;
	                break;
	            case 29:
	                spriteCabeza = spr_cabeza_29;
	                break;
	        }
    
	    }
	} else if (argument0 == 1) {
	    if (argument1 = 0) {
    
	        indiceCabeza = floor(random_range(30, 37));
        
	        switch (indiceCabeza) {
	            case 30:
	                spriteCabeza = spr_cabeza_30;
	                break;
	            case 31:
	                spriteCabeza = spr_cabeza_31;
	                break;
	            case 32:
	                spriteCabeza = spr_cabeza_32;
	                break;
	            case 33:
	                spriteCabeza = spr_cabeza_32;
	                break;
	            case 34:
	                spriteCabeza = spr_cabeza_33;
	                break;
	            case 35:
	                spriteCabeza = spr_cabeza_34;
	                break;
	            case 36:
	                spriteCabeza = spr_cabeza_35;
	                break;
	        }
        
	    } else {
    
	        indiceCabeza = floor(random_range(37, 42));
        
	        switch (indiceCabeza) {
	            case 37:
	                spriteCabeza = spr_cabeza_37;
	                break;
	            case 38:
	                spriteCabeza = spr_cabeza_38;
	                break;
	            case 39:
	                spriteCabeza = spr_cabeza_39;
	                break;
	            case 40:
	                spriteCabeza = spr_cabeza_40;
	                break;
	            case 41:
	                spriteCabeza = spr_cabeza_41;
	                break;
	        }
        
	    }
    
	} else if (argument0 == 2) {
	    if (argument1 == 0) {
    
	        indiceCabeza = floor(random_range(42, 46));
        
	        switch (indiceCabeza) {
	            case 42:
	                spriteCabeza = spr_cabeza_42;
	                break;
	            case 43:
	                spriteCabeza = spr_cabeza_43;
	                break;
	            case 44:
	                spriteCabeza = spr_cabeza_44;
	                break;
	            case 45:
	                spriteCabeza = spr_cabeza_45;
	                break;
	        }
    
	    } else {
    
	        indiceCabeza = floor(random_range(46, 51));
        
	        switch (indiceCabeza) {
	            case 46:
	                spriteCabeza = spr_cabeza_46;
	                break;
	            case 47:
	                spriteCabeza = spr_cabeza_47;
	                break;
	            case 48:
	                spriteCabeza = spr_cabeza_48;
	                break;
	            case 49:
	                spriteCabeza = spr_cabeza_49;
	                break;
	            case 50:
	                spriteCabeza = spr_cabeza_50;
	                break;
	        }
        
	    }
    
	} else if (argument0 == 3) {
	    if (argument1 == 0) {
    
	        indiceCabeza = floor(random_range(62, 66));
        
	        switch (indiceCabeza) {
	            case 62:
	                spriteCabeza = spr_cabeza_62;
	                break;
	            case 63:
	                spriteCabeza = spr_cabeza_63;
	                break;
	            case 64:
	                spriteCabeza = spr_cabeza_64;
	                break;
	            case 65:
	                spriteCabeza = spr_cabeza_65;
	                break;
	        }    
    
	    } else {
    
	        indiceCabeza = floor(random_range(54, 62));
        
	        switch (indiceCabeza) {
	            case 54:
	                spriteCabeza = spr_cabeza_54;
	                break;
	            case 55:
	                spriteCabeza = spr_cabeza_55;
	                break;
	            case 56:
	                spriteCabeza = spr_cabeza_56;
	                break;
	            case 57:
	                spriteCabeza = spr_cabeza_57;
	                break;
	            case 58:
	                spriteCabeza = spr_cabeza_58;
	                break;
	            case 59:
	                spriteCabeza = spr_cabeza_59;
	                break;
	            case 60:
	                spriteCabeza = spr_cabeza_60;
	                break;
	            case 61:
	                spriteCabeza = spr_cabeza_61;
	                break;
	        }     
        
	    }

	} else if (argument0 = 4) {
	    if (argument1 == 0) {
    
	        indiceCabeza = floor(random_range(51, 54));
            
	        switch (indiceCabeza) {
	            case 51:
	                spriteCabeza = spr_cabeza_51;
	                break;
	            case 52:
	                spriteCabeza = spr_cabeza_52;
	                break;
	            case 53:
	                spriteCabeza = spr_cabeza_53;
	                break;
	        }
    
	    } else {
    
	        indiceCabeza = floor(random_range(54, 62));
        
	        switch (indiceCabeza) {
	            case 54:
	                spriteCabeza = spr_cabeza_54;
	                break;
	            case 55:
	                spriteCabeza = spr_cabeza_55;
	                break;
	            case 56:
	                spriteCabeza = spr_cabeza_56;
	                break;
	            case 57:
	                spriteCabeza = spr_cabeza_57;
	                break;
	            case 58:
	                spriteCabeza = spr_cabeza_58;
	                break;
	            case 59:
	                spriteCabeza = spr_cabeza_59;
	                break;
	            case 60:
	                spriteCabeza = spr_cabeza_60;
	                break;
	            case 61:
	                spriteCabeza = spr_cabeza_61;
	                break;
	        }     
        
	    }
	}

	return spriteCabeza;

















}
