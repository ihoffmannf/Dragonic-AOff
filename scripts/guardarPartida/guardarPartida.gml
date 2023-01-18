/// @description  guardarPartida(nombrePJ)
/// @param nombrePJ
function guardarPartida(argument0) {

	var nro = -1;
	var existeEn = -1;

	for (var i = 1; i < 10; i++) {
	    if (file_exists("partida" + string(i) + ".ini")) {
	        dec("partida" + string(i) + ".ini");
	        ini_open("partida" + string(i) + ".ini");
	        if (ini_read_string("obj_pj", "nombre", " ") == argument0) {
	            existeEn = i;
	            ini_close();
	            enc("partida" + string(i) + ".ini");
	            break;
	        } else {
	            ini_close();
	            enc("partida" + string(i) + ".ini");
	        }
	        ini_close();
	    }
	}

	if (existeEn == -1) {
	    if (!file_exists("partida1.ini")) {
	        nro = 1;
	    } else if (!file_exists("partida2.ini")) {
	        nro = 2;
	    } else if (!file_exists("partida3.ini")) {
	        nro = 3;
	    } else if (!file_exists("partida4.ini")) {
	        nro = 4;
	    } else if (!file_exists("partida5.ini")) {
	        nro = 5;
	    } else if (!file_exists("partida6.ini")) {
	        nro = 6;
	    } else if (!file_exists("partida7.ini")) {
	        nro = 7;
	    } else if (!file_exists("partida8.ini")) {
	        nro = 8;
	    } else if (!file_exists("partida9.ini")) {
	        nro = 9;
	    }
	} else {
	    nro = existeEn;
	}

	if (nro != -1) {

	    // Activo
    
	    instance_activate_all();
    
	    if (file_exists("partida" + string(nro) + ".ini")) {
	        dec("partida" + string(nro) + ".ini");
	    }
    
	    ini_open("partida" + string(nro) + ".ini");
    
	    // Room
    
	    write("room", "room", room);
    
	    // obj_control_inmo_pj
    
	    write("obj_control_inmo_pj", "alarm[0]", obj_control_inmo_pj.alarm[0]);
    
	    // obj_control_animacion_agua
    
	    write("obj_control_animacion_agua", "alarm[0]", obj_control_animacion_agua.alarm[0]);
	    write("obj_control_animacion_agua", "direccionX", obj_control_animacion_agua.direccionX);
	    write("obj_control_animacion_agua", "direccionY", obj_control_animacion_agua.direccionY);
    
	    // obj_mapas_mundo
    
	    write("obj_mapas_mundo", "mapas[0]", obj_mapas_mundo.mapas[0]);
	    write("obj_mapas_mundo", "mapas[1]", obj_mapas_mundo.mapas[1]);
	    write("obj_mapas_mundo", "mapas[2]", obj_mapas_mundo.mapas[2]);
	    write("obj_mapas_mundo", "mapas[3]", obj_mapas_mundo.mapas[3]);
	    write("obj_mapas_mundo", "mapas[4]", obj_mapas_mundo.mapas[4]);
	    write("obj_mapas_mundo", "mapas[5]", obj_mapas_mundo.mapas[5]);
	    write("obj_mapas_mundo", "mapas[6]", obj_mapas_mundo.mapas[6]);
	    write("obj_mapas_mundo", "mapas[7]", obj_mapas_mundo.mapas[7]);
	    write("obj_mapas_mundo", "mapas[8]", obj_mapas_mundo.mapas[8]);
	    write("obj_mapas_mundo", "mapas[9]", obj_mapas_mundo.mapas[9]);
	    write("obj_mapas_mundo", "mapas[10]", obj_mapas_mundo.mapas[10]);
	    write("obj_mapas_mundo", "mapas[11]", obj_mapas_mundo.mapas[11]);
    
	    // obj_arma y obj_escudo
    
	    write("obj_arma", "frame", obj_arma.frame);
	    write("obj_arma", "alarm[0]", obj_arma.alarm[0]);
    
	    write("obj_escudo", "frame", obj_escudo.frame);
	    write("obj_escudo", "alarm[0]", obj_escudo.alarm[0]);   
    
	    // obj_flecha_abajo, obj_flecha_arriba, obj_flecha_der, obj_flecha_izq
    
	    write("obj_flecha_abajo", "apretada", obj_flecha_abajo.apretada);
	    write("obj_flecha_abajo", "valido", obj_flecha_abajo.valido);
	    write("obj_flecha_abajo", "PJTelep", obj_flecha_abajo.PJTelep);
    
	    write("obj_flecha_arriba", "apretada", obj_flecha_arriba.apretada);
	    write("obj_flecha_arriba", "valido", obj_flecha_arriba.valido);
	    write("obj_flecha_arriba", "PJTelep", obj_flecha_arriba.PJTelep);
    
	    write("obj_flecha_der", "apretada", obj_flecha_der.apretada);
	    write("obj_flecha_der", "valido", obj_flecha_der.valido);
	    write("obj_flecha_der", "PJTelep", obj_flecha_der.PJTelep);
    
	    write("obj_flecha_izq", "apretada", obj_flecha_izq.apretada);
	    write("obj_flecha_izq", "valido", obj_flecha_izq.valido);
	    write("obj_flecha_izq", "PJTelep", obj_flecha_izq.PJTelep);
    
	    // obj_tecla_ctrl, obj_tecla_T, obj_tecla_f6
    
	    write("obj_tecla_ctrl", "teclaApretada", obj_tecla_ctrl.teclaApretada);
	    write("obj_tecla_T", "teclaApretada", obj_tecla_T.teclaApretada);
	    write("obj_tecla_f6", "teclaApretada", obj_tecla_f6.teclaApretada);
    
	    // obj_seguro
    
	    write("obj_seguro", "activo", obj_seguro.activo);
    
	    // obj_pj
    
	    write("obj_pj", "x", obj_pj.x);
	    write("obj_pj", "y", obj_pj.y);
	    writeS("obj_pj", "sprite_index", sprite_get_name(obj_pj.sprite_index));
        
	    write("obj_pj", "alarm[0]", obj_pj.alarm[0]);
	    write("obj_pj", "alarm[2]", obj_pj.alarm[2]);
	    write("obj_pj", "alarm[4]", obj_pj.alarm[4]);
	    write("obj_pj", "alarm[7]", obj_pj.alarm[7]);
	    write("obj_pj", "alarm[9]", obj_pj.alarm[9]);
	    write("obj_pj", "alarm[10]", obj_pj.alarm[10]);
	    write("obj_pj", "alarm[11]", obj_pj.alarm[11]);
    
	    writeS("obj_pj", "nombre", obj_pj.nombre);
	    write("obj_pj", "idCuadroDestino", obj_pj.idCuadroDestino);
	    write("obj_pj", "puedeMoverse", obj_pj.puedeMoverse);
	    write("obj_pj", "xInicio", obj_pj.xInicio);
	    write("obj_pj", "yInicio", obj_pj.yInicio);
	    write("obj_pj", "alinear", obj_pj.alinear);
	    write("obj_pj", "navega", obj_pj.navega);
	    write("obj_pj", "pk", obj_pj.pk);    
	    write("obj_pj", "genero", obj_pj.genero);
		write("obj_pj", "nroRaza", obj_pj.nroRaza);
		writeS("obj_pj", "raza", obj_pj.raza);
		
	    write("obj_pj", "clase", obj_pj.clase);
    
	    write("obj_pj", "atributos[0]", obj_pj.atributos[0]);
	    write("obj_pj", "atributos[1]", obj_pj.atributos[1]);
	    write("obj_pj", "atributos[2]", obj_pj.atributos[2]);
	    write("obj_pj", "atributos[3]", obj_pj.atributos[3]);
	    write("obj_pj", "atributos[4]", obj_pj.atributos[4]);
    
	    write("obj_pj", "ciudadanosMatados", obj_pj.ciudadanosMatados);
	    write("obj_pj", "criminalesMatados", obj_pj.criminalesMatados);
    
	    write("obj_pj", "skillsLibres", obj_pj.skillsLibres);
	    write("obj_pj", "skills[0]", obj_pj.skills[0]);
	    write("obj_pj", "skills[1]", obj_pj.skills[1]);
	    write("obj_pj", "skills[2]", obj_pj.skills[2]);
	    write("obj_pj", "skills[3]", obj_pj.skills[3]);
	    write("obj_pj", "skills[4]", obj_pj.skills[4]);
	    write("obj_pj", "skills[5]", obj_pj.skills[5]);
	    write("obj_pj", "skills[6]", obj_pj.skills[6]);
	    write("obj_pj", "skills[7]", obj_pj.skills[7]);
	    write("obj_pj", "skills[8]", obj_pj.skills[8]);
	    write("obj_pj", "skills[9]", obj_pj.skills[9]);
	    write("obj_pj", "skills[10]", obj_pj.skills[10]);
	    write("obj_pj", "skills[11]", obj_pj.skills[11]);
	    write("obj_pj", "skills[12]", obj_pj.skills[12]);
	    write("obj_pj", "skills[13]", obj_pj.skills[13]);
	    write("obj_pj", "skills[14]", obj_pj.skills[14]);
	    write("obj_pj", "skills[15]", obj_pj.skills[15]);
	    write("obj_pj", "skills[16]", obj_pj.skills[16]);
	    write("obj_pj", "skills[17]", obj_pj.skills[17]);
    
	    write("obj_pj", "modDanoLvl", obj_pj.modDanoLvl);
	    write("obj_pj", "modEvasion", obj_pj.modEvasion);
	    write("obj_pj", "modEvasionEscu", obj_pj.modEvasionEscu);
	    write("obj_pj", "modProbCuerpoACuerpo", obj_pj.modProbCuerpoACuerpo);
	    write("obj_pj", "modDanoCuerpoACuerpo", obj_pj.modDanoCuerpoACuerpo);
	    write("obj_pj", "modProbArco", obj_pj.modProbArco);
	    write("obj_pj", "modDanoArco", obj_pj.modDanoArco);
		writeS("obj_pj", "sprCabeza", sprite_get_name(obj_pj.sprCabeza));
    
	    write("obj_pj", "ultimaTecla", obj_pj.ultimaTecla);
	    write("obj_pj", "direccion", obj_pj.direccion);
	    // write("obj_pj", "frame", obj_pj.frame);
    
	    write("obj_pj", "armaActual", obj_pj.armaActual);
	    write("obj_pj", "armaEnInv", obj_pj.armaEnInv);
    
	    write("obj_pj", "flechaActual", obj_pj.flechaActual);
	    write("obj_pj", "flechaEnInv", obj_pj.flechaEnInv);
    
	    write("obj_pj", "escudoActual", obj_pj.escudoActual);
	    write("obj_pj", "escudoEnInv", obj_pj.escudoEnInv);
    
	    write("obj_pj", "cascoActual", obj_pj.cascoActual);
	    write("obj_pj", "cascoEnInv", obj_pj.cascoEnInv);
    
	    write("obj_pj", "laudActual", obj_pj.laudActual);
	    write("obj_pj", "laudEnInv", obj_pj.laudEnInv);
	    write("obj_pj", "laudEquipado", obj_pj.laudEquipado);
    
	    write("obj_pj", "trabajoActual", obj_pj.trabajoActual);
	    write("obj_pj", "trabajoEnInv", obj_pj.trabajoEnInv);
	    write("obj_pj", "trabajoEquipado", obj_pj.trabajoEquipado);
    
	    write("obj_pj", "saludMax", obj_pj.saludMax);
	    write("obj_pj", "salud", obj_pj.salud);
	    write("obj_pj", "manaMax", obj_pj.manaMax);
	    write("obj_pj", "mana", obj_pj.mana);
	    write("obj_pj", "energiaMax", obj_pj.energiaMax);
	    write("obj_pj", "energia", obj_pj.energia);
	    write("obj_pj", "hambre", obj_pj.hambre);
	    write("obj_pj", "sed", obj_pj.sed);
	    write("obj_pj", "oro", obj_pj.oro);
    
	    write("obj_pj", "muerto", obj_pj.muerto);
	    write("obj_pj", "desnudo", obj_pj.desnudo);
    
	    write("obj_pj", "ropaActual", obj_pj.ropaActual);
	    write("obj_pj", "ropaEnInv", obj_pj.ropaEnInv);
	    write("obj_pj", "ropaIndexada", obj_pj.ropaIndexada);
    
	    write("obj_pj", "danoMin", obj_pj.danoMin);
	    write("obj_pj", "danoMax", obj_pj.danoMax); 
    
	    write("obj_pj", "nivel", obj_pj.nivel);
	    write("obj_pj", "experiencia", obj_pj.experiencia);   
     
	    write("obj_pj", "envenenado", obj_pj.envenenado);
	    write("obj_pj", "veneno", obj_pj.veneno);    
    
	    write("obj_pj", "roomRuna", obj_pj.roomRuna);    
	    write("obj_pj", "xRuna", obj_pj.xRuna);
	    write("obj_pj", "yRuna", obj_pj.yRuna);      
     
	    write("obj_pj", "encerrado", obj_pj.encerrado);
	    write("obj_pj", "inmovilizado", obj_pj.inmovilizado);   
    
	    write("obj_pj", "puntosPK", obj_pj.puntosPK);   
    
	    write("obj_pj", "criaturasHijas[0, 1]", obj_pj.criaturasHijas[0, 1]);
	    write("obj_pj", "criaturasHijas[0, 2]", obj_pj.criaturasHijas[0, 2]);
	    write("obj_pj", "criaturasHijas[0, 3]", obj_pj.criaturasHijas[0, 3]);
    
	    write("obj_pj", "criaturasHijas[1, 1]", obj_pj.criaturasHijas[1, 1]);
	    write("obj_pj", "criaturasHijas[1, 2]", obj_pj.criaturasHijas[1, 2]);
	    write("obj_pj", "criaturasHijas[1, 3]", obj_pj.criaturasHijas[1, 3]);
    
	    write("obj_pj", "criaturasHijas[2, 1]", obj_pj.criaturasHijas[2, 1]);
	    write("obj_pj", "criaturasHijas[2, 2]", obj_pj.criaturasHijas[2, 2]);
	    write("obj_pj", "criaturasHijas[2, 3]", obj_pj.criaturasHijas[2, 3]);
    
	    write("obj_pj", "teletransporta", obj_pj.teletransporta);  
    
	    write("obj_pj", "esArmada", obj_pj.esArmada);
	    write("obj_pj", "esLegion", obj_pj.esLegion);
	    write("obj_pj", "rangoFaccion", obj_pj.rangoFaccion);
	    write("obj_pj", "estaEnPolo", obj_pj.estaEnPolo);
	    write("obj_pj", "insigniaPionero", obj_pj.insigniaPionero);
    
	    // obj_inventario
    
	    write("obj_inventario", "alarm[4]", obj_inventario.alarm[4]);    
	    guardarInventario();
    
	    // obj_hechizos
    
	    guardarHechizos();
    
	    // obj_banco
    
	    guardarBanco();
    
	    ini_close();
    
	    // Codifico el archivo
    
	    enc("partida" + string(nro) + ".ini");
    
	    return 1;
    
	}

	return 0;



}
