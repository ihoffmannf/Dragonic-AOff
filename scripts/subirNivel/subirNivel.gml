/// @description  subirNivel()
function subirNivel() {

	obj_skills_libres.mostrado = false;
	obj_pj.experiencia = 0;
	obj_pj.nivel++;
	obj_pj.modDanoLvl += 0.0053;
	obj_pj.skillsLibres += 5;
	obj_pj.energiaMax += 9;
	instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_lvl);

	// Vida

	switch (obj_pj.clase) {
	    case 0: // Arquero
	        obj_pj.saludMax += 10;
	        break;
	    case 1: // Asesino
	        obj_pj.saludMax += 8;
	        break;
	    case 2: // Bardo
	        obj_pj.saludMax += 8;
	        break;
	    case 3: // Cazador
	        obj_pj.saludMax += 9;
	        break;
	    case 4: // Clérigo
	        obj_pj.saludMax += 8;
	        break;
	    case 5: // Druida
	        obj_pj.saludMax += 8;
	        break;
	    case 6: // Guerrero
	        obj_pj.saludMax += 10;
	        break;
	    case 7: // Mago
	        obj_pj.saludMax += 7;
	        break;
	    case 8: // Paladín
	        obj_pj.saludMax += 9;
	        break;
	}

	// Sumo o resto

	var chancesVida;

	switch (obj_pj.atributos[4]) {
	    case 16:
	        chancesVida = 4;
	        break;
	    case 17:
	        chancesVida = 4.5;
	        break;
	    case 18:
	        chancesVida = 5;
	        break;
	    case 19:
	        chancesVida = 5.5;
	        break;
	    case 20:
	        chancesVida = 6;
	        break;
	    case 21:
	        chancesVida = 6.5;
	        break;
	}

	if (random(10) < chancesVida) {
	    obj_pj.saludMax++;
	} else if (random(10) > chancesVida) {
		obj_pj.saludMax--;
	}

	obj_pj.salud = obj_pj.saludMax;

	// Maná

	if (obj_pj.clase != 0 && obj_pj.clase != 6) {

	    if (obj_pj.nroRaza == 0) {
	        if (obj_pj.clase == 1 || obj_pj.clase == 3 || obj_pj.clase == 8) { // Asesino, Cazador y Paladín
	            obj_pj.manaMax += 17;
	        } else if (obj_pj.clase == 2 || obj_pj.clase == 4) { // Bardo y Clérigo
	            obj_pj.manaMax += 36;
	        } else if (obj_pj.clase == 5) { // Druida
	            obj_pj.manaMax += 40;
	        } else if (obj_pj.clase == 7) {// Mago
	            obj_pj.manaMax += 54;
	        }
	    } else if (obj_pj.nroRaza == 1) {
	        if (obj_pj.clase == 1 || obj_pj.clase == 3 || obj_pj.clase == 8) { // Asesino, Cazador y Paladín
	            obj_pj.manaMax += 20;
	        } else if (obj_pj.clase == 2 || obj_pj.clase == 4) { // Bardo y Clérigo
	            obj_pj.manaMax += 40;
	        } else if (obj_pj.clase == 5) { // Druida
	            obj_pj.manaMax += 44;
	        } else if (obj_pj.clase == 7) {// Mago
	            obj_pj.manaMax += 60;
	        }
	    } else if (obj_pj.nroRaza == 2) {
	        if (obj_pj.clase == 1 || obj_pj.clase == 3 || obj_pj.clase == 8) { // Asesino, Cazador y Paladín
	            obj_pj.manaMax += 20;
	        } else if (obj_pj.clase == 2 || obj_pj.clase == 4) { // Bardo y Clérigo
	            obj_pj.manaMax += 40;
	        } else if (obj_pj.clase == 5) { // Druida
	            obj_pj.manaMax += 44;
	        } else if (obj_pj.clase == 7) {// Mago
	            obj_pj.manaMax += 60;
	        }
	    } else if (obj_pj.nroRaza == 3) {
	        if (obj_pj.clase == 1 || obj_pj.clase == 3 || obj_pj.clase == 8) { // Asesino, Cazador y Paladín
	            obj_pj.manaMax += 12;
	        } else if (obj_pj.clase == 2 || obj_pj.clase == 4) { // Bardo y Clérigo
	            obj_pj.manaMax += 24;
	        } else if (obj_pj.clase == 5) { // Druida
	            obj_pj.manaMax += 27;
	        } else if (obj_pj.clase == 7) {// Mago
	            obj_pj.manaMax += 36;
	        }
	    } else if (obj_pj.nroRaza == 4) {
	        if (obj_pj.clase == 1 || obj_pj.clase == 3 || obj_pj.clase == 8) { // Asesino, Cazador y Paladín
	            obj_pj.manaMax += 21;
	        } else if (obj_pj.clase == 2 || obj_pj.clase == 4) { // Bardo y Clérigo
	            obj_pj.manaMax += 42;
	        } else if (obj_pj.clase == 5) { // Druida
	            obj_pj.manaMax += 46;
	        } else if (obj_pj.clase == 7) {// Mago
	            obj_pj.manaMax += 63;
	        }
	    }

	    switch (obj_pj.nroRaza) {
	        case 0:
	            switch (obj_pj.atributos[2]) {
	                case 16:
	                    obj_pj.manaMax -= 4;
	                    break;
	                case 17:
	                    obj_pj.manaMax -= 2;
	                    break;
	                case 18:
	                    obj_pj.manaMax -= 0;
	                    break;
	            }
	            break;
	        case 1:
	            switch (obj_pj.atributos[2]) {
	                case 18:
	                    obj_pj.manaMax -= 4;
	                    break;
	                case 19:
	                    obj_pj.manaMax -= 2;
	                    break;
	                case 20:
	                    obj_pj.manaMax -= 0;
	                    break;
	            }
	            break;
	        case 2:
	            switch (obj_pj.atributos[2]) {
	                case 18:
	                    obj_pj.manaMax -= 4;
	                    break;
	                case 19:
	                    obj_pj.manaMax -= 2;
	                    break;
	                case 20:
	                    obj_pj.manaMax -= 0;
	                    break;
	            }
	            break;
	        case 3:
	            switch (obj_pj.atributos[2]) {
	                case 10:
	                    obj_pj.manaMax -= 4;
	                    break;
	                case 11:
	                    obj_pj.manaMax -= 2;
	                    break;
	                case 12:
	                    obj_pj.manaMax -= 0;
	                    break;
	            }
	            break;
	        case 4:
	            switch (obj_pj.atributos[2]) {
	                case 19:
	                    obj_pj.manaMax -= 4;
	                    break;
	                case 20:
	                    obj_pj.manaMax -= 2;
	                    break;
	                case 21:
	                    obj_pj.manaMax -= 0;
	                    break;
	            }
	            break;
	    }

	}

	if (obj_pj.manaMax < 1) {
	    obj_pj.manaMax = 0;
	}

	obj_pj.mana = obj_pj.manaMax;

	reproducirSonido(snd_subirNivel, false, false);







}
