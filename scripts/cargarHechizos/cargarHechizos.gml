/// @description  cargarHechizos()
function cargarHechizos() {

	var nroIndices = 20;
	var vecIndices;

	vecIndices[0] = read("obj_hechizos", "indiceHechizos[0]", -1);
	vecIndices[1] = read("obj_hechizos", "indiceHechizos[1]", -1);
	vecIndices[2] = read("obj_hechizos", "indiceHechizos[2]", -1);
	vecIndices[3] = read("obj_hechizos", "indiceHechizos[3]", -1);
	vecIndices[4] = read("obj_hechizos", "indiceHechizos[4]", -1);
	vecIndices[5] = read("obj_hechizos", "indiceHechizos[5]", -1);
	vecIndices[6] = read("obj_hechizos", "indiceHechizos[6]", -1);
	vecIndices[7] = read("obj_hechizos", "indiceHechizos[7]", -1);
	vecIndices[8] = read("obj_hechizos", "indiceHechizos[8]", -1);
	vecIndices[9] = read("obj_hechizos", "indiceHechizos[9]", -1);
	vecIndices[10] = read("obj_hechizos", "indiceHechizos[10]", -1);
	vecIndices[11] = read("obj_hechizos", "indiceHechizos[11]", -1);
	vecIndices[12] = read("obj_hechizos", "indiceHechizos[12]", -1);
	vecIndices[13] = read("obj_hechizos", "indiceHechizos[13]", -1);
	vecIndices[14] = read("obj_hechizos", "indiceHechizos[14]", -1);
	vecIndices[15] = read("obj_hechizos", "indiceHechizos[15]", -1);
	vecIndices[16] = read("obj_hechizos", "indiceHechizos[16]", -1);
	vecIndices[17] = read("obj_hechizos", "indiceHechizos[17]", -1);
	vecIndices[18] = read("obj_hechizos", "indiceHechizos[18]", -1);
	vecIndices[19] = read("obj_hechizos", "indiceHechizos[19]", -1);

	// Limpio lo hechizos
	
	for (var i = 0; i < nroIndices; i++) { 
	    obj_hechizos.indiceHechizos[i] = -1;
	    obj_hechizos.nombreHechizos[i] = "";
	    obj_hechizos.tipoHechizos[i] = "";
	    obj_hechizos.manaHechizos[i] = 0;
	    obj_hechizos.energiaHechizos[i] = 0;
	    obj_hechizos.skillHechizos[i] = 0;
	    obj_hechizos.efectoMinHechizos[i] = 0;
	    obj_hechizos.efectoMaxHechizos[i] = 0;
	    obj_hechizos.palabrasMagicasHechizos[i] = "";
	}

	// Cargo los hechizos
	
	var j = 0;
	var posicionesDardoMagico;

	for (var i = 0; i < nroIndices; i++) { 
		if (vecIndices[i] == 125) vecIndices[i] = 5;
	    switch (vecIndices[i] + 120) {
	        case 120:
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
	            obj_hechizos.nombreHechizos[i] = "Dardo Mágico";
	            obj_hechizos.manaHechizos[i] = 10;
	            obj_hechizos.energiaHechizos[i] = 1;
	            obj_hechizos.skillHechizos[i] = 5;
	            obj_hechizos.tipoHechizos[i] = "negro";
	            obj_hechizos.efectoMinHechizos[i] = 4;
	            obj_hechizos.efectoMaxHechizos[i] = 6;
	            obj_hechizos.palabrasMagicasHechizos[i] = "OHL VOR PEK";
				posicionesDardoMagico[j] = i;
				j++;
	            break;
	        case 126:
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	            obj_hechizos.indiceHechizos[i] = vecIndices[i];
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
	}

	// Limpio Dardo Mágico duplicados
	
	if (j > 1) {
		for (var i = 0; i < j - 1; i++) { 
			var pos = posicionesDardoMagico[i];
			obj_hechizos.indiceHechizos[pos] = -1;
			obj_hechizos.nombreHechizos[pos] = "";
			obj_hechizos.tipoHechizos[pos] = "";
			obj_hechizos.manaHechizos[pos] = 0;
			obj_hechizos.energiaHechizos[pos] = 0;
			obj_hechizos.skillHechizos[pos] = 0;
			obj_hechizos.efectoMinHechizos[pos] = 0;
			obj_hechizos.efectoMaxHechizos[pos] = 0;
			obj_hechizos.palabrasMagicasHechizos[pos] = "";
		}
	}

}
