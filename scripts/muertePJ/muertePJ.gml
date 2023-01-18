/// @description  muertePJ()
function muertePJ() {

	reproducirSonido(snd_muerte, false, false);

	// Panel items y trabajo

	if (obj_panel_items.mostrado) {
	    obj_panel_items.idPadre = -1;
	    obj_panel_items.mostrado = false;
	}

	if (obj_panel_trabajos.mostrado) {
	    obj_panel_trabajos.mostrado = false;
	}

	// Datos PJ

	obj_pj.salud = 0;
	obj_pj.muerto = true;
	obj_pj.desnudo = true;
	obj_pj.invisible = false;
	obj_pj.dicePalabrasMagicas = false;
	obj_pj.palabrasMagicas = "";

	obj_pj.envenenado = false;
	obj_pj.veneno = 0;

	obj_pj.inmovilizado = false;

	obj_pj.armaActual = -1;
	obj_pj.armaEnInv = -1;
	obj_pj.flechaActual = -1;
	obj_pj.flechaEnInv = -1;
	obj_pj.ropaActual = -1;
	obj_pj.ropaEnInv = -1;
	obj_pj.escudoActual = -1;
	obj_pj.escudoEnInv = -1;
	obj_pj.cascoActual = -1;
	obj_pj.cascoEnInv = -1;
	obj_pj.laudActual = -1;
	obj_pj.laudEnInv = -1;
	obj_pj.laudEquipado = false;
	obj_pj.trabajoActual = -1;
	obj_pj.trabajoEnInv = -1;
	obj_pj.trabajoEquipado = false;
	obj_pj.trabajando = false;

	obj_pj.trabajaTala = false;
	obj_pj.trabajaMineria = false;
	obj_pj.trabajaFragua = false;
	obj_pj.trabajaPesca = false;

	for (var i = 0; i < 3; i++) {
	    if (obj_pj.criaturasInvocadas[i] != -1) {
	        with (obj_pj.criaturasInvocadas[i]) {
	            instance_destroy();
	        }
	    }
	}

	if (obj_pj.criaturasHijas[0, 0] != -1) {
	    with (obj_pj.criaturasHijas[0, 0]) {
	        instance_destroy();
	    }
	}

	if (obj_pj.criaturasHijas[1, 0] != -1) {
	    with (obj_pj.criaturasHijas[1, 0]) {
	        instance_destroy();
	    }
	}

	if (obj_pj.criaturasHijas[2, 0] != -1) {
	    with (obj_pj.criaturasHijas[2, 0]) {
	        instance_destroy();
	    }
	}

	obj_pj.criaturasHijas[0, 0] = -1;
	obj_pj.criaturasHijas[1, 0] = -1;
	obj_pj.criaturasHijas[2, 0] = -1;
	obj_pj.estaEnPolo = false;

	// IA

	with (obj_persona) {
	    alarm[9] = 1;
	    tiempoLejosPJ = 0;
	    tiempoEnView = 0;
	    yaHabloEnojado1 = false;
	    yaHabloEnojado2 = false;
	    yaHabloEnojado3 = false;
	    alarm[5] = 1;
	}

	// Inventario

	obj_inventario.seleccionado = -1;
	obj_inventario.posSeleccionado = -1;

	var i = 0;

	repeat(obj_inventario.maximoInv) {
	    obj_inventario.equipadoInv[i] = false;
	    i++;
	}

	// Hechizos

	obj_hechizos.seleccionado = -1;

	// Alarma de encierro

	obj_pj.alarm[10] = 1;

	// Hago que los items se caigan

	if (!obj_pj.navega) {
	    obj_inventario.indiceTirarItems = 0;
	    obj_inventario.alarm[4] = 1;
	}





}
