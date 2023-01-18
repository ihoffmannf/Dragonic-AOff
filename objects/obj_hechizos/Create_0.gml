/// @description  Estado inicial

/*

    Total = 20

    0-Curar Veneno
    1-Curar Heridas Leves
    2-Curar Heridas Graves
    3-Remover Parálisis
    4-Invisibilidad
    5-Dardo Mágico
    6-Flecha Mágica
    7-Flecha Eléctrica
    8-Misil Mágico
    9-Tormenta de Fuego
    10-Descarga Eléctrica
    11-Apocalipsis
    12-Paralizar
    13-Inmovilizar
    14-Llamado a la Naturaleza
    15-Invocar Zombies
    16-Invocar Elemental de Agua
    17-Invocar Elemental de Fuego
    18-Invocar Elemental de Tierra
    19-Invocar Mascotas

*/

image_speed = 0;
visible = false;

maximoHechizos = 20;
seleccionado = -1;

moviendoHechizo = false;
posHechizoAMover = 0;

var i = 0;

repeat(maximoHechizos) {
    indiceHechizos[i] = -1;
    nombreHechizos[i] = "";
    tipoHechizos[i] = "";
    manaHechizos[i] = 0;
    energiaHechizos[i] = 0;
    skillHechizos[i] = 0;
    efectoMinHechizos[i] = 0;
    efectoMaxHechizos[i] = 0;
    palabrasMagicasHechizos[i] = "";
    i++;
}

// Dardo mágico para magos

if (obj_pj.clase == 7) {
    indiceHechizos[0] = 5;
	nombreHechizos[0] = "Dardo Mágico";
	manaHechizos[0] = 10;
	energiaHechizos[0] = 1;
	skillHechizos[0] = 5;
	tipoHechizos[0] = "negro";
	efectoMinHechizos[0] = 4;
	efectoMaxHechizos[0] = 6;
	palabrasMagicasHechizos[0] = "OHL VOR PEK";
}

// Doble clic

dobleClic = false;
posDobleClic = -1;

// Paneles

primerPanel = true;

/* */
/*  */
