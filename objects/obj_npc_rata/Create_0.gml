/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Rata";
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
targetNPC = -1;

// Persona

personaRoom = -1;

// Salud

saludMax = 15; // La vida es igual a la del manual
salud = saludMax;

// Gráfico

index[0, 0] = 0;
index[0, 1] = 1;
index[0, 2] = 2;

index[1, 0] = 3;
index[1, 1] = 4;
index[1, 2] = 5;

index[2, 0] = 6;
index[2, 1] = 7;
index[2, 2] = 8;

index[3, 0] = 9;
index[3, 1] = 10;
index[3, 2] = 11;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 10;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

// Evasión

evasion = 20; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 15; // La experiencia es igual a la del manual

// Paralizado / Inmovilizado

paralizado = false;
inmovilizado = false;

// Doble clic

dobleClic = false;

// Doma

domable = true;
domado = false;
puntosDomaNPC = 15;

// Invocado

invocado = false;

