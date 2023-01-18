/// @description  Estado inicial

hostil = false;
desc = "Bienvenido, tengo algunas armas que pueden ayudarte en tus viajes";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 9;
vecIndices[0] = 0;
vecIndices[1] = 1;
vecIndices[2] = 2;
vecIndices[3] = 7;
vecIndices[4] = 8;
vecIndices[5] = 9;
vecIndices[6] = 10;
vecIndices[7] = 11;
vecIndices[8] = 12;

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
    
    datosItem = configurarItem(item);
    
    indiceNpc[i] = item;
    tipoNpc[i] = datosItem[0];
    cantNpc[i] = 1;
    equipadoNpc[i] = false;
    generoNpc[i] = datosItem[1];
    razaNpc[i] = datosItem[2];
    nroSkillNpc[i] = datosItem[3];
    skillRequeridoNpc[i] = datosItem[4];
    clase0ValidaNpc[i] = datosItem[5]; 
    clase1ValidaNpc[i] = datosItem[6]; 
    clase2ValidaNpc[i] = datosItem[7]; 
    clase3ValidaNpc[i] = datosItem[8]; 
    clase4ValidaNpc[i] = datosItem[9]; 
    clase5ValidaNpc[i] = datosItem[10]; 
    clase6ValidaNpc[i] = datosItem[11]; 
    clase7ValidaNpc[i] = datosItem[12]; 
    clase8ValidaNpc[i] = datosItem[13];
    nombreNpc[i] = datosItem[14];

}

