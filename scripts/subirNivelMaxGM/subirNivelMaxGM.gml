/// @description  subirNivelMaxGM()
function subirNivelMaxGM() {

	while (obj_pj.nivel < obj_pj.nivelMax) {
		subirNivel();
	}

	skills[0] = 100; // Magia
	skills[1] = 100; // Tácticas de Combate
	skills[2] = 100; // Combate con Armas
	skills[3] = 100; // Meditar
	skills[4] = 100; // Apuñalar
	skills[5] = 100; // Talar
	skills[6] = 100; // Defensa con Escudos
	skills[7] = 100; // Pesca
	skills[8] = 100; // Minería
	skills[9] = 100; // Carpintería
	skills[10] = 100; // Herrería
	skills[11] = 100; // Domar Animales
	skills[12] = 100; // Arquería
	skills[13] = 100; // Combate sin Armas
	skills[14] = 100; // Navegación
	skills[15] = 100; // Sastrería
	skills[16] = 100; // Comercio
	skills[17] = 100; // Resistencia Mágica

	oro = oroMax;
	
	obj_inventario.indiceInv[14]="163"
	obj_inventario.cantInv[14]="100"
	obj_inventario.indiceInv[15]="146"
	obj_inventario.cantInv[15]="10000"
	obj_inventario.indiceInv[16]="28"
	obj_inventario.cantInv[16]="10000"
	obj_inventario.indiceInv[17]="151"
	obj_inventario.cantInv[17]="10000"
	obj_inventario.indiceInv[18]="152"
	obj_inventario.cantInv[18]="10000"
	obj_inventario.indiceInv[19]="153"
	obj_inventario.cantInv[19]="10000"

}
