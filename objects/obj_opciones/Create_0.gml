/// @description  Estado inicial

opcionTechos = true;
opcionArboles = true;
opcionVibracion = true;
opcionAnimacionAgua = true;
opcionParticulas = true;
opcionNubes = true;
opcionPeces = true;
opcionOptimizarCiudades = false;
opcionInsigniaPionero = true;

if (file_exists("opciones.ini")) {
    ini_open("opciones.ini");
    opcionTechos = read("opcionesFX", "opcionTechos", 1);
    opcionArboles = read("opcionesFX", "opcionArboles", 1);
    opcionVibracion = read("opcionesFX", "opcionVibracion", 1);
    opcionAnimacionAgua = read("opcionesFX", "opcionAnimacionAgua", 1);
    opcionParticulas = read("opcionesFX", "opcionParticulas", 1);
    opcionNubes = read("opcionesFX", "opcionNubes", 1);
    opcionPeces = read("opcionesFX", "opcionPeces", 1);
    opcionOptimizarCiudades = read("opcionesFX", "opcionOptimizarCiudades", 0);
    opcionInsigniaPionero = read("opcionesFX", "opcionInsigniaPionero", true);
    ini_close();
}

lloviendo = false;
frecuenciaLluviaMin = 5;
frecuenciaLluviaMax = 10;
probabilidadLluvia = 4; // Max 10
cantidadGotasDeLluvia = 0;
sonidoLluvia = -1;

alarm[1] = 1;
alarm[2] = floor(60 * 60 * random_range(frecuenciaLluviaMin, frecuenciaLluviaMax))



