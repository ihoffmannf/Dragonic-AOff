/// @description  Creo los Items

/*

datosItem[0] = x;
datosItem[1] = y;
datosItem[2] = indice;
datosItem[3] = tipo;
datosItem[4] = cantidad;
datosItem[5] = valor;

*/

datosItem = ItemsXRM[room, 0];

if (datosItem[0] != -1) {
    
    with (obj_item_basic) {
        instance_destroy();
    }
    
    var tamano = array_length_2d(ItemsXRM, room);

    for (var j = 0; j < tamano; j++) {
        if (datosItem[0] != -1) {
            if (datosItem[2] != -1) { // Es item
                var idItem = instance_create(datosItem[0], datosItem[1], obj_item); 
                idItem.indice = datosItem[2]; 
                idItem.tipo = datosItem[3]; 
                idItem.cantidad = datosItem[4];
            } else { // Es oro
                var idItem = instance_create(datosItem[0], datosItem[1], obj_oro); 
                idItem.valor = datosItem[5];
            }
        }
        idItem.noSetearAlarm = true;
        if (tamano > j + 1) {
            datosItem = ItemsXRM[room, j + 1]; 
        }
    }
    
}

/* */
/*  */
