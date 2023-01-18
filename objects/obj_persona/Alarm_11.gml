/// @description  Creo el drop

/*

eqArma = -1;
eqRopa = -1;
eqCascoGorro = -1;
eqEscudo = -1;
eqFlechas = -1;
eqRojas = 141;
eqAzules = -1;

*/

if (pasos == 0) { // xObjetivo == x && yObjetivo == y

    if (vecItems[indiceTirarItems] != -1) {  
		if (vecItems[indiceTirarItems] < 164 || vecItems[indiceTirarItems] > 211) { // Si no es armadura faccionaria...
	        var idItem = instance_create(x, y, obj_item);  
	        idItem.indice = vecItems[indiceTirarItems];
	        idItem.cantidad = cantItems[indiceTirarItems];
		}
    }
    
    if (indiceTirarItems == 19) {    
        indiceTirarItems = 0;
        alarm[11] = -1;
    } else {
        indiceTirarItems++;
        alarm[11] = 1;
    }
    
} else {
    alarm[11] = 1;
}

    

/* */
/*  */
