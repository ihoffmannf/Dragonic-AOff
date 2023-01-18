/// @description  agregarHechizo(indiceHechizo)
/// @param indiceHechizo
function agregarHechizo(argument0) {

	var yaExiste = false;

	for (var i = 0; i < obj_hechizos.maximoHechizos; i++) {
	    if (obj_hechizos.indiceHechizos[i] == argument0 - 120) {
	        yaExiste = true;
	        break;
	    }
	}

	if (!yaExiste) {

	    for (var i = 0; i < obj_hechizos.maximoHechizos; i++) {
	        if (obj_hechizos.indiceHechizos[i] == -1) {
	            break;
	        }
	    }
    
	    /*
    
	    0-Curar Veneno                  OK
	    1-Curar Heridas Leves           OK
	    2-Curar Heridas Graves          OK
	    3-Remover Parálisis             OK
	    4-Invisibilidad                 OK
	    5-Dardo Mágico                  OK
	    6-Flecha Mágica                 OK
	    7-Flecha Eléctrica              OK
	    8-Misil Mágico                  OK
	    9-Tormenta de Fuego             OK
	    10-Descarga Eléctrica           OK
	    11-Apocalipsis                  OK
	    12-Paralizar                    OK    
	    13-Inmovilizar                  OK
	    14-Llamado a la Naturaleza      OK
	    15-Invocar Zombies              OK
	    16-Invocar Elemental de Agua    OK
	    17-Invocar Elemental de Fuego   OK
	    18-Invocar Elemental de Tierra  OK
	    19-Invocar Mascotas             OK
    
	    */
    
	    switch (argument0) {
	        case 120:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Curar Veneno";
	            obj_hechizos.manaHechizos[i] = 12;
	            obj_hechizos.energiaHechizos[i] = 1;
	            obj_hechizos.skillHechizos[i] = 10;
	            obj_hechizos.tipoHechizos[i] = "curar veneno";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "NIHIL VED";
	            break;
	        case 121:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Curar Heridas Leves";
	            obj_hechizos.manaHechizos[i] = 10;
	            obj_hechizos.energiaHechizos[i] = 5;
	            obj_hechizos.skillHechizos[i] = 15;
	            obj_hechizos.tipoHechizos[i] = "curacion";
	            obj_hechizos.efectoMinHechizos[i] = 1;
	            obj_hechizos.efectoMaxHechizos[i] = 5;
	            obj_hechizos.palabrasMagicasHechizos[i] = "CORP SANC";
	            break;
	        case 122:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Curar Heridas Graves";
	            obj_hechizos.manaHechizos[i] = 40;
	            obj_hechizos.energiaHechizos[i] = 21;
	            obj_hechizos.skillHechizos[i] = 38;
	            obj_hechizos.tipoHechizos[i] = "curacion";
	            obj_hechizos.efectoMinHechizos[i] = 12;
	            obj_hechizos.efectoMaxHechizos[i] = 35;
	            obj_hechizos.palabrasMagicasHechizos[i] = "EN CORP SANCTIS";
	            break;
	        case 123:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Remover Parálisis";
	            obj_hechizos.manaHechizos[i] = 300;
	            obj_hechizos.energiaHechizos[i] = 44;
	            obj_hechizos.skillHechizos[i] = 45;
	            obj_hechizos.tipoHechizos[i] = "remover";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "AN HOAX VORP";
	            break;
	        case 124:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invisibilidad";
	            obj_hechizos.manaHechizos[i] = 500;
	            obj_hechizos.energiaHechizos[i] = 72;
	            obj_hechizos.skillHechizos[i] = 87;
	            obj_hechizos.tipoHechizos[i] = "invisibilidad";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "";
	            break;
	        case 125:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Dardo Mágico";
	            obj_hechizos.manaHechizos[i] = 10;
	            obj_hechizos.energiaHechizos[i] = 1;
	            obj_hechizos.skillHechizos[i] = 5;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 4;
	            obj_hechizos.efectoMaxHechizos[i] = 6;
	            obj_hechizos.palabrasMagicasHechizos[i] = "OHL VOR PEK";
	            break;
	        case 126:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Flecha Mágica";
	            obj_hechizos.manaHechizos[i] = 20;
	            obj_hechizos.energiaHechizos[i] = 2;
	            obj_hechizos.skillHechizos[i] = 12;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 6;
	            obj_hechizos.efectoMaxHechizos[i] = 12;
	            obj_hechizos.palabrasMagicasHechizos[i] = "VAX PER";
	            break;
	        case 127:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Flecha Eléctrica";
	            obj_hechizos.manaHechizos[i] = 40;
	            obj_hechizos.energiaHechizos[i] = 5;
	            obj_hechizos.skillHechizos[i] = 22;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 12;
	            obj_hechizos.efectoMaxHechizos[i] = 20;
	            obj_hechizos.palabrasMagicasHechizos[i] = "SUN VAP";
	            break;
	        case 128:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Misil Mágico";
	            obj_hechizos.manaHechizos[i] = 45;
	            obj_hechizos.energiaHechizos[i] = 6;
	            obj_hechizos.skillHechizos[i] = 38;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 25;
	            obj_hechizos.efectoMaxHechizos[i] = 35;
	            obj_hechizos.palabrasMagicasHechizos[i] = "VAX IN TAR";
	            break;
	        case 129:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Tormenta de Fuego";
	            obj_hechizos.manaHechizos[i] = 210;
	            obj_hechizos.energiaHechizos[i] = 44;
	            obj_hechizos.skillHechizos[i] = 60;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 40;
	            obj_hechizos.efectoMaxHechizos[i] = 60;
	            obj_hechizos.palabrasMagicasHechizos[i] = "EN VAX ON TAR";
	            break;
	        case 130:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Descarga Eléctrica";
	            obj_hechizos.manaHechizos[i] = 460;
	            obj_hechizos.energiaHechizos[i] = 72;
	            obj_hechizos.skillHechizos[i] = 85;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 63;
	            obj_hechizos.efectoMaxHechizos[i] = 85;
	            obj_hechizos.palabrasMagicasHechizos[i] = "T'HY KOOOL";
	            break;
	        case 131:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Apocalipsis";
	            obj_hechizos.manaHechizos[i] = 1000;
	            obj_hechizos.energiaHechizos[i] = 145;
	            obj_hechizos.skillHechizos[i] = 100;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 87;
	            obj_hechizos.efectoMaxHechizos[i] = 98;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Rahma Nañarak O'al";
	            break;
	        case 132:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Paralizar";
	            obj_hechizos.manaHechizos[i] = 450;
	            obj_hechizos.energiaHechizos[i] = 88;
	            obj_hechizos.skillHechizos[i] = 60;
	            obj_hechizos.tipoHechizos[i] = "paralisis";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "HOAX VORP";
	            break;
	        case 133:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Inmovilizar";
	            obj_hechizos.manaHechizos[i] = 300;
	            obj_hechizos.energiaHechizos[i] = 44;
	            obj_hechizos.skillHechizos[i] = 60;
	            obj_hechizos.tipoHechizos[i] = "paralisis";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Är Prop s'uo";
	            break;
	        case 134:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Llamado a la Naturaleza";
	            obj_hechizos.manaHechizos[i] = 120;
	            obj_hechizos.energiaHechizos[i] = 16;
	            obj_hechizos.skillHechizos[i] = 25;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Nature et worg";
	            break;
	        case 135:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invocar Zombies";
	            obj_hechizos.manaHechizos[i] = 220;
	            obj_hechizos.energiaHechizos[i] = 31;
	            obj_hechizos.skillHechizos[i] = 35;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "MoÎ cámus";
	            break;
	        case 136:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invocar Elemental de Agua";
	            obj_hechizos.manaHechizos[i] = 950;
	            obj_hechizos.energiaHechizos[i] = 131;
	            obj_hechizos.skillHechizos[i] = 87;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Wata Mantra'rax";
	            break;
	        case 137:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invocar Elemental de Tierra";
	            obj_hechizos.manaHechizos[i] = 950;
	            obj_hechizos.energiaHechizos[i] = 165;
	            obj_hechizos.skillHechizos[i] = 95;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Mu Mantra'rax";
	            break;
	        case 138:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invocar Elemental de Fuego";
	            obj_hechizos.manaHechizos[i] = 900;
	            obj_hechizos.energiaHechizos[i] = 165;
	            obj_hechizos.skillHechizos[i] = 100;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Evarg Icrem Oth";
	            break;
	        case 139:
	            obj_hechizos.indiceHechizos[i] = argument0 - 120;
	            obj_hechizos.nombreHechizos[i] = "Invocar Mascotas";
	            obj_hechizos.manaHechizos[i] = 1000;
	            obj_hechizos.energiaHechizos[i] = 165;
	            obj_hechizos.skillHechizos[i] = 87;
	            obj_hechizos.tipoHechizos[i] = "invocacion";
	            obj_hechizos.efectoMinHechizos[i] = 0;
	            obj_hechizos.efectoMaxHechizos[i] = 0;
	            obj_hechizos.palabrasMagicasHechizos[i] = "Tsälo Kai'Tor";
	            break;
	    }
    
	    obj_hechizos.seleccionado = -1;
    
	    return true;

	} else {
	    return false;
	}



}
