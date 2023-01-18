/// @description  Intervalo de habre y sed

if (hambre >= 10) {
    hambre -= 10;
} else {
    hambre = 0;
}

if (sed >= 10) {
    sed -= 10;
} else {
    sed = 0;
}

intervaloHambreYSed = floor(random_range(10800, 14400));
alarm[4] = intervaloHambreYSed;

