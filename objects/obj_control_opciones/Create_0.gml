/// @description  Estado inicial

dificultad = 0; // 0 = media - 1 = alta
simularHorarios = false;

if (file_exists("opciones.ini")) {
    ini_open("opciones.ini");
    dificultad = read("opciones", "dificultad", 0);
    simularHorarios = read("opciones", "simularHorarios", 0);
    ini_close();
}

