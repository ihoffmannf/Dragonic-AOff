/// @description  Estado inicial

corregirPosNPCEnTelep(); 
nombre = "Lobo Invernal";
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

saludMax = 6000; // La vida es igual a la del manual
salud = saludMax;

// Gráfico

index[0, 0] = 0;
index[0, 1] = 1;
index[0, 2] = 2;
index[0, 3] = 3;

index[1, 0] = 4;
index[1, 1] = 5;
index[1, 2] = 6;
index[1, 3] = 7;

index[2, 0] = 8;
index[2, 1] = 9;
index[2, 2] = 10;
index[2, 3] = 11;

index[3, 0] = 12;
index[3, 1] = 13;
index[3, 2] = 14;
index[3, 3] = 15;

frame = 0;

// Alarm 2

intervaloAtaque = 120;
alarm[2] = random_range(intervaloAtaque, intervaloAtaque * 2);

// Alarm 3

alarm[3] = 1;

// Fuerza (La fuerza es distinta a la del manual)

ataque = 150;

danoMeleeMin = round(ataque * 0.5);
danoMeleeMax = round(ataque * 0.65);

// Evasión

evasion = 70; // La evasión es igual a la del manual

// Experiencia otorgada al morir

experiencia = 1000; // La experiencia es igual a la del manual

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

