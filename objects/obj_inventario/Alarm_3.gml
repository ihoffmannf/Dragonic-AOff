/// @description  Hago que los items se caigan al morir

if (indiceInv[indiceTirarItems] != 144 && indiceInv[indiceTirarItems] != 145 && (indiceInv[indiceTirarItems] < 164 || indiceInv[indiceTirarItems] > 211)) {

    if (indiceInv[indiceTirarItems] != -1) {
        var idItem = instance_create(obj_pj.x, obj_pj.y, obj_item);
        idItem.indice = indiceInv[indiceTirarItems];
        idItem.cantidad = cantInv[indiceTirarItems];
        idItem.tipo = tipoInv[indiceTirarItems];
    }

    if (indiceInv[indiceTirarItems] == seleccionado) {
        seleccionado = -1;
    }
    
    if (indiceTirarItems == posSeleccionado) {
        posSeleccionado = -1;
    }
    
    cantInv[indiceTirarItems] = 0;
    indiceInv[indiceTirarItems] = -1;
    tipoInv[indiceTirarItems] = "";
    equipadoInv[indiceTirarItems] = false;
    nombreInv[indiceTirarItems] = "Vacío";
    
}

if (indiceTirarItems == 19) {    
    indiceTirarItems = 0;
    alarm[3] = -1;
    obj_pj.inmovilizado = false;    
} else {
    indiceTirarItems++;
    alarm[3] = 1;
}


