/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Dragonic";
roomInicial = room;
hostil = true;
image_speed = 0;
siguiendo = false;
direccion = 0;
puedeMoverse = true;
moviendose = false;
xInicio = x;
yInicio = y;
spd = 2;
envenena = false;
target = -1;

// Persona

personaRoom = -1;

// Salud

saludMax = 50000; // La vida es igual a la del manual
salud = saludMax;

// Gráfico

index[0, 0] = 0;
index[0, 1] = 1;
index[0, 2] = 2;
index[0, 3] = 3;
index[0, 4] = 4;
index[0, 5] = 5;
index[0, 6] = 6;
index[0, 7] = 7;
index[0, 8] = 8;
index[0, 9] = 9;
index[0, 10] = 10;
index[0, 11] = 11;

index[1, 0] = 12;
index[1, 1] = 13;
index[1, 2] = 14;
index[1, 3] = 15;
index[1, 4] = 16;
index[1, 5] = 17;
index[1, 6] = 18;
index[1, 7] = 19;
index[1, 8] = 20;
index[1, 9] = 21;
index[1, 10] = 22;
index[1, 11] = 23;

index[2, 0] = 24;
index[2, 1] = 25;
index[2, 2] = 26;
index[2, 3] = 27;
index[2, 4] = 28;
index[2, 5] = 29;
index[2, 6] = 30;
index[2, 7] = 31;
index[2, 8] = 32;
index[2, 9] = 33;
index[2, 10] = 34;
index[2, 11] = 35;

index[3, 0] = 36;
index[3, 1] = 37;
index[3, 2] = 38;
index[3, 3] = 39;
index[3, 4] = 40;
index[3, 5] = 41;
index[3, 6] = 42;
index[3, 7] = 43;
index[3, 8] = 44;
index[3, 9] = 45;
index[3, 10] = 46;
index[3, 11] = 47;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 400;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

danoHechizoMin = 87;
danoHechizoMax = 98;

// Evasión

evasion = 320; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 350000; // La experiencia es igual a la del manual

// Oro otorgado al morir

oro = obj_pj.modOro * 8000; // El oro es igual al del manual

// Paralizado / Inmovilizado

paralizado = false;
inmovilizado = false;

// Doble clic

dobleClic = false;

// Doma

domable = false;
domado = false;

// Invocado

invocado = false;

