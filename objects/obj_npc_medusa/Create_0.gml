/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Medusa";
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

saludMax = 6500; // La vida es igual a la del manual
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

index[1, 0] = 9;
index[1, 1] = 10;
index[1, 2] = 11;
index[1, 3] = 12;
index[1, 4] = 13;
index[1, 5] = 14;
index[1, 6] = 15;
index[1, 7] = 16;
index[1, 8] = 17;

index[2, 0] = 18;
index[2, 1] = 19;
index[2, 2] = 20;
index[2, 3] = 21;
index[2, 4] = 22;
index[2, 5] = 23;
index[2, 6] = 24;
index[2, 7] = 25;
index[2, 8] = 26;

index[3, 0] = 27;
index[3, 1] = 28;
index[3, 2] = 29;
index[3, 3] = 30;
index[3, 4] = 31;
index[3, 5] = 32;
index[3, 6] = 33;
index[3, 7] = 34;
index[3, 8] = 35;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 220;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

danoHechizoMin = 87;
danoHechizoMax = 98;

// Evasión

evasion = 160; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 15000; // La experiencia es igual a la del manual

// Oro otorgado al morir

oro = obj_pj.modOro * 2500; // El oro es igual al del manual

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

