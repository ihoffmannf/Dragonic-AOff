/// @description  datosTrabajo(item)
/// @param item
function datosTrabajo(argument0) {

	datosItem[0] = 10; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	datosItem[1] = 0; // Skillpoints requeridos
	datosItem[2] = 0; // Consume 1
	datosItem[3] = 0; // Consume 2
	datosItem[4] = 0; // Consume 3

	switch (argument0) {

	    // Carpintería

	    case 20:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 5000; // Consume 1
	        break;
	    case 24:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 2200; // Consume 1
	        break;
	    case 25:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 3800; // Consume 1
	        break;
	    case 26:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 4000; // Consume 1
	        break;
	    case 27:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 5000; // Consume 1
	        break;
	    case 29:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 0; // Skillpoints requeridos
	        datosItem[2] = 1; // Consume 1
	        break;
	    case 31:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 50; // Skillpoints requeridos
	        datosItem[2] = 3; // Consume 1
	        break;
	    case 32:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 60; // Skillpoints requeridos
	        datosItem[2] = 4; // Consume 1
	        break;
	    case 217:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 50; // Consume 1
	        break;
	    case 140:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 1000; // Consume 1
	        break;
	    case 144:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 35; // Skillpoints requeridos
	        datosItem[2] = 10000; // Consume 1
	        break;
	    case 227:
	        datosItem[0] = 9; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 3000; // Consume 1
	        break;
        
	    // Herrería
    
	    case 0:
	        datosItem[1] = 0; // Skillpoints requeridos
	        datosItem[2] = 10; // Consume 1
	        break;
	    case 3:
	        datosItem[1] = 50; // Skillpoints requeridos
	        datosItem[2] = 170; // Consume 1
	        datosItem[3] = 300; // Consume 2
	        datosItem[4] = 57; // Consume 3
	        break;
	    case 4:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 300; // Consume 1
	        datosItem[3] = 150; // Consume 2
	        datosItem[4] = 120; // Consume 3
	        break;
	    case 5:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 300; // Consume 1
	        datosItem[3] = 150; // Consume 2
	        datosItem[4] = 120; // Consume 3
	        break;
	    case 6:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 250; // Consume 1
	        datosItem[3] = 250; // Consume 2
	        datosItem[4] = 120; // Consume 3
	        break;
	    case 13:
	        datosItem[1] = 60; // Skillpoints requeridos
	        datosItem[2] = 100; // Consume 1
	        datosItem[3] = 15; // Consume 2
	        break;
	    case 14:
	        datosItem[1] = 40; // Skillpoints requeridos
	        datosItem[2] = 50; // Consume 1
	        break;
	    case 15:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 270; // Consume 1
	        datosItem[3] = 350; // Consume 2
	        datosItem[4] = 15; // Consume 3
	        break;
	    case 16:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 270; // Consume 1
	        datosItem[3] = 400; // Consume 2
	        datosItem[4] = 35; // Consume 3
	        break;
	    case 17:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 300; // Consume 1
	        datosItem[3] = 170; // Consume 2
	        datosItem[4] = 150; // Consume 3
	        break;
	    case 86:
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 450; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 87:
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 450; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 88:
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 450; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 89:
	        datosItem[1] = 85; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 450; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 90:
	        datosItem[1] = 85; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 450; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 91:
	        datosItem[1] = 90; // Skillpoints requeridos
	        datosItem[2] = 475; // Consume 1
	        datosItem[3] = 475; // Consume 2
	        datosItem[4] = 250; // Consume 3
	        break;
	    case 92:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 500; // Consume 1 
	        datosItem[3] = 475; // Consume 2 
	        datosItem[4] = 250; // Consume 3 
	        break;
	    case 94:
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 120; // Consume 1
	        break;
	    case 95:
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 170; // Consume 1
	        datosItem[3] = 135; // Consume 2
	        datosItem[4] = 15; // Consume 3
	        break;
	    case 100:
	        datosItem[1] = 85; // Skillpoints requeridos
	        datosItem[2] = 380; // Consume 1
	        datosItem[3] = 150; // Consume 2
	        datosItem[4] = 90; // Consume 3
	        break;
        
	    // Sastrería
    
	    case 41:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 85; // Skillpoints requeridos
	        datosItem[2] = 480; // Consume 1
	        break;
	    case 42:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 85; // Skillpoints requeridos
	        datosItem[2] = 480; // Consume 1
	        break;
	    case 43:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 280; // Consume 1
	        break;
	    case 44:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 280; // Consume 1
	        break;
	    case 45:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 0; // Skillpoints requeridos
	        datosItem[2] = 5; // Consume 1
	        break;
	    case 61:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 65; // Skillpoints requeridos
	        datosItem[2] = 175; // Consume 1
	        break;
	    case 66:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 60; // Skillpoints requeridos
	        datosItem[2] = 150; // Consume 1
	        break;
	    case 67:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 60; // Skillpoints requeridos
	        datosItem[2] = 150; // Consume 1
	        break;
	    case 68:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 280; // Consume 1
	        break;
	    case 69:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 280; // Consume 1
	        break;
	    case 70:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 80; // Skillpoints requeridos
	        datosItem[2] = 280; // Consume 1
	        break;
	    case 97:
	        datosItem[0] = 15; // Nro Skill (10 = herrería / 9 = carpintería / 15 = sastrería)
	        datosItem[1] = 100; // Skillpoints requeridos
	        datosItem[2] = 500; // Consume 1
	        break;
    
	}

	if (datosItem[0] == 10) {
	    if (datosItem[2] > 0) {
	        datosItem[2] = round(datosItem[2] / 4);
	        if (datosItem[2] < 0) {
	            datosItem[2] = 1;
	        }
	    }   
	    if (datosItem[3] > 0) {
	        datosItem[3] = round(datosItem[3] / 4);
	        if (datosItem[3] < 0) {
	            datosItem[3] = 0;
	        }
	    }   
	    if (datosItem[4] > 0) {
	        datosItem[4] = round(datosItem[4] / 4);
	        if (datosItem[4] < 0) {
	            datosItem[4] = 0;
	        }
	    }   
	} else if (datosItem[0] == 15) {
	    if (datosItem[2] > 0) {
	        datosItem[2] = round(datosItem[2] / 16);
	        if (datosItem[2] <= 0) {
	            datosItem[2] = 1;
	        }
	    }
	}

	return datosItem;











}
