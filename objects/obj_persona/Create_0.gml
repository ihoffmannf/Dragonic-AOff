/// @description  Estado inicial

visible = false;

gradoIA = 0.65; // Media

if (obj_control_opciones.dificultad == 1) {
    gradoIA = 0.75; // Alta
}

hostil = true;
image_speed = 0;
enemigo = false;
siguiendo = false;
direccion = 0;
puedeMoverse = true;
moviendose = false;
xInicio = x;
yInicio = y;
spd = 2.35;
spdUltimoPaso = 1.46; // En realidad es 1.45
pasos = 0;
pasosMax = 13;
envenena = false;
veneno = 0;
muerto = false;
xObjetivo = x;
yObjetivo = y;
poteando = false;
roomOrigen = room;
agitando = false;
yaHablo = false;
yaTiroHechizo = false;
yaEncontroItem = false;
dano = 0;
indiceTirarItems = 0;
gano = false;
lukea = true;
tiempoLejosPJ = 0;
tiempoEnView = 0;
yaHabloEnojado1 = false;
yaHabloEnojado2 = false;
yaHabloEnojado3 = false;

// Navega?

navega = false;
enBarca = false;

if (obj_pj.nivel >= 25) {
    navega = true;
}

// Gráfico arma y escudo 

graficoArma = instance_create(x, y, obj_arma_persona);
graficoArma.padre = id;

graficoEscudo = instance_create(x, y, obj_escudo_persona);
graficoEscudo.padre = id;

// Movimiento horizontal/vertical

ordenMovimientos = 0;

// Género (0 = hombre, 1 = mujer)

if (random(10) > 5) {
    genero = 0;
} else {
    genero = 1;
}

// Clase

/* 

0 = Clérigo
1 = Mago
2 = Cazador

*/


clase = floor(random(3));

if (clase < 0 || clase > 2) {
    clase = 0;
}

// Raza 

/*

0 = Humano
1 = Elfo
2 = Elfo Oscuro
3 = Enano
4 = Gnomo

*/

nroRaza = 0;

if (clase == 2) {
    nroRaza = 1;
} else if (clase == 1) {
    if (random(10) > 5) {
        nroRaza = 0;
    } else {
        nroRaza = 4;
    }
} else {
    if (random(10) > 5) {
        nroRaza = 0;
    } else {
        nroRaza = 2;
    }
}

// Cabeza

sprCabeza = elegirCabezaRandom(nroRaza, genero);

// Salud

saludMax = floor(random_range(40, 45));

switch (clase) {
    case 0:
        if (nroRaza == 0) {
            repeat (obj_pj.nivel) {
                saludMax += floor(random_range(10, 11));
            }
        } else {
            repeat (obj_pj.nivel) {
                saludMax += floor(random_range(9, 10));
            }
        }
        break;
    case 1:
        if (nroRaza == 0) {
            repeat (obj_pj.nivel) {
                saludMax += floor(random_range(8, 9));
            }
        } else {
            repeat (obj_pj.nivel) {
                saludMax += floor(random_range(7, 8));
            }
        }
        break;
    case 2:
        repeat (obj_pj.nivel) {
            saludMax += floor(random_range(10, 11));
        }
        break;
}

saludMax = floor(saludMax);
salud = saludMax;

// Maná

manaMax = 0;

switch (clase) {
    case 0:
        if (nroRaza == 0) {
            repeat (obj_pj.nivel) {
                manaMax += 36;
            }
        } else {
            repeat (obj_pj.nivel) {
                manaMax += 40;
            }
        }
        break;
    case 1:
        if (nroRaza == 0) {
            repeat (obj_pj.nivel) {
                manaMax += 54;
            }
        } else {
            repeat (obj_pj.nivel) {
                manaMax += 63;
            }
        }
        break;
    case 2:
        repeat (obj_pj.nivel) {
            manaMax += 20;
        }
        break;
}

manaMax = floor(manaMax * 0.75);

if (manaMax < 0) {
    manaMax = 0;
}

if (clase != 2 && manaMax < 45) {
    manaMax = 45;
}

mana = manaMax;

// Criminal / Ciudadano

if (random(10) > 7.5) {
    pk = true;
} else {
    pk = false;
}

if (obj_pj.nivel <= 12) {
    pk = false;
}

rangoFaccion = 0;

if (random(10) > 8.5) {
	if (obj_pj.nivel >= 30) {
		rangoFaccion = 1;
	} else if (obj_pj.nivel >= 35) {
		rangoFaccion = choose(1, 2);
	} else if (obj_pj.nivel >= 40) {
		rangoFaccion = choose(1, 2, 3);
	}
}

// Nombre

nombre = elegirNombreIA();

// Gráfico

index[0, 0] = 0;
index[0, 1] = 1;
index[0, 2] = 2;
index[0, 3] = 3;
index[0, 4] = 4;

index[1, 0] = 5;
index[1, 1] = 6;
index[1, 2] = 7;
index[1, 3] = 8;
index[1, 4] = 9;

index[2, 0] = 10;
index[2, 1] = 11;
index[2, 2] = 12;
index[2, 3] = 13;
index[2, 4] = 14;

