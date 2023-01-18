/// @description  cargarInventario()
function cargarInventario() {

	var maximoInv = 20;

	var i = 0;

	repeat(maximoInv) {
	    obj_inventario.indiceInv[i] = -1;
	    obj_inventario.tipoInv[i] = "";
	    obj_inventario.cantInv[i] = 0;
	    obj_inventario.equipadoInv[i] = false;
	    obj_inventario.generoInv[i] = -1;
	    obj_inventario.razaInv[i] = -1;
	    obj_inventario.nroSkillInv[i] = 0;
	    obj_inventario.skillRequeridoInv[i] = 0;
	    obj_inventario.clase0ValidaInv[i] = true; 
	    obj_inventario.clase1ValidaInv[i] = true; 
	    obj_inventario.clase2ValidaInv[i] = true; 
	    obj_inventario.clase3ValidaInv[i] = true; 
	    obj_inventario.clase4ValidaInv[i] = true; 
	    obj_inventario.clase5ValidaInv[i] = true; 
	    obj_inventario.clase6ValidaInv[i] = true; 
	    obj_inventario.clase7ValidaInv[i] = true; 
	    obj_inventario.clase8ValidaInv[i] = true; 
	    obj_inventario.nombreInv[i] = "Vacío";
	    i++;
	}

	var item = 0;
	var nroIndices = 20;
	var vecIndices;
	var vecCant;
	var vecEquipado;

	vecIndices[0] = read("obj_inventario", "indiceInv[0]", -1);
	vecIndices[1] = read("obj_inventario", "indiceInv[1]", -1);
	vecIndices[2] = read("obj_inventario", "indiceInv[2]", -1);
	vecIndices[3] = read("obj_inventario", "indiceInv[3]", -1);
	vecIndices[4] = read("obj_inventario", "indiceInv[4]", -1);
	vecIndices[5] = read("obj_inventario", "indiceInv[5]", -1);
	vecIndices[6] = read("obj_inventario", "indiceInv[6]", -1);
	vecIndices[7] = read("obj_inventario", "indiceInv[7]", -1);
	vecIndices[8] = read("obj_inventario", "indiceInv[8]", -1);
	vecIndices[9] = read("obj_inventario", "indiceInv[9]", -1);
	vecIndices[10] = read("obj_inventario", "indiceInv[10]", -1);
	vecIndices[11] = read("obj_inventario", "indiceInv[11]", -1);
	vecIndices[12] = read("obj_inventario", "indiceInv[12]", -1);
	vecIndices[13] = read("obj_inventario", "indiceInv[13]", -1);
	vecIndices[14] = read("obj_inventario", "indiceInv[14]", -1);
	vecIndices[15] = read("obj_inventario", "indiceInv[15]", -1);
	vecIndices[16] = read("obj_inventario", "indiceInv[16]", -1);
	vecIndices[17] = read("obj_inventario", "indiceInv[17]", -1);
	vecIndices[18] = read("obj_inventario", "indiceInv[18]", -1);
	vecIndices[19] = read("obj_inventario", "indiceInv[19]", -1);

	vecCant[0] = read("obj_inventario", "cantInv[0]", -1);
	vecCant[1] = read("obj_inventario", "cantInv[1]", -1);
	vecCant[2] = read("obj_inventario", "cantInv[2]", -1);
	vecCant[3] = read("obj_inventario", "cantInv[3]", -1);
	vecCant[4] = read("obj_inventario", "cantInv[4]", -1);
	vecCant[5] = read("obj_inventario", "cantInv[5]", -1);
	vecCant[6] = read("obj_inventario", "cantInv[6]", -1);
	vecCant[7] = read("obj_inventario", "cantInv[7]", -1);
	vecCant[8] = read("obj_inventario", "cantInv[8]", -1);
	vecCant[9] = read("obj_inventario", "cantInv[9]", -1);
	vecCant[10] = read("obj_inventario", "cantInv[10]", -1);
	vecCant[11] = read("obj_inventario", "cantInv[11]", -1);
	vecCant[12] = read("obj_inventario", "cantInv[12]", -1);
	vecCant[13] = read("obj_inventario", "cantInv[13]", -1);
	vecCant[14] = read("obj_inventario", "cantInv[14]", -1);
	vecCant[15] = read("obj_inventario", "cantInv[15]", -1);
	vecCant[16] = read("obj_inventario", "cantInv[16]", -1);
	vecCant[17] = read("obj_inventario", "cantInv[17]", -1);
	vecCant[18] = read("obj_inventario", "cantInv[18]", -1);
	vecCant[19] = read("obj_inventario", "cantInv[19]", -1);

	vecEquipado[0] = read("obj_inventario", "equipadoInv[0]", -1);
	vecEquipado[1] = read("obj_inventario", "equipadoInv[1]", -1);
	vecEquipado[2] = read("obj_inventario", "equipadoInv[2]", -1);
	vecEquipado[3] = read("obj_inventario", "equipadoInv[3]", -1);
	vecEquipado[4] = read("obj_inventario", "equipadoInv[4]", -1);
	vecEquipado[5] = read("obj_inventario", "equipadoInv[5]", -1);
	vecEquipado[6] = read("obj_inventario", "equipadoInv[6]", -1);
	vecEquipado[7] = read("obj_inventario", "equipadoInv[7]", -1);
	vecEquipado[8] = read("obj_inventario", "equipadoInv[8]", -1);
	vecEquipado[9] = read("obj_inventario", "equipadoInv[9]", -1);
	vecEquipado[10] = read("obj_inventario", "equipadoInv[10]", -1);
	vecEquipado[11] = read("obj_inventario", "equipadoInv[11]", -1);
	vecEquipado[12] = read("obj_inventario", "equipadoInv[12]", -1);
	vecEquipado[13] = read("obj_inventario", "equipadoInv[13]", -1);
	vecEquipado[14] = read("obj_inventario", "equipadoInv[14]", -1);
	vecEquipado[15] = read("obj_inventario", "equipadoInv[15]", -1);
	vecEquipado[16] = read("obj_inventario", "equipadoInv[16]", -1);
	vecEquipado[17] = read("obj_inventario", "equipadoInv[17]", -1);
	vecEquipado[18] = read("obj_inventario", "equipadoInv[18]", -1);
	vecEquipado[19] = read("obj_inventario", "equipadoInv[19]", -1);

	// Cargo el inventario

	var datosItem;

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
    
	    obj_inventario.indiceInv[i] = item;
	    obj_inventario.tipoInv[i] = datosItem[0];
	    obj_inventario.cantInv[i] = vecCant[i];
	    obj_inventario.equipadoInv[i] = vecEquipado[i];
	    obj_inventario.generoInv[i] = datosItem[1];
	    obj_inventario.razaInv[i] = datosItem[2];
	    obj_inventario.nroSkillInv[i] = datosItem[3];
	    obj_inventario.skillRequeridoInv[i] = datosItem[4];
	    obj_inventario.clase0ValidaInv[i] = datosItem[5]; 
	    obj_inventario.clase1ValidaInv[i] = datosItem[6]; 
	    obj_inventario.clase2ValidaInv[i] = datosItem[7]; 
	    obj_inventario.clase3ValidaInv[i] = datosItem[8]; 
	    obj_inventario.clase4ValidaInv[i] = datosItem[9]; 
	    obj_inventario.clase5ValidaInv[i] = datosItem[10]; 
	    obj_inventario.clase6ValidaInv[i] = datosItem[11]; 
	    obj_inventario.clase7ValidaInv[i] = datosItem[12]; 
	    obj_inventario.clase8ValidaInv[i] = datosItem[13];
	    obj_inventario.nombreInv[i] = datosItem[14];

	}

	obj_pj.desnudo = read("obj_pj", "desnudo", false);

	obj_pj.ropaActual = read("obj_pj", "ropaActual", -1);
	obj_pj.ropaEnInv = read("obj_pj", "ropaEnInv", -1);
	obj_pj.ropaIndexada = read("obj_pj", "ropaIndexada", true);

	obj_pj.armaActual = read("obj_pj", "armaActual", -1);
	obj_pj.armaEnInv = read("obj_pj", "armaEnInv", -1);

	obj_pj.flechaActual = read("obj_pj", "flechaActual", -1);
	obj_pj.flechaEnInv = read("obj_pj", "flechaEnInv", -1);

}
