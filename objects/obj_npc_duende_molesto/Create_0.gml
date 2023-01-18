/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Duende Molesto";
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

saludMax = 310; // La vida es igual a la del manual
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

index[1, 0] = 8;
index[1, 1] = 9;
index[1, 2] = 10;
index[1, 3] = 11;
index[1, 4] = 12;
index[1, 5] = 13;
index[1, 6] = 14;
index[1, 7] = 15;

index[2, 0] = 16;
index[2, 1] = 17;
index[2, 2] = 18;
index[2, 3] = 19;
index[2, 4] = 20;
index[2, 5] = 21;
index[2, 6] = 22;
index[2, 7] = 23;

index[3, 0] = 24;
index[3, 1] = 25;
index[3, 2] = 26;
index[3, 3] = 27;
index[3, 4] = 28;
index[3, 5] = 29;
index[3, 6] = 30;
index[3, 7] = 31;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 80;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

danoHechizoMin = 6;
danoHechizoMax = 12;

// Evasión

evasion = 60; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 100; // La experiencia es igual a la del manual

// Oro otorgado al morir

oro = obj_pj.modOro * 80; // El oro es igual al del manual

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

