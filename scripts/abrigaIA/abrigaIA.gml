/// @description  abrigaIA()
function abrigaIA() {

	var eqRopaIA = -1

	if (nroRaza == 0 || nroRaza == 1 || nroRaza == 2) {
		if (genero == 0)
			eqRopaIA = 68
		else 
			eqRopaIA = 69
	} else {
	    eqRopaIA = 70
	}
	
	IAAgarraIndiceItemForzado(eqRopaIA)
	eqRopa = eqRopaIA
	
	with (obj_INFO) {
		if (padre == other.id)
			instance_destroy();
	}
	
	var idINFO = instance_create(x, y, obj_INFO)
	idINFO.padre = id;
	idINFO.tiempo = 60 * 5
	idINFO.texto = choose("¡Hace frío aquí!", "Brrrr... ¡Qué frío!", "Por suerte traje mi abrigo...", "¡Me estaba congelando!", "Detesto el clima frío...", "Espero que tengas abrigo... ¡Ja!")
	
}
