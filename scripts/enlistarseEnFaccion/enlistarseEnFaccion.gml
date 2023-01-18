/// @description  enlistarseEnFaccion()
function enlistarseEnFaccion() {

	var mensaje = "";

	var primerRango = 50;
	var segundoRango = 100;
	var tercerRango = 200;

	var valido = false;
	var posInv = -1;
	var indiceItem = -1;

	for (var i = 0; i < obj_inventario.maximoInv; i++) {           
	    if (obj_inventario.indiceInv[i] == -1) {
	        posInv = i;
	        break;
	    }                 
	}

	if (pk) {
	    switch (rangoFaccion) {
	        case 0:
	            if (ciudadanosMatados >= primerRango) {
	                valido = true;
	            }           
	            break;
	        case 1:
	            if (ciudadanosMatados >= segundoRango) {
	                valido = true;
	            }           
	            break;
	        case 2:
	            if (ciudadanosMatados >= tercerRango) {
	                valido = true;
	            }           
	            break;
	        default:
	            mensaje = "¡Ja! Ambicioso súbdito, tu rango en la Legión Oscura es el máximo"; // Rango máximo
	            break;
	    }
	    if (valido) {
	        if (posInv != -1) {
	            if (!esLegion) {
	                esLegion = true;
	            }
	            rangoFaccion++;
	            if (rangoFaccion == 1) {
	                mensaje = "¡Fiel súbdito! Has jurado lealtad a la Legión Oscura";
	            } else {
	                mensaje = "¡Fiel súbdito! Has subido de rango en la Legión Oscura";
	            }
	            indiceItem = elegirItemFaccion();
	        } else {
	            mensaje = "No tienes lugar en tu inventario. No puedo entregarte tu vestimenta..."; // No hay lugar en inventario
	        }
	    } else {
	        if (rangoFaccion == 0) {
	            mensaje = "¡Escoria! Ve a cumplir con mi voluntad. Debes asesinar a al menos 50 ciudadanos para ingresar a la Legión Oscura";
	        } else if (rangoFaccion == 1) {
	            mensaje = "¡Escoria! Ve a cumplir con mi voluntad. Debes asesinar a al menos 100 ciudadanos para subir de rango";
	        } else if (rangoFaccion == 2) {
	            mensaje = "¡Escoria! Ve a cumplir con mi voluntad. Debes asesinar a al menos 200 ciudadanos para subir de rango";
	        }
	    }
	} else {
	    switch (rangoFaccion) {
	        case 0:
	            if (criminalesMatados >= primerRango) {
	                valido = true;
	            }           
	            break;
	        case 1:
	            if (criminalesMatados >= segundoRango) {
	                valido = true;
	            }           
	            break;
	        case 2:
	            if (criminalesMatados >= tercerRango) {
	                valido = true;
	            }           
	            break;
	        default:
	            mensaje = "¡Felicitaciones! Tu rango en la Armada Imperial es el máximo"; // Rango máximo
	            break;
	    }
	    if (valido) {
	        if (posInv != -1) {
	            if (!esArmada) {
	                esArmada = true;
	            }
	            rangoFaccion++;
	            if (rangoFaccion == 1) {
	                mensaje = "¡Fiel Noble! Has jurado lealtad a la Armada Imperial";
	            } else {
	                mensaje = "¡Fiel Noble! Has subido de rango en la Armada Imperial";
	            }
	            indiceItem = elegirItemFaccion();
	        } else {
	            mensaje = "No tienes lugar en tu inventario. No puedo entregarte tu vestimenta..."; // No hay lugar en inventario
	        }
	    } else {
	        if (rangoFaccion == 0) {
	            mensaje = "Noble... debes matar a al menos 50 criminales para ingresar a la Armada Imperial";
	        } else if (rangoFaccion == 1) {
	            mensaje = "Noble... debes matar a al menos 100 criminales para subir de rango";
	        } else if (rangoFaccion == 2) {
	            mensaje = "Noble... debes matar a al menos 200 criminales para subir de rango";
	        }
	    }
	}

	if (posInv != -1) {

	    // Carga ítem
    
	    datosItem = configurarItem(indiceItem);
    
	    obj_inventario.indiceInv[posInv] = indiceItem;
	    obj_inventario.tipoInv[posInv] = datosItem[0];
	    obj_inventario.cantInv[posInv] = 1;
	    obj_inventario.generoInv[posInv] = datosItem[1];
	    obj_inventario.razaInv[posInv] = datosItem[2];
	    obj_inventario.nroSkillInv[posInv] = datosItem[3];
	    obj_inventario.skillRequeridoInv[posInv] = datosItem[4];
	    obj_inventario.clase0ValidaInv[posInv] = datosItem[5];
	    obj_inventario.clase1ValidaInv[posInv] = datosItem[6];
	    obj_inventario.clase2ValidaInv[posInv] = datosItem[7];
	    obj_inventario.clase3ValidaInv[posInv] = datosItem[8];
	    obj_inventario.clase4ValidaInv[posInv] = datosItem[9];
	    obj_inventario.clase5ValidaInv[posInv] = datosItem[10];
	    obj_inventario.clase6ValidaInv[posInv] = datosItem[11];
	    obj_inventario.clase7ValidaInv[posInv] = datosItem[12];
	    obj_inventario.clase8ValidaInv[posInv] = datosItem[13];
	    obj_inventario.nombreInv[posInv] = datosItem[14];
    
	}

	return mensaje;





}
