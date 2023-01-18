/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Tortuga Gigante";
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

saludMax = 500; // La vida es igual a la del manual
salud = saludMax;

// Gráfico

index[0, 0] = 0;
index[0, 1] = 1;
index[0, 2] = 2;
index[0, 3] = 3;
index[0, 4] = 4;
index[0, 5] = 5;

index[1, 0] = 6;
index[1, 1] = 7;
index[1, 2] = 8;
index[1, 3] = 9;
index[1, 4] = 10;
index[1, 5] = 11;

index[2, 0] = 12;
index[2, 1] = 13;
index[2, 2] = 14;
index[2, 3] = 15;
index[2, 4] = 16;
index[2, 5] = 17;

index[3, 0] = 18;
index[3, 1] = 19;
index[3, 2] = 20;
index[3, 3] = 21;
index[3, 4] = 22;
index[3, 5] = 23;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 90;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

// Evasión

evasion = 30; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 500; // La experiencia es igual a la del manual

// Paralizado / Inmovilizado

paralizado = false;
inmovilizado = false;

// Doble clic

dobleClic = false;

// Doma

domable = true;
domado = false;
puntosDomaNPC = 200;

// Invocado

invocado = false;

