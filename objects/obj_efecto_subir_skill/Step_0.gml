/// @description  Control general

if (instance_exists(padre)) {
    x = padre.x;
    y = padre.y;
} else {
    instance_destroy();
}

if (modY < limite) {
    modY++;
}

image_alpha -= 0.015;

if (image_alpha <= 0) {
    instance_destroy();
}

switch (indice) {
    case 0:
        texto = "Magia +1"
        break;
    case 1:
        texto = "Tácticas de Combate +1"
        break;
    case 2:
        texto = "Combate con Armas +1"
        break;
    case 3:
        texto = "Meditar +1"
        break;
    case 4:
        texto = "Apuñalar +1"
        break;
    case 5:
        texto = "Talar +1"
        break;
    case 6:
        texto = "Defensa con Escudos +1"
        break;
    case 7:
        texto = "Pesca +1"
        break;
    case 8:
        texto = "Minería +1"
        break;
    case 9:
        texto = "Carpintería +1"
        break;
    case 10:
        texto = "Herrería +1"
        break;
    case 11:
        texto = "Domar Animales +1"
        break;
    case 12:
        texto = "Arquería +1"
        break;
    case 13:
        texto = "Combate sin Armas +1"
        break;
    case 14:
        texto = "Navegación +1"
        break;
    case 15:
        texto = "Sastrería +1"
        break;
    case 16:
        texto = "Comercio +1"
        break;
    case 17:
        texto = "Resistencia Mágica +1"
        break;
}

