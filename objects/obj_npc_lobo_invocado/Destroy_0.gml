/// @description  Creo el oro (O drop)
/// @param O drop

// Si estaba invocado desaparece

if (invocado) {

    for (var i = 0; i < 3; i++) {
        if (obj_pj.criaturasInvocadas[i] == id) {
            break;
        }
    }

    obj_pj.criaturasInvocadas[i] = -1;
    
    if (salud <= 0) {
    
        obj_pj.criaturasInvocadas[i] = -1;
    
		if (!guardando) {    
	        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	        idINFO.color = c_red;
	        idINFO.padre = obj_pj.id;
	        idINFO.texto = "¡Tu mascota murió!";
		} else {
	        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	        idINFO.padre = obj_pj.id;
	        idINFO.texto = "¡Invocación guardada!";
		}
        
    }    
    
}


