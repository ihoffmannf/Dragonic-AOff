/// @description  crearObjetosBasicos(partida)
/// @param partida
function crearObjetosBasicos(argument0) {

	if (argument0 == -1) {

	    instance_create(0, 0, obj_panel_items);
	    instance_create(0, 0, obj_npcs_mundo);
	    instance_create(0, 0, obj_respawn_personas);
	    instance_create(1296, 1808, obj_pj);
	    instance_create(0, 0, obj_flecha_arriba);
	    instance_create(0, 0, obj_flecha_abajo);
	    instance_create(0, 0, obj_flecha_izq);
	    instance_create(0, 0, obj_flecha_der);
	    instance_create(0, 0, obj_control_inmo_pj);
	    instance_create(498, 2408, obj_tecla_ctrl);
	    instance_create(0, 0, obj_seguro);
	    instance_create(0, 0, obj_manual);
	    instance_create(450, 2408, obj_tecla_A);
	    instance_create(0, 0, obj_escudo);
	    instance_create(0, 0, obj_arma);
	    instance_create(474, 2440, obj_tecla_U);
	    instance_create(546, 2440, obj_tecla_f6);
	    instance_create(0, 0, obj_hechizos);
	    instance_create(474, 2440, obj_tecla_lanzar);
	    instance_create(450, 2440, obj_tecla_inventario);
	    instance_create(450, 2440, obj_tecla_hechizos);
	    instance_create(0, 0, obj_control_animacion_agua);
	    instance_create(0, 0, obj_inventario);
	    instance_create(0, 0, obj_skills_libres);
    
	    var idSkillI1 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI1.indice = 0;
	    var idSkillI2 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI2.indice = 1;
	    var idSkillI3 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI3.indice = 2;
	    var idSkillI4 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI4.indice = 3;
	    var idSkillI5 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI5.indice = 4;
	    var idSkillI6 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI6.indice = 5;
	    var idSkillI7 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI7.indice = 6;
	    var idSkillI8 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI8.indice = 7;
	    var idSkillI9 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI9.indice = 8;
	    var idSkillI10 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI10.indice = 9;
	    var idSkillI11 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI11.indice = 10;
	    var idSkillI12 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI12.indice = 11;
	    var idSkillI13 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI13.indice = 12;
	    var idSkillI14 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI14.indice = 13;
	    var idSkillI15 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI15.indice = 14;
	    var idSkillI16 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI16.indice = 15;
	    var idSkillI17 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI17.indice = 16;
	    var idSkillI18 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI18.indice = 17;
    
	    var idSkillD1 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD1.indice = 0;
	    var idSkillD2 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD2.indice = 1;
	    var idSkillD3 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD3.indice = 2;
	    var idSkillD4 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD4.indice = 3;
	    var idSkillD5 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD5.indice = 4;
	    var idSkillD6 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD6.indice = 5;
	    var idSkillD7 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD7.indice = 6;
	    var idSkillD8 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD8.indice = 7;
	    var idSkillD9 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD9.indice = 8;
	    var idSkillD10 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD10.indice = 9;
	    var idSkillD11 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD11.indice = 10;
	    var idSkillD12 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD12.indice = 11;
	    var idSkillD13 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD13.indice = 12;
	    var idSkillD14 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD14.indice = 13;
	    var idSkillD15 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD15.indice = 14;
	    var idSkillD16 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD16.indice = 15;
	    var idSkillD17 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD17.indice = 16;
	    var idSkillD18 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD18.indice = 17;
       
	    instance_create(0, 0, obj_banco);
	    instance_create(0, 0, obj_personas_mundo);
	    instance_create(0, 0, obj_items_mundo);
	    instance_create(0, 0, obj_flecha_der_manual);
	    instance_create(0, 0, obj_flecha_izq_manual);
	    instance_create(0, 0, obj_area_flechas);
	    instance_create(0, 0, obj_tecla_T);
	    instance_create(0, 0, obj_limpieza_mundo);
	    instance_create(0, 0, obj_panel_trabajos);
	    instance_create(0, 0, obj_gui);
	    instance_create(85, 2455, obj_cambiar_vista_hechizos);
	    instance_create(85, 2455, obj_mover_inventario);
	    instance_create(0, 0, obj_controles);
    
	    var idAyuda = instance_create(0, 0, obj_ayuda);
	    idAyuda.titilando = true;
	    idAyuda.alarm[0] = 1;
    
	    instance_create(0, 0, obj_configuracion);
	    instance_create(0, 0, obj_panel_opciones);
	    instance_create(0, 0, obj_boton_pausa);
	    instance_create(0, 0, obj_indice_manual);
    
	    var idIndx1 = instance_create(0, 0, obj_indice_manual_1);
	    idIndx1.image_xscale = 5;
	    idIndx1.image_yscale = 0.5;
	    var idIndx2 = instance_create(0, 0, obj_indice_manual_2);
	    idIndx2.image_xscale = 5;
	    idIndx2.image_yscale = 0.5;
	    var idIndx3 = instance_create(0, 0, obj_indice_manual_3);
	    idIndx3.image_xscale = 5;
	    idIndx3.image_yscale = 0.5;
	    var idIndx4 = instance_create(0, 0, obj_indice_manual_4);
	    idIndx4.image_xscale = 5;
	    idIndx4.image_yscale = 0.5;
	    var idIndx5 = instance_create(0, 0, obj_indice_manual_5);
	    idIndx5.image_xscale = 5;
	    idIndx5.image_yscale = 0.5;
	    var idIndx6 = instance_create(0, 0, obj_indice_manual_6);
	    idIndx6.image_xscale = 5;
	    idIndx6.image_yscale = 0.5;
	    var idIndx7 = instance_create(0, 0, obj_indice_manual_7);
	    idIndx7.image_xscale = 5;
	    idIndx7.image_yscale = 0.5;
	    var idIndx8 = instance_create(0, 0, obj_indice_manual_8);
	    idIndx8.image_xscale = 5;
	    idIndx8.image_yscale = 0.5;
	    var idIndx9 = instance_create(0, 0, obj_indice_manual_9);
	    idIndx9.image_xscale = 5;
	    idIndx9.image_yscale = 0.5;
	    var idIndx10 = instance_create(0, 0, obj_indice_manual_10);
	    idIndx10.image_xscale = 5;
	    idIndx10.image_yscale = 0.5;
	    var idIndx11 = instance_create(0, 0, obj_indice_manual_11);
	    idIndx11.image_xscale = 5;
	    idIndx11.image_yscale = 0.5;
	    var idIndx12 = instance_create(0, 0, obj_indice_manual_12);
	    idIndx12.image_xscale = 5;
	    idIndx12.image_yscale = 0.5;
    
	    instance_create(0, 0, obj_mapas_mundo);

	} else {
    
	    // Objetos de los cuales se guardan variables:

	    // obj_control_inmo_pj
	    // obj_control_animacion_agua
	    // obj_mapas_mundo
	    // obj_arma y obj_escudo 
	    // obj_arma_persona y obj_escudo_persona 
	    // obj_gui 
	    // obj_flecha_abajo, obj_flecha_arriba, obj_flecha_der, obj_flecha_izq
	    // obj_tecla_ctrl, obj_tecla_T, obj_tecla_f6
	    // obj_seguro
	    // obj_pj
	    // obj_inventario
	    // obj_hechizos
	    // obj_banco

	    dec("partida" + string(argument0) + ".ini");
	    ini_open("partida" + string(argument0) + ".ini");

	    instance_create(0, 0, obj_panel_items);
	    instance_create(0, 0, obj_npcs_mundo);
	    instance_create(0, 0, obj_respawn_personas);
    
	    // obj_pj
    
	    var idPJ = instance_create(464, 1008, obj_pj);
    
	    idPJ.x = read("obj_pj", "x", 464);
	    idPJ.y = read("obj_pj", "y", 1008);
	    idPJ.sprite_index = asset_get_index(readS("obj_pj", "sprite_index", "spr_cuerpo_alto_h"));
    
	    idPJ.alarm[0] = read("obj_pj", "alarm[0]", 1);
	    idPJ.alarm[2] = read("obj_pj", "alarm[2]", 1);
	    idPJ.alarm[4] = read("obj_pj", "alarm[4]", 1);
	    idPJ.alarm[7] = read("obj_pj", "alarm[7]", 1);
	    idPJ.alarm[9] = read("obj_pj", "alarm[9]", 1);
	    idPJ.alarm[10] = read("obj_pj", "alarm[10]", 1);
	    idPJ.alarm[11] = read("obj_pj", "alarm[11]", 1);
    
	    idPJ.nombre = readS("obj_pj", "nombre", "RESTAURAR_PERSONAJE");
	    idPJ.idCuadroDestino = read("obj_pj", "idCuadroDestino", 0);
	    idPJ.puedeMoverse = read("obj_pj", "puedeMoverse", true);
	    idPJ.xInicio = read("obj_pj", "xInicio", 0);
	    idPJ.yInicio = read("obj_pj", "yInicio", 0);
	    idPJ.alinear = read("obj_pj", "alinear", false);
	    idPJ.navega = read("obj_pj", "navega", false);    
	    idPJ.pk = read("obj_pj", "pk", false);    
	    idPJ.genero = read("obj_pj", "genero", 0);
	    idPJ.nroRaza = read("obj_pj", "nroRaza", 0);
	    idPJ.raza = readS("obj_pj", "raza", "Arquero");
	    idPJ.clase = read("obj_pj", "clase", 0);
    
	    idPJ.atributos[0] = read("obj_pj", "atributos[0]", 18);
	    idPJ.atributos[1] = read("obj_pj", "atributos[1]", 18);
	    idPJ.atributos[2] = read("obj_pj", "atributos[2]", 18);
	    idPJ.atributos[3] = read("obj_pj", "atributos[3]", 18);
	    idPJ.atributos[4] = read("obj_pj", "atributos[4]", 18);
    
	    idPJ.ciudadanosMatados = read("obj_pj", "ciudadanosMatados", 0);
	    idPJ.criminalesMatados = read("obj_pj", "criminalesMatados", 0);
    
	    idPJ.skillsLibres = read("obj_pj", "skillsLibres", 0);
	    idPJ.skills[0] = read("obj_pj", "skills[0]", 0);
	    idPJ.skills[1] = read("obj_pj", "skills[1]", 0);
	    idPJ.skills[2] = read("obj_pj", "skills[2]", 0);
	    idPJ.skills[3] = read("obj_pj", "skills[3]", 0);
	    idPJ.skills[4] = read("obj_pj", "skills[4]", 0);
	    idPJ.skills[5] = read("obj_pj", "skills[5]", 0);
	    idPJ.skills[6] = read("obj_pj", "skills[6]", 0);
	    idPJ.skills[7] = read("obj_pj", "skills[7]", 0);
	    idPJ.skills[8] = read("obj_pj", "skills[8]", 0);
	    idPJ.skills[9] = read("obj_pj", "skills[9]", 0);
	    idPJ.skills[10] = read("obj_pj", "skills[10]", 0);
	    idPJ.skills[11] = read("obj_pj", "skills[11]", 0);
	    idPJ.skills[12] = read("obj_pj", "skills[12]", 0);
	    idPJ.skills[13] = read("obj_pj", "skills[13]", 0);
	    idPJ.skills[14] = read("obj_pj", "skills[14]", 0);
	    idPJ.skills[15] = read("obj_pj", "skills[15]", 0);
	    idPJ.skills[16] = read("obj_pj", "skills[16]", 0);
	    idPJ.skills[17] = read("obj_pj", "skills[17]", 0);
    
	    idPJ.modDanoLvl = read("obj_pj", "modDanoLvl", 1);
	    idPJ.modEvasion = read("obj_pj", "modEvasion", 1);
	    idPJ.modEvasionEscu = read("obj_pj", "modEvasionEscu", 1);
	    idPJ.modProbCuerpoACuerpo = read("obj_pj", "modProbCuerpoACuerpo", 1);
	    idPJ.modDanoCuerpoACuerpo = read("obj_pj", "modDanoCuerpoACuerpo", 1);
	    idPJ.modProbArco = read("obj_pj", "modProbArco", 1);
	    idPJ.modDanoArco = read("obj_pj", "modDanoArco", 1);
    
	    idPJ.sprCabeza = asset_get_index(readS("obj_pj", "sprCabeza", "spr_cabeza_1"));
    
	    idPJ.ultimaTecla = read("obj_pj", "ultimaTecla", 0);
	    idPJ.direccion = read("obj_pj", "direccion", 0);
	    // idPJ.frame = read("obj_pj", "frame", 0);
    
	    idPJ.flechaActual = read("obj_pj", "flechaActual", -1);
	    idPJ.flechaEnInv = read("obj_pj", "flechaEnInv", -1);
    
	    idPJ.escudoActual = read("obj_pj", "escudoActual", -1);
	    idPJ.escudoEnInv = read("obj_pj", "escudoEnInv", -1);
    
	    idPJ.cascoActual = read("obj_pj", "cascoActual", -1);
	    idPJ.cascoEnInv = read("obj_pj", "cascoEnInv", -1);
    
	    idPJ.laudActual = read("obj_pj", "laudActual", -1);
	    idPJ.laudEnInv = read("obj_pj", "laudEnInv", -1);
	    idPJ.laudEquipado = read("obj_pj", "laudEquipado", false);
    
	    idPJ.trabajoActual = read("obj_pj", "trabajoActual", -1);
	    idPJ.trabajoEnInv = read("obj_pj", "trabajoEnInv", -1);
	    idPJ.trabajoEquipado = read("obj_pj", "trabajoEquipado", false);
    
	    idPJ.saludMax = read("obj_pj", "saludMax", 10);
	    idPJ.salud = read("obj_pj", "salud", 10);
	    idPJ.manaMax = read("obj_pj", "manaMax", 10);
	    idPJ.mana = read("obj_pj", "mana", 10);
	    idPJ.energiaMax = read("obj_pj", "energiaMax", 10);
	    idPJ.energia = read("obj_pj", "energia", 10);
	    idPJ.hambre = read("obj_pj", "hambre", 100);
	    idPJ.sed = read("obj_pj", "sed", 100);
	    idPJ.oro = read("obj_pj", "oro", 0);
    
	    idPJ.muerto = read("obj_pj", "muerto", false);
	    idPJ.desnudo = read("obj_pj", "desnudo", false);
    
	    idPJ.danoMin = read("obj_pj", "danoMin", 1);
	    idPJ.danoMax = read("obj_pj", "danoMax", 1); 
    
	    idPJ.nivel = read("obj_pj", "nivel", 1);
	    idPJ.experiencia = read("obj_pj", "experiencia", 0);   
     
	    idPJ.envenenado = read("obj_pj", "envenenado", false);
	    idPJ.veneno = read("obj_pj", "veneno", 0);    
    
	    idPJ.roomRuna = read("obj_pj", "roomRuna", rm_79);    
	    idPJ.xRuna = read("obj_pj", "xRuna", 1296);
	    idPJ.yRuna = read("obj_pj", "yRuna", 1808);      
     
	    idPJ.encerrado = read("obj_pj", "encerrado", false);
	    idPJ.inmovilizado = read("obj_pj", "inmovilizado", false);   
    
	    idPJ.puntosPK = read("obj_pj", "puntosPK", 0);   
    
	    idPJ.criaturasHijas[0, 1] = read("obj_pj", "criaturasHijas[0, 1]", -1);
	    idPJ.criaturasHijas[0, 2] = read("obj_pj", "criaturasHijas[0, 2]", -1);
	    idPJ.criaturasHijas[0, 3] = read("obj_pj", "criaturasHijas[0, 3]", -1);
    
	    idPJ.criaturasHijas[1, 1] = read("obj_pj", "criaturasHijas[1, 1]", -1);
	    idPJ.criaturasHijas[1, 2] = read("obj_pj", "criaturasHijas[1, 2]", -1);
	    idPJ.criaturasHijas[1, 3] = read("obj_pj", "criaturasHijas[1, 3]", -1);
    
	    idPJ.criaturasHijas[2, 1] = read("obj_pj", "criaturasHijas[2, 1]", -1);
	    idPJ.criaturasHijas[2, 2] = read("obj_pj", "criaturasHijas[2, 2]", -1);
	    idPJ.criaturasHijas[2, 3] = read("obj_pj", "criaturasHijas[2, 3]", -1);
    
	    idPJ.teletransporta = read("obj_pj", "teletransporta", false); 
    
	    idPJ.alarm[9] = 1;
    
	    idPJ.esArmada = read("obj_pj", "esArmada", false); 
	    idPJ.esLegion = read("obj_pj", "esLegion", false); 
	    idPJ.rangoFaccion = read("obj_pj", "rangoFaccion", 0); 
	    idPJ.estaEnPolo = read("obj_pj", "estaEnPolo", 0); 
    
	    // FIN obj_pj
    
	    // Flechas
    
	    var idFlechaArriba = instance_create(0, 0, obj_flecha_arriba);
    
	    idFlechaArriba.apretada = read("obj_flecha_arriba", "apretada", false);
	    idFlechaArriba.valido = read("obj_flecha_arriba", "valido", true);
	    idFlechaArriba.PJTelep = read("obj_flecha_arriba", "PJTelep", false);
    
	    var idFlechaAbajo = instance_create(0, 0, obj_flecha_abajo);
    
	    idFlechaAbajo.apretada = read("obj_flecha_abajo", "apretada", false);
	    idFlechaAbajo.valido = read("obj_flecha_abajo", "valido", true);
	    idFlechaAbajo.PJTelep = read("obj_flecha_abajo", "PJTelep", false);
    
	    var idFlechaIzq = instance_create(0, 0, obj_flecha_izq);
    
	    idFlechaIzq.apretada = read("obj_flecha_izq", "apretada", false);
	    idFlechaIzq.valido = read("obj_flecha_izq", "valido", true);
	    idFlechaIzq.PJTelep = read("obj_flecha_izq", "PJTelep", false);  
    
	    var idFlechaDer = instance_create(0, 0, obj_flecha_der);    
    
	    idFlechaDer.apretada = read("obj_flecha_der", "apretada", false);
	    idFlechaDer.valido = read("obj_flecha_der", "valido", true);
	    idFlechaDer.PJTelep = read("obj_flecha_der", "PJTelep", false);  
		
		// Insignia pionero basada en archivo de guardado viejo
		
		idPJ.insigniaPionero = read("obj_flecha_arriba", "deviceDefinido", -2) != -2;
    
	    // FIN Flechas
    
	    var idControlInmoPJ = instance_create(0, 0, obj_control_inmo_pj);
	    idControlInmoPJ.alarm[0] = read("obj_control_inmo_pj", "alarm[0]", 1);
    
	    var idCtrl = instance_create(498, 2408, obj_tecla_ctrl);
	    idCtrl.teclaApretada = read("obj_tecla_ctrl", "teclaApretada", false);
    
	    var idSeguro = instance_create(0, 0, obj_seguro);
	    idSeguro.activo = read("obj_seguro", "activo", true);
    
	    instance_create(0, 0, obj_manual);
	    instance_create(450, 2408, obj_tecla_A);
		
		instance_create(0, 0, obj_escudo);
		instance_create(0, 0, obj_arma);
    
	    instance_create(474, 2440, obj_tecla_U);
    
	    var idF6 = instance_create(546, 2440, obj_tecla_f6);
	    idF6.teclaApretada = read("obj_tecla_f6", "teclaApretada", false);
    
	    instance_create(0, 0, obj_hechizos);
    
	    cargarHechizos(); 
    
	    instance_create(474, 2440, obj_tecla_lanzar);
	    instance_create(450, 2440, obj_tecla_inventario);
	    instance_create(450, 2440, obj_tecla_hechizos);
    
	    var idControlAnimAgua = instance_create(0, 0, obj_control_animacion_agua);
	    idControlAnimAgua.alarm[0] = read("obj_control_animacion_agua", "alarm[0]", 1);
	    idControlAnimAgua.direccionX = read("obj_control_animacion_agua", "direccionX", 0);
	    idControlAnimAgua.direccionY = read("obj_control_animacion_agua", "direccionY", 0);
    
	    var idInventario = instance_create(0, 0, obj_inventario);
	    idInventario.alarm[4] = read("obj_inventario", "alarm[4]", 1);
    
	    cargarInventario();     
    
	    instance_create(0, 0, obj_skills_libres);
    
	    var idSkillI1 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI1.indice = 0;
	    var idSkillI2 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI2.indice = 1;
	    var idSkillI3 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI3.indice = 2;
	    var idSkillI4 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI4.indice = 3;
	    var idSkillI5 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI5.indice = 4;
	    var idSkillI6 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI6.indice = 5;
	    var idSkillI7 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI7.indice = 6;
	    var idSkillI8 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI8.indice = 7;
	    var idSkillI9 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI9.indice = 8;
	    var idSkillI10 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI10.indice = 9;
	    var idSkillI11 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI11.indice = 10;
	    var idSkillI12 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI12.indice = 11;
	    var idSkillI13 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI13.indice = 12;
	    var idSkillI14 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI14.indice = 13;
	    var idSkillI15 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI15.indice = 14;
	    var idSkillI16 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI16.indice = 15;
	    var idSkillI17 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI17.indice = 16;
	    var idSkillI18 = instance_create(0, 0, obj_boton_panel_skills_izq);
	    idSkillI18.indice = 17;
    
	    var idSkillD1 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD1.indice = 0;
	    var idSkillD2 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD2.indice = 1;
	    var idSkillD3 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD3.indice = 2;
	    var idSkillD4 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD4.indice = 3;
	    var idSkillD5 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD5.indice = 4;
	    var idSkillD6 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD6.indice = 5;
	    var idSkillD7 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD7.indice = 6;
	    var idSkillD8 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD8.indice = 7;
	    var idSkillD9 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD9.indice = 8;
	    var idSkillD10 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD10.indice = 9;
	    var idSkillD11 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD11.indice = 10;
	    var idSkillD12 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD12.indice = 11;
	    var idSkillD13 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD13.indice = 12;
	    var idSkillD14 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD14.indice = 13;
	    var idSkillD15 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD15.indice = 14;
	    var idSkillD16 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD16.indice = 15;
	    var idSkillD17 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD17.indice = 16;
	    var idSkillD18 = instance_create(0, 0, obj_boton_panel_skills_der);
	    idSkillD18.indice = 17;
       
	    instance_create(0, 0, obj_banco);
    
	    cargarBanco();
    
	    instance_create(0, 0, obj_personas_mundo);
	    instance_create(0, 0, obj_items_mundo);
	    instance_create(0, 0, obj_flecha_der_manual);
	    instance_create(0, 0, obj_flecha_izq_manual);
	    instance_create(0, 0, obj_area_flechas);
    
	    var idT = instance_create(0, 0, obj_tecla_T);
	    idT.teclaApretada = read("obj_tecla_T", "teclaApretada", false);
    
	    instance_create(0, 0, obj_limpieza_mundo);
	    instance_create(0, 0, obj_panel_trabajos);
	    instance_create(0, 0, obj_gui);
	    instance_create(85, 2455, obj_cambiar_vista_hechizos);
	    instance_create(85, 2455, obj_mover_inventario);
	    instance_create(0, 0, obj_controles);
	    instance_create(0, 0, obj_ayuda);
	    instance_create(0, 0, obj_configuracion);
	    instance_create(0, 0, obj_panel_opciones);
	    instance_create(0, 0, obj_boton_pausa);
	    instance_create(0, 0, obj_indice_manual);
    
	    var idIndx1 = instance_create(0, 0, obj_indice_manual_1);
	    idIndx1.image_xscale = 5;
	    idIndx1.image_yscale = 0.5;
	    var idIndx2 = instance_create(0, 0, obj_indice_manual_2);
	    idIndx2.image_xscale = 5;
	    idIndx2.image_yscale = 0.5;
	    var idIndx3 = instance_create(0, 0, obj_indice_manual_3);
	    idIndx3.image_xscale = 5;
	    idIndx3.image_yscale = 0.5;
	    var idIndx4 = instance_create(0, 0, obj_indice_manual_4);
	    idIndx4.image_xscale = 5;
	    idIndx4.image_yscale = 0.5;
	    var idIndx5 = instance_create(0, 0, obj_indice_manual_5);
	    idIndx5.image_xscale = 5;
	    idIndx5.image_yscale = 0.5;
	    var idIndx6 = instance_create(0, 0, obj_indice_manual_6);
	    idIndx6.image_xscale = 5;
	    idIndx6.image_yscale = 0.5;
	    var idIndx7 = instance_create(0, 0, obj_indice_manual_7);
	    idIndx7.image_xscale = 5;
	    idIndx7.image_yscale = 0.5;
	    var idIndx8 = instance_create(0, 0, obj_indice_manual_8);
	    idIndx8.image_xscale = 5;
	    idIndx8.image_yscale = 0.5;
	    var idIndx9 = instance_create(0, 0, obj_indice_manual_9);
	    idIndx9.image_xscale = 5;
	    idIndx9.image_yscale = 0.5;
	    var idIndx10 = instance_create(0, 0, obj_indice_manual_10);
	    idIndx10.image_xscale = 5;
	    idIndx10.image_yscale = 0.5;
	    var idIndx11 = instance_create(0, 0, obj_indice_manual_11);
	    idIndx11.image_xscale = 5;
	    idIndx11.image_yscale = 0.5;
	    var idIndx12 = instance_create(0, 0, obj_indice_manual_12);
	    idIndx12.image_xscale = 5;
	    idIndx12.image_yscale = 0.5;
    
	    var idMapasMundo = instance_create(0, 0, obj_mapas_mundo);
    
	    idMapasMundo.mapas[0] = read("obj_mapas_mundo", "mapas[0]", false);
	    idMapasMundo.mapas[1] = read("obj_mapas_mundo", "mapas[1]", false);
	    idMapasMundo.mapas[2] = read("obj_mapas_mundo", "mapas[2]", false);
	    idMapasMundo.mapas[3] = read("obj_mapas_mundo", "mapas[3]", false);
	    idMapasMundo.mapas[4] = read("obj_mapas_mundo", "mapas[4]", false);
	    idMapasMundo.mapas[5] = read("obj_mapas_mundo", "mapas[5]", false);
	    idMapasMundo.mapas[6] = read("obj_mapas_mundo", "mapas[6]", false);
	    idMapasMundo.mapas[7] = read("obj_mapas_mundo", "mapas[7]", false);
	    idMapasMundo.mapas[8] = read("obj_mapas_mundo", "mapas[8]", false);
	    idMapasMundo.mapas[9] = read("obj_mapas_mundo", "mapas[9]", false);
	    idMapasMundo.mapas[10] = read("obj_mapas_mundo", "mapas[10]", false);
	    idMapasMundo.mapas[11] = read("obj_mapas_mundo", "mapas[11]", false);
    
	    ini_close();
	    enc("partida" + string(argument0) + ".ini");
		
		with (idPJ) {
			alinearPJ();
		}
    
	}



}
