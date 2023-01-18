/// @description  crearNPCsRoom(room)
/// @param room
function crearNPCsRoom(argument0) {

	var modCantidadNPCs = 2;

	vectorNPCs[0, 0] = -1;
	vectorNPCs[0, 1] = 0;
	vectorNPCs[1, 0] = -1;
	vectorNPCs[1, 1] = 0;
	vectorNPCs[2, 0] = -1;
	vectorNPCs[2, 1] = 0;
	vectorNPCs[3, 0] = -1;
	vectorNPCs[3, 1] = 0;
	vectorNPCs[4, 0] = -1;
	vectorNPCs[4, 1] = 0;
	vectorNPCs[5, 0] = -1;
	vectorNPCs[5, 1] = 0;

	switch (argument0) {
	    case rm_4:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 4;
	        break;
	    case rm_5:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_oso_polar;
	        vectorNPCs[1, 1] = 3;
	        break;
	    case rm_6:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_oso_polar;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_yeti;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_7:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 1;
	        break;
	    case rm_8:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_oso_polar;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_golem_hielo;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_9:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_oso_polar;
	        vectorNPCs[1, 1] = 3;
	        break;
	    case rm_10:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 8;
	        break;
	    case rm_12:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 8;
	        break;
	    case rm_17:
	        vectorNPCs[0, 0] = obj_npc_lobo_invernal;
	        vectorNPCs[0, 1] = 6;
	        break;
	    case rm_28:
	        vectorNPCs[0, 0] = obj_npc_calamar;
	        vectorNPCs[0, 1] = 4;
	        break;
	    case rm_29:
	        vectorNPCs[0, 0] = obj_npc_galeon_fantasmal;
	        vectorNPCs[0, 1] = 4;
	        break;
	    case rm_33:
	        vectorNPCs[0, 0] = obj_npc_leviatan;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_orco_brujo;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_mago_malvado;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lord_orco;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_34:
	        vectorNPCs[0, 0] = obj_npc_leviatan;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_orco_brujo;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_mago_malvado;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lord_orco;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_30:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_escorpion;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_serpiente;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_31:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_escorpion;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_serpiente;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_32:
	        vectorNPCs[0, 0] = obj_npc_lord_zombie;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_esqueleto_guerrero;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_escorpion;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_serpiente;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_44:
	        vectorNPCs[0, 0] = obj_npc_zombie;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_esqueleto;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_serpiente;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_escorpion;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_26:
	        vectorNPCs[0, 0] = obj_npc_goblin;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_tortuga;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_lobo;
	        vectorNPCs[4, 1] = 2;
	        break;
	    case rm_27:
	        vectorNPCs[0, 0] = obj_npc_goblin;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_tortuga;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_lobo;
	        vectorNPCs[4, 1] = 2;
	        break;
	    case rm_83:
	        vectorNPCs[0, 0] = obj_npc_duende_molesto;
	        vectorNPCs[0, 1] = 5;
	        break;
	    case rm_84:
	        vectorNPCs[0, 0] = obj_npc_duende_molesto;
	        vectorNPCs[0, 1] = 6;
	        break;
	    case rm_85:
	        vectorNPCs[0, 0] = obj_npc_duende_molesto;
	        vectorNPCs[0, 1] = 4;
	        break;
	    case rm_86:
	        vectorNPCs[0, 0] = obj_npc_duende_molesto;
	        vectorNPCs[0, 1] = 4;
	        break;
	    case rm_87:
	        vectorNPCs[0, 0] = obj_npc_duende_molesto;
	        vectorNPCs[0, 1] = 3;
	        break;
	    case rm_88:
	        vectorNPCs[0, 0] = obj_npc_mago_malvado;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_lord_orco;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_viuda_negra;
	        vectorNPCs[2, 1] = 3;
	        vectorNPCs[3, 0] = obj_npc_dragon_pequenio;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_beholder;
	        vectorNPCs[4, 1] = 2;
	        break;
	    case rm_89:
	        vectorNPCs[0, 0] = obj_npc_ogro;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_arania;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_orco_brujo;
	        vectorNPCs[2, 1] = 3;
	        vectorNPCs[3, 0] = obj_npc_orco;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_lord_zombie;
	        vectorNPCs[4, 1] = 1;
	        break;
	    case rm_90:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_orco;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lord_zombie;
	        vectorNPCs[2, 1] = 3;
	        break;
	    case rm_91:
	        vectorNPCs[0, 0] = obj_npc_bruja;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_liche;
	        vectorNPCs[1, 1] = 4;
	        vectorNPCs[2, 0] = obj_npc_medusa;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_92:
	        vectorNPCs[0, 0] = obj_npc_bruja;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_liche;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_medusa;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_reina_medusa;
	        vectorNPCs[3, 1] = 3;
	        break;
	    case rm_93:
	        vectorNPCs[0, 0] = obj_npc_golem;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_dragonic;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_reina_medusa;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_20:
	        vectorNPCs[0, 0] = obj_npc_bandido;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_asesino;
	        vectorNPCs[1, 1] = 4;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_19:
	        vectorNPCs[0, 0] = obj_npc_bandido;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_asesino;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_cuervo;
	        vectorNPCs[4, 1] = 2;
	        break;
	    case rm_16:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_cuervo;
	        vectorNPCs[4, 1] = 1;
	        vectorNPCs[5, 0] = obj_npc_aguila;
	        vectorNPCs[5, 1] = 1;
	        break;
	    case rm_22:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_aguila;
	        vectorNPCs[4, 1] = 1;
	        break;
	    case rm_18:
	        vectorNPCs[0, 0] = obj_npc_tortuga;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_jabali;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_cuervo;
	        vectorNPCs[4, 1] = 1;
	        vectorNPCs[5, 0] = obj_npc_aguila;
	        vectorNPCs[5, 1] = 1;
	        break;
	    case rm_15:
	        vectorNPCs[0, 0] = obj_npc_tortuga;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_jabali;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 1;
	        vectorNPCs[4, 0] = obj_npc_aguila;
	        vectorNPCs[4, 1] = 1;
	        break;
	    case rm_11:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_tortuga;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_aguila;
	        vectorNPCs[4, 1] = 1;
	        break;
	    case rm_21:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_aguila;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_23:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_aguila;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_25:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_aguila;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_13:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_aguila;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_14:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_aguila;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_35:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_36:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_37:
	        vectorNPCs[0, 0] = obj_npc_tigre;
	        vectorNPCs[0, 1] = 7;
	        break;
	    case rm_42:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_43:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_41:
	        vectorNPCs[0, 0] = obj_npc_esqueleto;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_zombie;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_40:
	        vectorNPCs[0, 0] = obj_npc_esqueleto_guerrero;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_lord_zombie;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 1;
	        break;
	    case rm_38:
	        vectorNPCs[0, 0] = obj_npc_hormiga_gigante;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_goblin;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_39:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_46:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_47:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_53:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_gallo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 3;
	        break;
	    case rm_55:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_gallo;
	        vectorNPCs[2, 1] = 3;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_49:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_gallo;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 4;
	        break;
	    case rm_56:
	        vectorNPCs[0, 0] = obj_npc_hormiga;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_aguila;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_80:
	        vectorNPCs[0, 0] = obj_npc_hormiga;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_aguila;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_48:
	        vectorNPCs[0, 0] = obj_npc_hormiga;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_aguila;
	        vectorNPCs[2, 1] = 1;
	        break;
	    case rm_54:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 1;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 4;
	        break;
	    case rm_52:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_51:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_50:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_tortuga;
	        vectorNPCs[4, 1] = 3;
	        break;
	    case rm_57:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_tortuga;
	        vectorNPCs[4, 1] = 3;
	        break;
	    case rm_58:
	        vectorNPCs[0, 0] = obj_npc_escorpion;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_serpiente;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_tortuga;
	        vectorNPCs[4, 1] = 3;
	        break;
	    case rm_60:
	        vectorNPCs[0, 0] = obj_npc_asesino;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_bandido;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 2;
	        vectorNPCs[4, 0] = obj_npc_escorpion;
	        vectorNPCs[4, 1] = 2;
	        break;
	    case rm_63:
	        vectorNPCs[0, 0] = obj_npc_arania;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 3;
	        vectorNPCs[3, 0] = obj_npc_escorpion;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_59:
	        vectorNPCs[0, 0] = obj_npc_esqueleto_guerrero;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_lord_zombie;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_escorpion;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_67:
	        vectorNPCs[0, 0] = obj_npc_goblin;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_64:
	        vectorNPCs[0, 0] = obj_npc_goblin;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_escorpion;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_lobo;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_66:
	        vectorNPCs[0, 0] = obj_npc_hormiga_gigante;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_orco;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_65:
	        vectorNPCs[0, 0] = obj_npc_hormiga_gigante;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_orco;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 3;
	        break;
	    case rm_61:
	        vectorNPCs[0, 0] = obj_npc_hormiga_gigante;
	        vectorNPCs[0, 1] = 3;
	        vectorNPCs[1, 0] = obj_npc_orco;
	        vectorNPCs[1, 1] = 2;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 3;
	        break;
	    case rm_62:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 2;
	        vectorNPCs[1, 0] = obj_npc_murcielago;
	        vectorNPCs[1, 1] = 1;
	        break;
	    case rm_69:
	        vectorNPCs[0, 0] = obj_npc_esqueleto;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_zombie;
	        vectorNPCs[1, 1] = 4;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 3;
	        break;
	    case rm_70:
	        vectorNPCs[0, 0] = obj_npc_bandido;
	        vectorNPCs[0, 1] = 6;
	        vectorNPCs[1, 0] = obj_npc_esqueleto;
	        vectorNPCs[1, 1] = 4;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_71:
	        vectorNPCs[0, 0] = obj_npc_jabali;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_duende;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_lobo;
	        vectorNPCs[2, 1] = 2;
	        vectorNPCs[3, 0] = obj_npc_murcielago;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_73:
	        vectorNPCs[0, 0] = obj_npc_bandido;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 4;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_72:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_murcielago;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_74:
	        vectorNPCs[0, 0] = obj_npc_oso_pardo;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_cuervo;
	        vectorNPCs[2, 1] = 2;
	        break;
	    case rm_75:
	        vectorNPCs[0, 0] = obj_npc_tigre;
	        vectorNPCs[0, 1] = 5;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_aguila;
	        vectorNPCs[2, 1] = 1;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_77:
	        vectorNPCs[0, 0] = obj_npc_orco;
	        vectorNPCs[0, 1] = 4;
	        vectorNPCs[1, 0] = obj_npc_lobo;
	        vectorNPCs[1, 1] = 3;
	        vectorNPCs[2, 0] = obj_npc_aguila;
	        vectorNPCs[2, 1] = 3;
	        vectorNPCs[3, 0] = obj_npc_cuervo;
	        vectorNPCs[3, 1] = 2;
	        break;
	    case rm_76:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_78:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_82:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 2;
	        break;
	    case rm_68:
	        vectorNPCs[0, 0] = obj_npc_lobo;
	        vectorNPCs[0, 1] = 1;
	        vectorNPCs[1, 0] = obj_npc_cuervo;
	        vectorNPCs[1, 1] = 2;
	        break;
	}

	for (var i = 0; i < 6; i++) {
	    if (vectorNPCs[i, 1] > 1) {
	        vectorNPCs[i, 1] = floor(vectorNPCs[i, 1] * modCantidadNPCs);
	    }
	}

	for (var i = 0; i < 6; i++) {
	    if (vectorNPCs[i, 0] != -1) {
    
	        repeat (vectorNPCs[i, 1]) {
        
	            if (vectorNPCs[i, 0] == obj_npc_calamar || vectorNPCs[i, 0] == obj_npc_galeon_fantasmal || vectorNPCs[i, 0] == obj_npc_leviatan) {
            
	                // NPC de agua
            
	                var multX = 16;
	                var multY = 16;
	                var xNuevo = 0;
	                var yNuevo = 0;
                
	                do {
                
	                    xNuevo = multX * floor(random_range(2, room_width / multX - 32));
	                    yNuevo = multY * floor(random_range(1, room_height / multY - 32));
	                    var tile1 = tile_layer_find(10000000, xNuevo, yNuevo);
	                    var tile2 = tile_layer_find(1000000, xNuevo, yNuevo);
	                    var tile3 = tile_layer_find(100000, xNuevo, yNuevo);
                
	                } until (
	                xNuevo % 16 == 0 &&
	                yNuevo % 16 == 0 &&
	                xNuevo % 32 != 0 &&
	                yNuevo % 32 != 0 &&
	                tile1 == -1 && tile2 == -1 && tile3 == -1 && 
	                instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
	                instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_telep) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
	                );
                
	                instance_create(xNuevo, yNuevo, vectorNPCs[i, 0]);
                
	            } else {
            
	                // NPC de tierra
            
	                var multX = 16;
	                var multY = 16;
	                var xNuevo = 0;
	                var yNuevo = 0;
                
	                do {
                
	                    xNuevo = multX * floor(random_range(2, room_width / multX - 32));
	                    yNuevo = multY * floor(random_range(1, room_height / multY - 32));
	                    var tile = tile_layer_find(10000000, xNuevo, yNuevo);
                
	                } until (
	                xNuevo % 16 == 0 &&
	                yNuevo % 16 == 0 &&
	                xNuevo % 32 != 0 &&
	                yNuevo % 32 != 0 &&
	                tile != -1 && 
	                instance_position(xNuevo, yNuevo - 16, obj_pj) == noone &&
	                instance_position(xNuevo, yNuevo - 16, obj_bloque_basic) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_bloque) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_telep) == noone && 
	                instance_position(xNuevo, yNuevo - 16, obj_npc_basic) == noone
	                );
                
	                instance_create(xNuevo, yNuevo, vectorNPCs[i, 0]);
                
	            }
            
	        }
        
	    } else {
	        break;
	    }
	}



}
