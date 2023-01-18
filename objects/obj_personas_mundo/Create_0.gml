/// @description  Matriz que lleva la cuenta de las personas de todo el mundo (Siempre 1)
/// @param Siempre 1

i = 0;
aux[0] = -1;
totalMultiIA = 5; // El totalMultiIA indica que puede haber hasta 5 personas en total por todo el mundo

// Lista de rooms

totalRooms = obj_npcs_mundo.totalRooms;
primerRoomDeMapa = obj_npcs_mundo.primerRoomDeMapa;

/*

IAXRM[0] = aux; // Guarda los datos de las IAs de una mapa. IAXRM[0] tiene los datos de una de las IA del mapa
vecItemsIAXRM[0] = aux; // Va a guardar todos los vectores de ítems de las IAs de un mapa. vecItemsIAXRM[0] tiene los items de una de las IAs
cantItemsIAXRM[0] = aux; // Igual que el anterior, pero guarda cantidades

IAMultiplesMundo[0] = IAXRM; // Guarda todas las IAs del mundo, con todos sus datos. Dentro de IAMultiplesMundo[0] estarían las IAs del primer mapa
IAMultiplesMundoItems[0] = vecItemsIAXRM; 
// IAMultiplesMundoItems Guarda todos los items de las IAs del mundo. 
// Dentro de IAMultiplesMundoItems[0] estarían los vectores con los items de las IAs del primer mapa
IAMultiplesMundoCantItems[0] = cantItemsIAXRM; // Igual que el anterior, pero guarda cantidades

for (var j = 1; j <= totalRooms; j++) {
    IAXRM[j] = aux;
    vecItemsIAXRM[j] = aux;
    cantItemsIAXRM[j] = aux;
}

for (var k = 1; k < totalMultiIA; k++) {
    IAMultiplesMundo[k] = IAXRM;
    IAMultiplesMundoItems[k] = vecItemsIAXRM;
    IAMultiplesMundoCantItems[k] = cantItemsIAXRM;
}

*/

globalIA[0] = aux; // Guarda los datos de todas las IA del mundo. El índice 0 tiene los datos de una IA

for (var i = 1; i < totalMultiIA; i++) { // Inicializa
    globalIA[i] = aux;
}

datosIA[0] = -1;

itemsGlobalIA[0] = -1;
cantItemsGlobalIA[0] = -1;

for (var i = 1; i < totalMultiIA; i++) { // Inicializa
    itemsGlobalIA[i] = aux;
    cantItemsGlobalIA[i] = aux;
}

direccionPJ = 0;

crea = false;
roomAnterior = -1;

PJInvi = false;

alarm[0] = 1

/* */
/*  */
