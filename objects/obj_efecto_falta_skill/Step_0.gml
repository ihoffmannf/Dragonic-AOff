/// @description  Control general

if (instance_exists(padre)) {

    x = padre.x;
    y = padre.y;
    
    if (padre.dicePalabrasMagicas && padre.palabrasMagicas != "") {
        instance_destroy();
    }
    
    visible = true;
    
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

switch (nroSkill) {
    case 0:
        texto = "¡Magia"
        break;
    case 1:
        texto = "¡Tácticas de Combate"
        break;
    case 2:
        texto = "¡Combate con Armas"
        break;
    case 3:
        texto = "¡Meditar"
        break;
    case 4:
        texto = "¡Apuñalar"
        break;
    case 5:
        texto = "¡Talar"
        break;
    case 6:
        texto = "¡Defensa con Escudos"
        break;
    case 7:
        texto = "¡Pesca"
        break;
    case 8:
        texto = "¡Minería"
        break;
    case 9:
        texto = "¡Carpintería"
        break;
    case 10:
        texto = "¡Herrería"
        break;
    case 11:
        texto = "¡Domar Animales"
        break;
    case 12:
        texto = "¡Arquería"
        break;
    case 13:
        texto = "¡Combate sin Armas"
        break;
    case 14:
        texto = "¡Navegación"
        break;
    case 15:
        texto = "¡Sastrería"
        break;
    case 16:
        texto = "¡Comercio"
        break;
    case 17:
        texto = "¡Resistencia Mágica"
        break;
}

texto += " menor a " + string(skillRequerido) + "!";







