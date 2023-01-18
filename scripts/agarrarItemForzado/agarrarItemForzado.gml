/// @description  agarrarItemForzado(indiceItem)
/// @param indiceItem
function agarrarItemForzado(argument0) {

	var indiceItem = argument0;
    var existe = false;
                            
    for (var i = 0; i < obj_inventario.maximoInv; i++) {
        if (obj_inventario.indiceInv[i] == indiceItem) {
            if (obj_inventario.cantInv[i] + 1 <= 10000) {            
                // Hay lugar en slot existente   
                existe = true;
                obj_inventario.cantInv[i]++;
                break;               
            }
        }
    }
                                
    if (!existe) {
        for (var i = 0; i < obj_inventario.maximoInv; i++) {
            if (obj_inventario.indiceInv[i] == -1) {
                // Hay lugar en slot nuevo  
				
				var datosItem = configurarItem(indiceItem);
                                            
                obj_inventario.indiceInv[i] = indiceItem;
                obj_inventario.tipoInv[i] = datosItem[0];
                obj_inventario.cantInv[i] = 1;
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
                                            
                valido = true;
				
                break;
            }
        }  
    }

}
