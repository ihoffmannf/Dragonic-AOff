with (other) {
/// Estado inicial

if (instance_exists(obj_crearPJ)) {
    with (obj_crearPJ) {
        instance_destroy();
    }
}

nombre = "Ringwood";

upKey = false;
downKey = false;
leftKey = false;
rightKey = false;

mapAgarrar = ord("A")
mapAtacar = vk_control
mapUsar = ord("U")
mapArriba = vk_up;
mapAbajo = vk_down;
mapIzquierda = vk_left;
mapDerecha = vk_right;
mapMeditar = vk_f6;

if (instance_exists(obj_nombrePJ)) {
    nombre = obj_nombrePJ.nombre;
    with (obj_nombrePJ) {
        instance_destroy();
    }
}

image_speed = 0;
spd = 2.35;
spdUltimoPaso = 1.46; // En realidad es 1.45
pasos = 0;
pasosMax = 13;
idCuadroDestino = 0;
puedeMoverse = true;
xInicio = x;
yInicio = y;
alinear = false;

alarm[9] = 1;

// Navega?

navega = false;

// Criminal / Ciudadano

pk = false;

// Género (0 = hombre, 1 = mujer)

genero = 0;

if (instance_exists(obj_flecha_sexo_izq)) {
    genero = obj_flecha_sexo_izq.seleccionado;
    with (obj_flecha_sexo_izq) {
        instance_destroy();
    }
}

if (instance_exists(obj_flecha_sexo_der)) {
    with (obj_flecha_sexo_der) {
        instance_destroy();
    }
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

if (instance_exists(obj_flecha_raza_izq)) {
    nroRaza = obj_flecha_raza_izq.seleccionado;
    with (obj_flecha_raza_izq) {
        instance_destroy();
    }
}

if (instance_exists(obj_flecha_raza_der)) {
    with (obj_flecha_raza_der) {
        instance_destroy();
    }
}

switch (nroRaza) {
    case 0:
        raza = "Humano";
        break;
    case 1:
        raza = "Elfo";
        break;
    case 2:
        raza = "Elfo Oscuro";
        break;
    case 3:
        raza = "Enano";
        break;
    case 4:
        raza = "Gnomo";
        break;
}

// Clase

/*

0 = Arquero
1 = Asesino
2 = Bardo
3 = Cazador
4 = Clérigo
5 = Druida
6 = Guerrero
7 = Mago
8 = Paladín

*/

clase = 5;

if (instance_exists(obj_flecha_clase_izq)) {
    clase = obj_flecha_clase_izq.seleccionado;
    with (obj_flecha_clase_izq) {
        instance_destroy();
    }
}

if (instance_exists(obj_flecha_clase_der)) {
    with (obj_flecha_clase_der) {
        instance_destroy();
    }
}

// Atributos

/*

0 = Fuerza
1 = Agilidad
2 = Inteligencia
3 = Carisma
4 = Constitución

*/

atributos[0] = 18;
atributos[1] = 18;
atributos[2] = 18;
atributos[3] = 18;
atributos[4] = 18;

if (instance_exists(obj_dados)) {
    atributos[0] = obj_dados.dados[0];
    atributos[1] = obj_dados.dados[1];
    atributos[2] = obj_dados.dados[2];
    atributos[3] = obj_dados.dados[3];
    atributos[4] = obj_dados.dados[4];
    
    with (obj_dados) {
        instance_destroy();
    }
}

switch (nroRaza) {
    case 0:
        atributos[0] += 1;
        atributos[1] += 1;
        atributos[4] += 2;
        break;
    case 1:
        atributos[1] += 4;
        atributos[2] += 1;
        atributos[3] += 2;
        break;
    case 2:
        atributos[0] += 2;
        atributos[1] += 2;
        atributos[2] += 2;
        atributos[3] -= 3;
        break;
    case 3:
        atributos[0] += 3;
        atributos[1] -= 1;
        atributos[2] -= 6;
        atributos[3] -= 2;
        atributos[4] += 3;
        break;
    case 4:
        atributos[0] -= 4;
        atributos[1] += 3;
        atributos[2] += 3;
        atributos[3] += 1;
        break;
}

// Personas matadas

ciudadanosMatados = 0;
criminalesMatados = 0;

// Skills

skillsLibres = 0;

skills[0] = 0; // Magia
skills[1] = 0; // Tácticas de Combate
skills[2] = 0; // Combate con Armas
skills[3] = 0; // Meditar
skills[4] = 0; // Apuñalar
skills[5] = 0; // Talar
skills[6] = 0; // Defensa con Escudos
skills[7] = 0; // Pesca
skills[8] = 0; // Minería
skills[9] = 0; // Carpintería
skills[10] = 0; // Herrería
skills[11] = 0; // Domar Animales
skills[12] = 0; // Arquería
skills[13] = 0; // Combate sin Armas
skills[14] = 0; // Navegación
skills[15] = 0; // Sastrería
skills[16] = 0; // Comercio
skills[17] = 0; // Resistencia Mágica

if (instance_exists(obj_flecha_skills_izq)) {
    with (obj_flecha_skills_izq) {
        instance_destroy();
    }
}

if (instance_exists(obj_flecha_skills_der)) {
    with (obj_flecha_skills_der) {
        instance_destroy();
    }
}

if (instance_exists(obj_skills)) {
    skills[0] = obj_skills.skills[0];
    skills[1] = obj_skills.skills[1];
    skills[2] = obj_skills.skills[2];
    skills[3] = obj_skills.skills[3];
    skills[4] = obj_skills.skills[4];
    skills[5] = obj_skills.skills[5];
    skills[6] = obj_skills.skills[6];
    skills[7] = obj_skills.skills[7];
    skills[8] = obj_skills.skills[8];
    skills[9] = obj_skills.skills[9];
    skills[10] = obj_skills.skills[10];
    skills[11] = obj_skills.skills[11];
    skills[12] = obj_skills.skills[12];
    skills[13] = obj_skills.skills[13];
    skills[14] = obj_skills.skills[14];
    skills[15] = obj_skills.skills[15];
    skills[16] = obj_skills.skills[16];
    skills[17] = obj_skills.skills[17];
    
    with (obj_skills) {
        instance_destroy();
    }   
}

// Skills Naturales

skillsNaturales[1] = 3;
skillsNaturales[2] = 5;
skillsNaturales[3] = 7;
skillsNaturales[4] = 10;
skillsNaturales[5] = 13;
skillsNaturales[6] = 15;
skillsNaturales[7] = 17;
skillsNaturales[8] = 20;
skillsNaturales[9] = 23;
skillsNaturales[10] = 25;
skillsNaturales[11] = 27;
skillsNaturales[12] = 30;
skillsNaturales[13] = 33;
skillsNaturales[14] = 35;
skillsNaturales[15] = 37;
skillsNaturales[16] = 40;
skillsNaturales[17] = 43;
skillsNaturales[18] = 45;
skillsNaturales[19] = 47;
skillsNaturales[20] = 50;
skillsNaturales[21] = 53;
skillsNaturales[22] = 55;
skillsNaturales[23] = 57;
skillsNaturales[24] = 60;
skillsNaturales[25] = 63;
skillsNaturales[26] = 65;
skillsNaturales[27] = 67;
skillsNaturales[28] = 70;
skillsNaturales[29] = 73;
skillsNaturales[30] = 75;
skillsNaturales[31] = 77;
skillsNaturales[32] = 80;
skillsNaturales[33] = 83;
skillsNaturales[34] = 85;
skillsNaturales[35] = 87;
skillsNaturales[36] = 90;
skillsNaturales[37] = 93;
skillsNaturales[38] = 95;
skillsNaturales[39] = 97;
skillsNaturales[40] = 100;
skillsNaturales[41] = 100;
skillsNaturales[42] = 100;
skillsNaturales[43] = 100;
skillsNaturales[44] = 100;
skillsNaturales[45] = 100;
skillsNaturales[46] = 100;
skillsNaturales[47] = 100;

// Modificadores

modDanoLvl = 0.75;

modEvasion = 1;
modEvasionEscu = 1;
modProbCuerpoACuerpo = 1;
modDanoCuerpoACuerpo = 1;
modProbArco = 1;
modDanoArco = 1;

switch (clase) {
    case 0: // Arquero
        modEvasion = 1.05;
        modEvasionEscu = 1; // No usa escudos
        modProbCuerpoACuerpo = 0.75;
        modDanoCuerpoACuerpo = 0.80;
        modProbArco = 1.10;
        modDanoArco = 1.05;
        break;
    case 1: // Asesino
        modEvasion = 1.10;
        modEvasionEscu = 0.85;
        modProbCuerpoACuerpo = 0.95;
        modDanoCuerpoACuerpo = 0.85;
        modProbArco = 0.75;
        modDanoArco = 0.75;
        break;
    case 2: // Bardo
        modEvasion = 1.05;
        modEvasionEscu = 0.85;
        modProbCuerpoACuerpo = 0.80;
        modDanoCuerpoACuerpo = 0.90;
        modProbArco = 0.75;
        modDanoArco = 0.80;
        break;
    case 3: // Cazador
        modEvasion = 0.95;
        modEvasionEscu = 1; // No usa escudos
        modProbCuerpoACuerpo = 0.75;
        modDanoCuerpoACuerpo = 0.80;
        modProbArco = 0.95;
        modDanoArco = 0.95;
        break;
    case 4: // Clérigo
        modEvasion = 0.85;
        modEvasionEscu = 0.75;
        modProbCuerpoACuerpo = 0.85;
        modDanoCuerpoACuerpo = 0.95;
        modProbArco = 0.70;
        modDanoArco = 0.80;
        break;
    case 5: // Druida
        modEvasion = 0.85;
        modEvasionEscu = 0.70;
        modProbCuerpoACuerpo = 0.70;
        modDanoCuerpoACuerpo = 0.70;
        modProbArco = 1; // No usa arcos
        modDanoArco = 1; // No usa arcos
        break;
    case 6: // Guerrero
        modEvasion = 0.95;
        modEvasionEscu = 0.80;
        modProbCuerpoACuerpo = 1.05;
        modDanoCuerpoACuerpo = 1.05;
        modProbArco = 0.90;
        modDanoArco = 0.85;
        break;
    case 7: // Mago
        modEvasion = 0.80;
        modEvasionEscu = 1; // No usa escudos
        modProbCuerpoACuerpo = 0.60;
        modDanoCuerpoACuerpo = 0.60;
        modProbArco = 1; // No usa arcos
        modDanoArco = 1; // No usa arcos
        break;
    case 8: // Paladín
        modEvasion = 0.85;
        modEvasionEscu = 0.80;
        modProbCuerpoACuerpo = 0.95;
        modDanoCuerpoACuerpo = 0.95;
        modProbArco = 0.85;
        modDanoArco = 0.80;
        break;
}

// Cabeza

if (instance_exists(obj_cabezaPJ))
	sprCabeza = obj_cabezaPJ.cabezas[obj_cabezaPJ.seleccionado];
else
	sprCabeza = elegirCabezaRandom(nroRaza, genero);

/*

    Ultima tecla:
    vk_down = 0;
    vk_up = 1;
    vk_left = 2;
    vk_right = 3;

*/

ultimaTecla = 0;
direccion = 0;

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

// Equipo

armaActual = -1;
armaEnInv = -1;

flechaActual = -1;
flechaEnInv = -1;

intervaloGolpe = 50;
intervaloHechizo = 42.5;

puedeAtacar = true;
atacaConArco = false;
atacaConHechizo = false;

escudoActual = -1;
escudoEnInv = -1;

cascoActual = -1;
cascoEnInv = -1;

laudActual = -1;
laudEnInv = -1;

trabajando = false;

trabajaTala = false;

trabajaMineria = false;
indiceMineral = -1;

trabajaFragua = false;

trabajaPesca = false;
posPescaX = 0;
posPescaY = 0;

trabajoActual = -1;
trabajoEnInv = -1;
trabajoEquipado = false;

// Alarm 0

alarm[0] = 1;

// Salud

saludMax = floor(35 * atributos[4] / 18);
salud = saludMax;

// Maná

manaMax = 0;

if (obj_pj.clase != 0 && obj_pj.clase != 6) {
    
    if (obj_pj.clase == 8) { //  Paladín
        obj_pj.manaMax = 0;
    } else if (obj_pj.clase == 1 || obj_pj.clase == 2 || obj_pj.clase == 3 || obj_pj.clase == 4) { // Asesino, Bardo, Cazador y Clérigo
        obj_pj.manaMax = 50;
    } else if (obj_pj.clase == 5 || obj_pj.clase == 7) { // Druida y Mago
        obj_pj.manaMax = 100;
    }
    
    switch (obj_pj.nroRaza) {
        case 0:
            switch (obj_pj.atributos[2]) {
                case 16:
                    if (obj_pj.manaMax >= 4) {
                        obj_pj.manaMax -= 4;
                    }
                    break;
                case 17:
                    if (obj_pj.manaMax >= 2) {
                        obj_pj.manaMax -= 2;
                    }
                    break;
                case 18:
                    obj_pj.manaMax -= 0;
                    break;
            }
            break;
        case 1:
            switch (obj_pj.atributos[2]) {
                case 18:
                    if (obj_pj.manaMax >= 4) {
                        obj_pj.manaMax -= 4;
                    }
                    break;
                case 19:
                    if (obj_pj.manaMax >= 2) {
                        obj_pj.manaMax -= 2;
                    }
                    break;
                case 20:
                    obj_pj.manaMax -= 0;
                    break;
            }
            break;
        case 2:
            switch (obj_pj.atributos[2]) {
                case 18:
                    if (obj_pj.manaMax >= 4) {
                        obj_pj.manaMax -= 4;
                    }
                    break;
                case 19:
                    if (obj_pj.manaMax >= 2) {
                        obj_pj.manaMax -= 2;
                    }
                    break;
                case 20:
                    obj_pj.manaMax -= 0;
                    break;
            }
            break;
        case 3:
            switch (obj_pj.atributos[2]) {
                case 10:
                    if (obj_pj.manaMax >= 4) {
                        obj_pj.manaMax -= 4;
                    }
                    break;
                case 11:
                    if (obj_pj.manaMax >= 2) {
                        obj_pj.manaMax -= 2;
                    }
                    break;
                case 12:
                    obj_pj.manaMax -= 0;
                    break;
            }
            break;
        case 4:
            switch (obj_pj.atributos[2]) {
                case 19:
                    if (obj_pj.manaMax >= 4) {
                        obj_pj.manaMax -= 4;
                    }
                    break;
                case 20:
                    if (obj_pj.manaMax >= 2) {
                        obj_pj.manaMax -= 2;
                    }
                    break;
                case 21:
                    obj_pj.manaMax -= 0;
                    break;
            }
            break;
    }
    
}

if (manaMax < 0) {
    manaMax = 0;
}

mana = manaMax;

// Energía

energiaMax = 250;
energia = energiaMax;
alarm[2] = 1;

// Hambre y Sed

hambreMax = 100;
hambre = hambreMax;

sedMax = 100;
sed = sedMax;

intervaloHambreYSed = floor(random_range(10800, 14400));
alarm[4] = intervaloHambreYSed;

// Oro

oroMax = 99999999;
oro = 500;

// Meditación

meditando = false;

// Muerto?

muerto = false;

// Desnudo?

desnudo = true;
ropaActual = -1;
ropaEnInv = -1;
ropaIndexada = false;

// Puntos de ataque PJ

danoMin = 12.8;
danoMax = 14.5;

// Laúd equipado

laudEquipado = false;

// Invisible

invisible = false;

// Nivel y experiencia

nivel = 1;
nivelMax = 47;
experiencia = 0;
modOro = 20;
modExp = 5;

expLvl[1] = 15 * modExp;
expLvl[2] = 25 * modExp;
expLvl[3] = 35 * modExp;
expLvl[4] = 45 * modExp;
expLvl[5] = 60 * modExp;
expLvl[6] = 75 * modExp;
expLvl[7] = 95 * modExp;
expLvl[8] = 115 * modExp;
expLvl[9] = 135 * modExp;
expLvl[10] = 155 * modExp;
expLvl[11] = 175 * modExp;
expLvl[12] = 210 * modExp;
expLvl[13] = 250 * modExp;
expLvl[14] = 300 * modExp;
expLvl[15] = 375 * modExp;
expLvl[16] = 450 * modExp;
expLvl[17] = 550 * modExp;
expLvl[18] = 650 * modExp;
expLvl[19] = 775 * modExp;
expLvl[20] = 900 * modExp;
expLvl[21] = 1150 * modExp;
expLvl[22] = 1450 * modExp;
expLvl[23] = 1800 * modExp;
expLvl[24] = 2250 * modExp;
expLvl[25] = 2750 * modExp;
expLvl[26] = 3350 * modExp;
expLvl[27] = 4050 * modExp;
expLvl[28] = 4800 * modExp;
expLvl[29] = 5800 * modExp;
expLvl[30] = 7000 * modExp;
expLvl[31] = 8500 * modExp;
expLvl[32] = 10500 * modExp;
expLvl[33] = 13000 * modExp;
expLvl[34] = 16000 * modExp;
expLvl[35] = 19500 * modExp;
expLvl[36] = 23500 * modExp;
expLvl[37] = 28000 * modExp;
expLvl[38] = 34000 * modExp;
expLvl[39] = 41500 * modExp;
expLvl[40] = 52000 * modExp;
expLvl[41] = 65000 * modExp;
expLvl[42] = 80000 * modExp;
expLvl[43] = 100000 * modExp;
expLvl[44] = 135000 * modExp;
expLvl[45] = 180000 * modExp;
expLvl[46] = 270000 * modExp;
expLvl[47] = 370000 * modExp;

// Dice palabras mágicas

dicePalabrasMagicas = false;
palabrasMagicas = "";

// Envenenado?

envenenado = false;
veneno = 0;

// Runa (Ciudad inicial = Ringville)

roomRuna = 83;
xRuna = 1328;
yRuna = 1232;

encerrado = false;

// Inmovilizado

inmovilizado = false;

// X e Y meditando

xMeditando = x;
yMeditando = y;

// Puntos PK

puntosPK = 0; // Si tiene 0 es ciudadano. Si tiene -1 es PK para siempre

// Doma

criaturasHijas[0, 0] = -1;  criaturasHijas[0, 1] = -1;  criaturasHijas[0, 2] = -1; criaturasHijas[0, 3] = -1; // id, object_index, salud, roomInicial
criaturasHijas[1, 0] = -1;  criaturasHijas[1, 1] = -1;  criaturasHijas[1, 2] = -1; criaturasHijas[1, 3] = -1; // id, object_index, salud, roomInicial
criaturasHijas[2, 0] = -1;  criaturasHijas[2, 1] = -1;  criaturasHijas[2, 2] = -1; criaturasHijas[2, 3] = -1; // id, object_index, salud, roomInicial

// Invocaciones

criaturasInvocadas[0] = -1;
criaturasInvocadas[1] = -1;
criaturasInvocadas[2] = -1;

// Teletransporta

teletransporta = false;

// Sonido mar

obj_sonido_mar.alarm[0] = 1;

// Facciones

esArmada = false;
esLegion = false;
rangoFaccion = 0;

// Dopas

maximoDopa = 4;
dopaFuerza = 0;
dopaAgilidad = 0;
tiempoDopaMax = 90;
tiempoDopa = tiempoDopaMax;

// Polo

estaEnPolo = false;

// Insignias

insigniaPionero = false;

/* */
}
/*  */
