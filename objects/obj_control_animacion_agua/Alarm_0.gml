/// @description  Cambiar dirección

if (obj_opciones.opcionAnimacionAgua) {

    if (direccionX == 0) {
        direccionX = 1;
    } else {
        direccionX = 0;
    }
    
    if (random(10) > 5) {
        direccionY = 0;
    } else {
        direccionY = 1;
    }
    
    alarm[0] = 600;
    
}


