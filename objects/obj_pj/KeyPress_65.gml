/// @description  Agarrar items

if (!muerto) {

    if (position_meeting(x, y - 16, obj_item_basic)) {
        
        idItem = instance_position(x, y - 16, obj_item_basic);
        
        if (idItem.object_index == obj_oro) {
        
            // Si es oro...
        
            if (oro + idItem.valor <= oroMax) {
                oro += idItem.valor;
            } else {
                oro = oroMax;
            }
            
            with (idItem) {
                instance_destroy();
            }
            
        } else if (idItem.object_index == obj_item) {
        
            var existe = false;
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
            
                if (obj_inventario.indiceInv[i] == idItem.indice) {
                
                    if (obj_inventario.cantInv[i] + idItem.cantidad <= 10000) {
                    
                        // Hay lugar en slot existente
                        
                        existe = true;
                        
                        obj_inventario.cantInv[i] += idItem.cantidad;
                        
                        with (idItem) {
                            instance_destroy();
                        }
                        
                        break;
                        
                    }
                    
                }
                
            }
            
            if (!existe) {
                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                
                    if (obj_inventario.indiceInv[i] == -1) {
                    
                        // Hay lugar en slot nuevo
                        
                        /*
                        
                        En inventario:
                        
                        indiceInv
                        tipoInv
                        cantInv
                        equipadoInv
                        generoInv
                        razaInv
                        
                        datosItem:
                        
                        tipoInv
                        generoInv
                        razaInv
                        
                        */
                        
                        datosItem = configurarItem(idItem.indice);
                        
                        obj_inventario.indiceInv[i] = idItem.indice;
                        obj_inventario.tipoInv[i] = datosItem[0];
                        obj_inventario.cantInv[i] = idItem.cantidad;
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
                    
                        with (idItem) {
                            instance_destroy();
                        }
                        
                        break;
                        
                    }
                    
                }  
            }
              
        
        }
        
    }

}

obj_tecla_A.alarm[0] = 2;





/* */
/*  */
