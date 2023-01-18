
/// @description  configurarItem(indiceItem)
/// @param indiceItem
function configurarItem(argument0) {

	/*

	Razas:

	Indistinto = -1;
	Humanos = 0;
	Elfos = 1;
	EO = 2;
	Enanos = 3;
	Gnomos = 4;
	Altos = 5;
	Bajos = 6;
	Altos blancos = 7;
	Elfos / EOs = 8;
	Humanos y Bajos = 9;
	Todos menos EO = 10;

	Generos:

	Indistinto: -1
	Hombre: 0
	Mujer: 1

	*/

	datosItem[0] = ""; // Tipo
	datosItem[1] = -1; // Género
	datosItem[2] = -1; // Raza
	datosItem[3] = 0; // Nro Skill
	datosItem[4] = 0; // Skillpoints requeridos
	datosItem[5] = true; // Clase 0 Arquero
	datosItem[6] = true; // Clase 1 Asesino
	datosItem[7] = true; // Clase 2 Bardo
	datosItem[8] = true; // Clase 3 Cazador
	datosItem[9] = true; // Clase 4 Clérigo
	datosItem[10] = true; // Clase 5 Druida
	datosItem[11] = true; // Clase 6 Guerrero
	datosItem[12] = true; // Clase 7 Mago
	datosItem[13] = true; // Clase 8 Paladín
	datosItem[14] = "Vacío"; // Nombre

	switch (argument0) {
        
	    // Armas (Cuerpo a cuerpo, báculos, arcos)
    
	    case 0:
	        datosItem[14] = "Daga";
	        datosItem[0] = "arma";
	        datosItem[3] = 4;
	        break;
	    case 1:
	        datosItem[14] = "Daga +1";
	        datosItem[0] = "arma";
	        datosItem[3] = 4;
	        datosItem[4] = 20;
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 2:
	        datosItem[14] = "Daga +2";
	        datosItem[0] = "arma";
	        datosItem[3] = 4;
	        datosItem[4] = 35;
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 3:
	        datosItem[14] = "Daga +3";
	        datosItem[0] = "arma";
	        datosItem[3] = 4;
	        datosItem[4] = 50;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 4:
	        datosItem[14] = "Daga +4";
	        datosItem[0] = "arma";
	        datosItem[2] = 9;
	        datosItem[3] = 4;
	        datosItem[4] = 55;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 5:
	        datosItem[14] = "Daga Templaria";
	        datosItem[0] = "arma";
	        datosItem[2] = 8;
	        datosItem[3] = 4;
	        datosItem[4] = 80;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 6:
	        datosItem[14] = "Daga Infernal";
	        datosItem[0] = "arma";
	        datosItem[2] = 8;
	        datosItem[3] = 4;
	        datosItem[4] = 87;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 7:
	        datosItem[14] = "Espada Corta";
	        datosItem[0] = "arma";
	        datosItem[3] = 4;
	        datosItem[4] = 15;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 8:
	        datosItem[14] = "Espada Larga";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 10;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 9:
	        datosItem[14] = "Hacha Orca";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 20;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 10:
	        datosItem[14] = "Hacha Larga";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 25;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 11:
	        datosItem[14] = "Sable";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 37;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 12:
	        datosItem[14] = "Hacha Bárbara";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 37;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 13:
	        datosItem[14] = "Hacha Doble Filo";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 60;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 14:
	        datosItem[14] = "Cimitarra";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 55;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 15:
	        datosItem[14] = "Espada de Plata";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 70;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 16:
	        datosItem[14] = "Espada de Plata +1";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 83;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 17:
	        datosItem[14] = "Espada Neithan";
	        datosItem[0] = "arma";
	        datosItem[3] = 2;
	        datosItem[4] = 97;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 18:
	        datosItem[14] = "Vara de Fresno";
	        datosItem[0] = "arma";
	        datosItem[3] = 0;
	        datosItem[4] = 50;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 19:
	        datosItem[14] = "Bastón Nudoso";
	        datosItem[0] = "arma";
	        datosItem[3] = 0;
	        datosItem[4] = 60;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 20:
	        datosItem[14] = "Báculo Engarzado";
	        datosItem[0] = "arma";
	        datosItem[3] = 0;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 227:
	        datosItem[14] = "Báculo Delideral";
	        datosItem[0] = "arma";
	        datosItem[3] = 0;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 21:
	        datosItem[14] = "Arco Simple";
	        datosItem[0] = "arma";
	        datosItem[3] = 12;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 22:
	        datosItem[14] = "Arco Simple Reforzado";
	        datosItem[0] = "arma";
	        datosItem[3] = 12;
	        datosItem[4] = 30;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 23:
	        datosItem[14] = "Arco Compuesto";
	        datosItem[0] = "arma";
	        datosItem[3] = 12;
	        datosItem[4] = 60;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 24:
	        datosItem[14] = "Arco de las Tinieblas";
	        datosItem[0] = "arma";
	        datosItem[2] = 8;
	        datosItem[3] = 12;
	        datosItem[4] = 70;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 25:
	        datosItem[14] = "Arco de la Marca";
	        datosItem[0] = "arma";
	        datosItem[3] = 12;
	        datosItem[4] = 90;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 26:
	        datosItem[14] = "Arco Largo Engarzado";
	        datosItem[0] = "arma";
	        datosItem[2] = 7;
	        datosItem[3] = 12;
	        datosItem[4] = 90;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 27:
	        datosItem[14] = "Arco Élfico";
	        datosItem[0] = "arma";
	        datosItem[2] = 1;
	        datosItem[3] = 12;
	        datosItem[4] = 100;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Piel de lobo y flechas
        
	    case 28:
	        datosItem[14] = "Piel de Lobo";
	        datosItem[0] = "recogible";
	        break;
	    case 29:
	        datosItem[14] = "Flecha";
	        datosItem[0] = "flecha";
	        break;
	    case 30:
	        datosItem[14] = "Flecha +1";
	        datosItem[0] = "flecha";
	        break;
	    case 31:
	        datosItem[14] = "Flecha +2";
	        datosItem[0] = "flecha";
	        break;
	    case 32:
	        datosItem[14] = "Flecha Incendiaria";
	        datosItem[0] = "flecha";
	        break;
	    case 217:
	        datosItem[14] = "Flecha Paralizante";
	        datosItem[0] = "flecha";
	        break;
        
	    // Túnicas, ropas y armaduras
        
	    case 33:
	        datosItem[14] = "Túnica Roja";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 34:
	        datosItem[14] = "Túnica Roja (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 35:
	        datosItem[14] = "Túnica de Monje";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 36:
	        datosItem[14] = "Túnica de Mago";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 37:
	        datosItem[14] = "Túnica Morghai";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 53;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 38:
	        datosItem[14] = "Túnica Morghai (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 53;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 39:
	        datosItem[14] = "Túnica de la Cruz";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        break;
	    case 40:
	        datosItem[14] = "Túnica Azul";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 41:
	        datosItem[14] = "Túnica Legendaria";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 85;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 42:
	        datosItem[14] = "Túnica Legendaria (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 85;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 43:
	        datosItem[14] = "Túnica de Druida";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 44:
	        datosItem[14] = "Túnica de Druida (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 45:
	        datosItem[14] = "Ropa Común";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        break;
	    case 46:
	        datosItem[14] = "Ropa Común";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        break;
	    case 47:
	        datosItem[14] = "Ropa Común";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        break;
	    case 48:
	        datosItem[14] = "Ropa Común (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        break;
	    case 49:
	        datosItem[14] = "Ropa Común (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        break;
	    case 50:
	        datosItem[14] = "Ropa Común (M-E/G)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        break;
	    case 51:
	        datosItem[14] = "Ropa de Clan (H/E)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        break;
	    case 52:
	        datosItem[14] = "Vestido Azul (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        break;
	    case 53:
	        datosItem[14] = "Ropa de Pordiosero (H/E)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        break;
	    case 54:
	        datosItem[14] = "Ropa de Obispo";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        break;
	    case 55:
	        datosItem[14] = "Ropa de Campesino";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 25;
	        break;
	    case 56:
	        datosItem[14] = "Ropa de Campesino (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 25;
	        break;
	    case 57:
	        datosItem[14] = "Ropa de Carpintero";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        break;
	    case 58:
	        datosItem[14] = "Ropa de Minero";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 43;
	        break;
	    case 59:
	        datosItem[14] = "Ropa de Minero (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 43;
	        break;
	    case 60:
	        datosItem[14] = "Vestido Negro (M-E/G)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        break;
	    case 61:
	        datosItem[14] = "Vestido Indulgente (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        break;
	    case 62:
	        datosItem[14] = "Ropa Estuario (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 25;
	        break;
	    case 63:
	        datosItem[14] = "White Lady (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 37;
	        break;
	    case 64:
	        datosItem[14] = "Vestido de Novia Sensual (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        break;
	    case 65:
	        datosItem[14] = "Vestido de Novia Sensual (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        break;
	    case 66:
	        datosItem[14] = "Vestido de Bruja (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 67:
	        datosItem[14] = "Vestido de Bruja (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 68:
	        datosItem[14] = "Ropa Invernal";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        break;
	    case 69:
	        datosItem[14] = "Ropa Invernal (M)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        break;
	    case 70:
	        datosItem[14] = "Ropa Invernal (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 45;
	        break;
	    case 71:
	        datosItem[14] = "Ropa Común (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        break;
	    case 72:
	        datosItem[14] = "Armadura de Cuero (H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 20;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 73:
	        datosItem[14] = "Armadura de Cuero (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 20;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 74:
	        datosItem[14] = "Armadura de Cuero (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 20;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 75:
	        datosItem[14] = "Cota de Mallas";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 30;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 76:
	        datosItem[14] = "Cota de Mallas (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 30;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 77:
	        datosItem[14] = "Cota de Mallas (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 30;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 78:
	        datosItem[14] = "Armadura de las Sombras";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 60;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 79:
	        datosItem[14] = "Armadura de Placas";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 80:
	        datosItem[14] = "Armadura de Placas (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 81:
	        datosItem[14] = "Armadura de Placas Azul (M)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 75;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 82:
	        datosItem[14] = "Armadura de Placas Roja (M-H/E)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 75;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 83:
	        datosItem[14] = "Armadura de Cazador (H/E)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 84:
	        datosItem[14] = "Armadura de Cazador (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 85:
	        datosItem[14] = "Armadura de Herrero";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 0;
	        break;
	    case 86:
	        datosItem[14] = "Armadura de la Ciénaga";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 80;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 87:
	        datosItem[14] = "Trampa Visual (M-E/H)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 7;
	        datosItem[3] = 1;
	        datosItem[4] = 75;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 88:
	        datosItem[14] = "Armadura de Placas +1";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 80;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 89:
	        datosItem[14] = "Armadura Bruñida";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 85;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 90:
	        datosItem[14] = "Armadura de Placas +2";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 85;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 91:
	        datosItem[14] = "Armadura Escarlata";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 92:
	        datosItem[14] = "Armadura Legendaria";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 212:
	        datosItem[14] = "Armadura de Cuero (EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 20;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 213:
	        datosItem[14] = "Armadura de Cuero (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 20;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 214:
	        datosItem[14] = "Cota de Mallas (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 30;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 215:
	        datosItem[14] = "Armadura de Cazador (EO)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 63;
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 216:
	        datosItem[14] = "Armadura de Placas Roja (M-EO)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 2;
	        datosItem[3] = 1;
	        datosItem[4] = 75;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 222:
	        datosItem[14] = "Armadura Dragonic";
	        datosItem[0] = "ropa";
	        datosItem[1] = 0;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 223:
	        datosItem[14] = "Armadura Dragonic (M)";
	        datosItem[0] = "ropa";
	        datosItem[1] = 1;
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 224:
	        datosItem[14] = "Armadura Dragonic (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 225:
	        datosItem[14] = "Túnica Dragonic";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 226:
	        datosItem[14] = "Túnica Dragonic (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[3] = 1;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Cascos y gorros
    
	    case 93:
	        datosItem[14] = "Casco de Hierro";
	        datosItem[0] = "casco";
	        datosItem[3] = 1;
	        datosItem[4] = 15;
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 94:
	        datosItem[14] = "Casco de Hierro Completo";
	        datosItem[0] = "casco";
	        datosItem[3] = 1;
	        datosItem[4] = 70;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 95:
	        datosItem[14] = "Casco de Plata";
	        datosItem[0] = "casco";
	        datosItem[3] = 1;
	        datosItem[4] = 80;
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 96:
	        datosItem[14] = "Sombrero de Principiante";
	        datosItem[0] = "casco";
	        datosItem[3] = 17;
	        datosItem[4] = 50;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 97:
	        datosItem[14] = "Sombrero de Hechicero";
	        datosItem[0] = "casco";
	        datosItem[3] = 17;
	        datosItem[4] = 100;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Escudos
    
	    case 98:
	        datosItem[14] = "Escudo de Tortuga";
	        datosItem[0] = "escudo";
	        datosItem[3] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 99:
	        datosItem[14] = "Escudo de Hierro";
	        datosItem[0] = "escudo";
	        datosItem[3] = 6;
	        datosItem[4] = 50;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
	    case 100:
	        datosItem[14] = "Escudo Imperial";
	        datosItem[0] = "escudo";
	        datosItem[3] = 6;
	        datosItem[4] = 63;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        break;
        
	    // Comida
    
	    case 101:
	        datosItem[14] = "Manzana";
	        datosItem[0] = "comida";
	        break;
	    case 102:
	        datosItem[14] = "Porción de Tarta";
	        datosItem[0] = "comida";
	        break;
	    case 103:
	        datosItem[14] = "Frutas del Bosque";
	        datosItem[0] = "comida";
	        break;
	    case 104:
	        datosItem[14] = "Pan de Trigo";
	        datosItem[0] = "comida";
	        break;
	    case 105:
	        datosItem[14] = "Pan de Maíz";
	        datosItem[0] = "comida";
	        break;
	    case 106:
	        datosItem[14] = "Pastel";
	        datosItem[0] = "comida";
	        break;
	    case 107:
	        datosItem[14] = "Pollo";
	        datosItem[0] = "comida";
	        break;
	    case 108:
	        datosItem[14] = "Chuleta";
	        datosItem[0] = "comida";
	        break;
	    case 109:
	        datosItem[14] = "Queso de Cabra";
	        datosItem[0] = "comida";
	        break;
	    case 110:
	        datosItem[14] = "Sandía";
	        datosItem[0] = "comida";
	        break;
	    case 111:
	        datosItem[14] = "Merluza";
	        datosItem[0] = "comida";
	        break;
	    case 112:
	        datosItem[14] = "Pejerrey";
	        datosItem[0] = "comida";
	        break;
	    case 113:
	        datosItem[14] = "Pez Espada";
	        datosItem[0] = "comida";
	        break;
	    case 114:
	        datosItem[14] = "Salmón";
	        datosItem[0] = "comida";
	        break;
	    case 115:
	        datosItem[14] = "Caballito de Mar";
	        datosItem[0] = "comida";
	        break;
        
	    // Bebida
    
	    case 116:
	        datosItem[14] = "Agua";
	        datosItem[0] = "bebida";
	        break;
	    case 117:
	        datosItem[14] = "Cerveza";
	        datosItem[0] = "bebida";
	        break;
	    case 118:
	        datosItem[14] = "Vino";
	        datosItem[0] = "bebida";
	        break;
	    case 119:
	        datosItem[14] = "Jugo de Frutas";
	        datosItem[0] = "bebida";
	        break;
        
	    // Hechizos
    
	    case 120:
	        datosItem[14] = "Curar Veneno";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 121:
	        datosItem[14] = "Curar Heridas Leves";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 122:
	        datosItem[14] = "Curar Heridas Graves";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 123:
	        datosItem[14] = "Remover Parálisis";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 124:
	        datosItem[14] = "Invisibilidad";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 125:
	        datosItem[14] = "Dardo Mágico";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 126:
	        datosItem[14] = "Flecha Mágica";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 127:
	        datosItem[14] = "Flecha Eléctrica";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 128:
	        datosItem[14] = "Misil Mágico";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 129:
	        datosItem[14] = "Tormenta de Fuego";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 130:
	        datosItem[14] = "Descarga Eléctrica";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 131:
	        datosItem[14] = "Apocalipsis";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 132:
	        datosItem[14] = "Paralizar";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 133:
	        datosItem[14] = "Inmovilizar";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 134:
	        datosItem[14] = "Llamado a la Naturaleza";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 135:
	        datosItem[14] = "Invocar Zombies";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 136:
	        datosItem[14] = "Invocar Elemental de Agua";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[11] = false; // Clase 6 Guerrero
	        break;
	    case 137:
	        datosItem[14] = "Invocar Elemental de Tierra";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 138:
	        datosItem[14] = "Invocar Elemental de Fuego";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 139:
	        datosItem[14] = "Invocar Mascotas";
	        datosItem[0] = "hechizo";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Laúd
        
	    case 140:
	        datosItem[14] = "Laúd";
	        datosItem[0] = "laud";
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Pociones
        
	    case 141:
	        datosItem[14] = "Poción Roja";
	        datosItem[0] = "pocion";
	        break;
	    case 142:
	        datosItem[14] = "Poción Azul";
	        datosItem[0] = "pocion";
	        break; 
	    case 143:
	        datosItem[14] = "Poción Violeta";
	        datosItem[0] = "pocion";
	        break;
	    case 218:
	        datosItem[14] = "Poción Amarilla";
	        datosItem[0] = "pocion";
	        break;
	    case 219:
	        datosItem[14] = "Poción Verde";
	        datosItem[0] = "pocion";
	        break;
	    case 220:
	        datosItem[14] = "Poción Nerga";
	        datosItem[0] = "pocion";
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 221:
	        datosItem[14] = "Poción Blanca";
	        datosItem[0] = "pocion";
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[7] = false; // Clase 2 Bardo
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[9] = false; // Clase 4 Clérigo
	        datosItem[10] = false; // Clase 5 Druida
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
        
	    // Barca
    
	    case 144:
	        datosItem[14] = "Barca";
	        datosItem[0] = "barca";
	        datosItem[3] = 14;
	        datosItem[4] = 70;
	        break;
        
	    // Runa
    
	    case 145:
	        datosItem[14] = "Runa de Resurrección";
	        datosItem[0] = "runa";
	        break;
        
	    // Trabajos
    
	    case 146:
	        datosItem[14] = "Leña";
	        datosItem[0] = "lena";
	        break;
	    case 147:
	        datosItem[14] = "Hacha de Talador";
	        datosItem[0] = "trabajo";
	        break;
	    case 148:
	        datosItem[14] = "Minerales de Hierro";
	        datosItem[0] = "mineral";
	        break;
	    case 149:
	        datosItem[14] = "Minerales de Plata";
	        datosItem[0] = "mineral";
	        break;
	    case 150:
	        datosItem[14] = "Minerales de Oro";
	        datosItem[0] = "mineral";
	        break;
	    case 151:
	        datosItem[14] = "Lingote de Hierro";
	        datosItem[0] = "lingote";
	        break;
	    case 152:
	        datosItem[14] = "Lingote de Plata";
	        datosItem[0] = "lingote";
	        break;
	    case 153:
	        datosItem[14] = "Lingote de Oro";
	        datosItem[0] = "lingote";
	        break;
	    case 154:
	        datosItem[14] = "Piquete de Minero";
	        datosItem[0] = "trabajo";
	        break;
	    case 155:
	        datosItem[14] = "Caña de Pesca";
	        datosItem[0] = "trabajo";
	        break;
	    case 156:
	        datosItem[14] = "Red de Pesca";
	        datosItem[0] = "trabajo";
	        datosItem[3] = 7;
	        datosItem[4] = 100;
	        break;
	    case 157:
	        datosItem[14] = "Serrucho de Carpintero";
	        datosItem[0] = "trabajo";
	        break;
	    case 158:
	        datosItem[14] = "Martillo de Herrero";
	        datosItem[0] = "trabajo";
	        break;
	    case 159:
	        datosItem[14] = "Costurero";
	        datosItem[0] = "trabajo";
	        break;
	    case 160:
	        datosItem[14] = "Piel de Oso Pardo";
	        datosItem[0] = "recogible";
	        break;
	    case 161:
	        datosItem[14] = "Piel de Oso Polar";
	        datosItem[0] = "recogible";
	        break;
	    case 162:
	        datosItem[14] = "Piel de Lobo Invernal";
	        datosItem[0] = "recogible";
	        break;
	    case 163:
	        datosItem[14] = "Escamas de Dragonic";
	        datosItem[0] = "recogible";
	        break;
        
	    // Bardos, Druidas y Clérigos

	    case 164:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 165:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 166:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 167:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 168:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 169:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 170:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 171:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 172:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 173:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 174:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
	    case 175:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = false; // Clase 0 Arquero
	        datosItem[6] = false; // Clase 1 Asesino
	        datosItem[8] = false; // Clase 3 Cazador
	        datosItem[11] = false; // Clase 6 Guerrero
	        datosItem[12] = false; // Clase 7 Mago
	        datosItem[13] = false; // Clase 8 Paladín
	        break;
    
	    // Guerreros y Arqueros
    
	    case 176:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 177:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 178:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 179:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 180:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 181:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 182:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 183:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 184:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 185:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 186:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 187:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[12] = true; // Clase 7 Mago
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
    
	    // Magos
    
	    case 188:
	        datosItem[14] = "Túnica Imperial 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 189:
	        datosItem[14] = "Túnica Imperial 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 190:
	        datosItem[14] = "Túnica Imperial 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 191:
	        datosItem[14] = "Túnica Imperial 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 192:
	        datosItem[14] = "Túnica Imperial 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 193:
	        datosItem[14] = "Túnica Imperial 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 194:
	        datosItem[14] = "Túnica Legionaria 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 195:
	        datosItem[14] = "Túnica Legionaria 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 196:
	        datosItem[14] = "Túnica Legionaria 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 197:
	        datosItem[14] = "Túnica Legionaria 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 198:
	        datosItem[14] = "Túnica Legionaria 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
	    case 199:
	        datosItem[14] = "Túnica Legionaria 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[6] = true; // Clase 1 Asesino
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[8] = true; // Clase 3 Cazador
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[13] = true; // Clase 8 Paladín
	        break;
    
	    // Paladines, Cazadores y Asesinos
    
	    case 200:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 201:
	        datosItem[14] = "Armadura Imperial 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 202:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 203:
	        datosItem[14] = "Armadura Imperial 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 204:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 205:
	        datosItem[14] = "Armadura Imperial 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 206:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 207:
	        datosItem[14] = "Armadura Legionaria 3° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 208:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 209:
	        datosItem[14] = "Armadura Legionaria 2° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 210:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía";
	        datosItem[0] = "ropa";
	        datosItem[2] = 5;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
	    case 211:
	        datosItem[14] = "Armadura Legionaria 1° Jerarquía (E/G)";
	        datosItem[0] = "ropa";
	        datosItem[2] = 6;
	        datosItem[5] = true; // Clase 0 Arquero
	        datosItem[7] = true; // Clase 2 Bardo
	        datosItem[9] = true; // Clase 4 Clérigo
	        datosItem[10] = true; // Clase 5 Druida
	        datosItem[11] = true; // Clase 6 Guerrero
	        datosItem[12] = true; // Clase 7 Mago
	        break;
    
    
	}

	return datosItem;
















}
