/// @description  Lista de ítems

obj_panel_items.mostrado = false;
mostrado = true;
posicionItem = obj_inventario.posSeleccionado;

for (var i = 0; i < 20; i++) {
    listaItems[i] = -1;
    nombreItems[i] = "Vacío";
}

if (modo == 0) {
    nroIndices = 12;
    vecIndices[0] = 29;
    vecIndices[1] = 144;
    vecIndices[2] = 31;
    vecIndices[3] = 32;
    vecIndices[4] = 217;
    vecIndices[5] = 140;
    vecIndices[6] = 24;
    vecIndices[7] = 25;
    vecIndices[8] = 26;
    vecIndices[9] = 27;
    vecIndices[10] = 20;
    vecIndices[11] = 227;
} else if (modo == 1) {
    nroIndices = 20;
    vecIndices[0] = 0;
    vecIndices[1] = 14;
    vecIndices[2] = 3;
    vecIndices[3] = 13;
    vecIndices[4] = 86;
    vecIndices[5] = 87;
    vecIndices[6] = 88;
    vecIndices[7] = 94;
    vecIndices[8] = 89;
    vecIndices[9] = 90;
    vecIndices[10] = 100;
    vecIndices[11] = 91;
    vecIndices[12] = 4;
    vecIndices[13] = 5;
    vecIndices[14] = 6;
    vecIndices[15] = 15;
    vecIndices[16] = 16;
    vecIndices[17] = 17;
    vecIndices[18] = 92;
    vecIndices[19] = 95;
} else {
    nroIndices = 12;
    vecIndices[0] = 45;
    vecIndices[1] = 66;
    vecIndices[2] = 67;
    vecIndices[3] = 61;
    vecIndices[4] = 43;
    vecIndices[5] = 44;
    vecIndices[6] = 68;
    vecIndices[7] = 69;
    vecIndices[8] = 70;
    vecIndices[9] = 41;
    vecIndices[10] = 42;
    vecIndices[11] = 97;
}

for (var i = 0; i < nroIndices; i++) {
    
    item = vecIndices[i];

    datosItem[0] = "";
    datosItem[1] = -1;
    datosItem[2] = -1;
    datosItem[3] = 0;
    datosItem[4] = 0;
    datosItem[5] = true; 
    datosItem[6] = true; 
    datosItem[7] = true; 
    datosItem[8] = true; 
    datosItem[9] = true; 
    datosItem[10] = true; 
    datosItem[11] = true; 
    datosItem[12] = true; 
    datosItem[13] = true; 
    datosItem[14] = "Vacío";
    
    var datosItem = datosTrabajo(item);
    
    if (obj_pj.skills[datosItem[0]] >= datosItem[1]) {
        datosItem = configurarItem(item);
        listaItems[i] = item;
        nombreItems[i] = datosItem[14];
    }

}








