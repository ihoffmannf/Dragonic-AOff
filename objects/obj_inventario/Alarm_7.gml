/// @description Dopas van bajando

if (obj_pj.tiempoDopa < obj_pj.tiempoDopaMax) {
	obj_pj.tiempoDopa++
	if (obj_pj.tiempoDopa == obj_pj.tiempoDopaMax - 10) {
		var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
        idINFO.padre = obj_pj.id;
        idINFO.texto = "Te estás volviendo débil...";
	}
	alarm[7] = 60
} else {
	obj_pj.tiempoDopa = obj_pj.tiempoDopaMax
	obj_pj.dopaFuerza = 0
	obj_pj.dopaAgilidad = 0
	var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
    idINFO.padre = obj_pj.id;
    idINFO.texto = "Te has debilitado";
}
	