index[3, 0] = 15;
index[3, 1] = 16;
index[3, 2] = 17;
index[3, 3] = 18;
index[3, 4] = 19;

frame = 0;

// Alarm 2

intervaloAtaque = 240;
alarm[2] = intervaloAtaque;

// Fuerza

danoMeleeMin = obj_pj.danoMin * random_range(0.8, 0.85);
danoMeleeMax = obj_pj.danoMax * random_range(0.8, 0.85);

// Evasión

evasion = random_range(25, 30);

switch (nroRaza) {
    case 0: // Humano
        evasion += 1 * (obj_pj.nivel / 3);
        break;
    case 1: // Elfo
        evasion += 4 * (obj_pj.nivel / 3);
        break;
    case 2: // EO
        evasion += 2 * (obj_pj.nivel / 3);
        break;
    case 4: // Gnomo
        evasion += 3 * (obj_pj.nivel / 3);
        break;
}

evasion = round(evasion * 1.45);

// Experiencia otorgada al morir

experiencia = 0;

// Inmovilizado

inmovilizado = false;
puedeRemoverse = false;

// Alarm 5, 6, 7 y 8

alarm[5] = 1;
alarm[6] = 1;
alarm[8] = intervaloAtaque;

// Dice palabras mágicas

dicePalabrasMagicas = false;
palabrasMagicas = "";

// Equipo

eqArma = -1;
eqRopa = -1;
eqCascoGorro = -1;
eqEscudo = -1;
eqFlechas = -1;
eqRojas = -1;
eqAzules = -1;

vecItems[0] = -1;
vecItems[1] = -1;
vecItems[2] = -1;
vecItems[3] = -1;
vecItems[4] = -1;
vecItems[5] = -1;
vecItems[6] = -1;
vecItems[7] = -1;
vecItems[8] = -1;
vecItems[9] = -1;
vecItems[10] = -1;
vecItems[11] = -1;
vecItems[12] = -1;
vecItems[13] = -1;
vecItems[14] = -1;
vecItems[15] = -1;
vecItems[16] = -1;
vecItems[17] = -1;
vecItems[18] = -1;
vecItems[19] = -1;

cantItems[0] = 1;
cantItems[1] = 1;
cantItems[2] = 1;
cantItems[3] = 1;
cantItems[4] = floor(random_range(150, 550));
cantItems[5] = floor(random_range(150, 550));
cantItems[6] = floor(random_range(150, 550));
cantItems[7] = 1;
cantItems[8] = 1;
cantItems[9] = 1;
cantItems[10] = 1;
cantItems[11] = 1;
cantItems[12] = 1;
cantItems[13] = 1;
cantItems[14] = 1;
cantItems[15] = 1;
cantItems[16] = 1;
cantItems[17] = 1;
cantItems[18] = 1;
cantItems[19] = 1;

elegirEquipoIA(id);

eqArma = vecItems[0];
eqRopa = vecItems[1];
eqCascoGorro = vecItems[2];
eqEscudo = vecItems[3];
eqFlechas = vecItems[4];
eqRojas = vecItems[5];
eqAzules = vecItems[6];

vecItems[7] = irandom_range(101, 115);
vecItems[8] = irandom_range(116, 119);
cantItems[7] = irandom_range(50, 100);
cantItems[8] = irandom_range(50, 100);

// Alarm 3

visible = true;

// Setea variables en NPCs

with (obj_npc_basic) {
    if (hostil && id != other.id) {
        personaRoom = other.id;
    }
}

// Navegando?

if (obj_pj.nivel >= 25) {
    if (tile_layer_find(10000000, x, y) == -1 && tile_layer_find(1000000, x, y) == -1 && tile_layer_find(100000, x, y) == -1 && tile_layer_find(10000, x, y) == -1) {
        // Hay agua debajo de la IA
        enBarca = true;
    }
}

// Teletransportes

TPCerca = -1;

// NPCs

NPCsEnView[0] = -1;
NPCsEnView[1] = -1;
NPCsEnView[2] = -1;
NPCsEnView[3] = -1;
NPCsEnView[4] = -1;
NPCsEnView[5] = -1;
NPCsEnView[6] = -1;
NPCsEnView[7] = -1;
NPCsEnView[8] = -1;
NPCsEnView[9] = -1;
NPCsEnView[10] = -1;
NPCsEnView[11] = -1;
NPCsEnView[12] = -1;
NPCsEnView[13] = -1;
NPCsEnView[14] = -1;
NPCsEnView[15] = -1;
NPCsEnView[16] = -1;
NPCsEnView[17] = -1;
NPCsEnView[18] = -1;
NPCsEnView[19] = -1;

// Inmovilizados

inmovilizados[0] = -1;
inmovilizados[1] = -1;
inmovilizados[2] = -1;
inmovilizados[3] = -1;
inmovilizados[4] = -1;
inmovilizados[5] = -1;
inmovilizados[6] = -1;
inmovilizados[7] = -1;
inmovilizados[8] = -1;
inmovilizados[9] = -1;

// Lugar en el vector de IAs

globalIAAux[0] = -1;
datosIAAux[0] = -1;

// Sigue al PJ al otro mapa?

sigue = true;

// Dibuja

dibujarIA();

/* */
/*  */
