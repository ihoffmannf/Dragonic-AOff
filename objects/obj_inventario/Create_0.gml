/// @description  Estado inicial

image_speed = 0;
visible = true;

maximoInv = 20;

var i = 0;

repeat(maximoInv) {
    indiceInv[i] = -1;
    tipoInv[i] = "";
    cantInv[i] = 0;
    equipadoInv[i] = false;
    generoInv[i] = -1;
    razaInv[i] = -1;
    nroSkillInv[i] = 0;
    skillRequeridoInv[i] = 0;
    clase0ValidaInv[i] = true; 
    clase1ValidaInv[i] = true; 
    clase2ValidaInv[i] = true; 
    clase3ValidaInv[i] = true; 
    clase4ValidaInv[i] = true; 
    clase5ValidaInv[i] = true; 
    clase6ValidaInv[i] = true; 
    clase7ValidaInv[i] = true; 
    clase8ValidaInv[i] = true; 
    nombreInv[i] = "Vacío";
    i++;
}

var item = 0;



if (obj_pj.clase == 0 || obj_pj.clase == 3) {
	nroIndices = 9;
	vecIndices[0] = -1;
	vecIndices[1] = 21;
	vecIndices[2] = 30;
	vecIndices[3] = 101;
	vecIndices[4] = 116;
	vecIndices[5] = 141;
	vecIndices[6] = 142;
	vecIndices[7] = 143;
	vecIndices[8] = 145;	
} else {
	nroIndices = 8;
	vecIndices[0] = -1;
	vecIndices[1] = 0;
	vecIndices[2] = 101;
	vecIndices[3] = 116;
	vecIndices[4] = 141;
	vecIndices[5] = 142;
	vecIndices[6] = 143;
	vecIndices[7] = 145;
}


/// Selecciono la ropa según raza y género

if (obj_pj.genero == 0) {

    if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1 || obj_pj.nroRaza == 2) {
        vecIndices[0] = 45;
    } else {
        vecIndices[0] = 49;
    }

} else {

    if (obj_pj.nroRaza == 0 || obj_pj.nroRaza == 1) {
        vecIndices[0] = 48;
    } else if (obj_pj.nroRaza == 2) {
        vecIndices[0] = 71;
    } else {
        vecIndices[0] = 50;
    }
    
}

// Cargo el inventario

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
    
    indiceInv[i] = item;
    tipoInv[i] = datosItem[0];
    cantInv[i] = 1;
    equipadoInv[i] = false;
    generoInv[i] = datosItem[1];
    razaInv[i] = datosItem[2];
    nroSkillInv[i] = datosItem[3];
    skillRequeridoInv[i] = datosItem[4];
    clase0ValidaInv[i] = datosItem[5]; 
    clase1ValidaInv[i] = datosItem[6]; 
    clase2ValidaInv[i] = datosItem[7]; 
    clase3ValidaInv[i] = datosItem[8]; 
    clase4ValidaInv[i] = datosItem[9]; 
    clase5ValidaInv[i] = datosItem[10]; 
    clase6ValidaInv[i] = datosItem[11]; 
    clase7ValidaInv[i] = datosItem[12]; 
    clase8ValidaInv[i] = datosItem[13];
    nombreInv[i] = datosItem[14];
    
    if (item == 101 || item == 116) {
        cantInv[i] = 100;
    } else if (item == 141 || item == 142) {
        cantInv[i] = 150;
    } else if (item == 143) {
        cantInv[i] = 10;
    } else if (item == 30) {
		cantInv[i] = 100;
	}

}

// Control de drop

timerAcelerador = 1;
tirando = false;

// Item seleccionado

seleccionado = -1;
posSeleccionado = -1;

// Tira de a 1?

tiraDeA1 = false;

// Visto y equipo al PJ

obj_pj.desnudo = false;
obj_pj.ropaActual = indiceInv[0];
obj_pj.ropaEnInv = 0;
equipadoInv[0] = true;

obj_pj.armaActual = indiceInv[1];
obj_pj.armaEnInv = 1;
equipadoInv[1] = true;

if (obj_pj.clase == 0 || obj_pj.clase == 3) {
	obj_pj.flechaActual = indiceInv[2];
	obj_pj.flechaEnInv = 2;
	equipadoInv[2] = true;
}

// Doble clic

dobleClic = false;
posDobleClic = -1;
deviceDC = -1;

// Tirar items

indiceTirarItems = 0;

i = 0;

repeat(maximoInv) {
    i++;
}

tileInvalido = false;

alarm[8] = 60;
