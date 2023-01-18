/// @description  invocarCriatura(manaHechizo, criatura, nroCriaturas, device)
/// @param manaHechizo
/// @param  criatura
/// @param  nroCriaturas
/// @param  device
function invocarCriatura(argument0, argument1, argument2, argument3) {

	// Invoca

	var consumoMana = argument0;

	if (obj_pj.mana < consumoMana) {
	    idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	    idINFO.padre = obj_pj.id;
	    idINFO.texto = "¡Maná menor a " + string(consumoMana) + "!";
	    return 0;
	}

	if (obj_mapas_mundo.mapas[room]) {
	    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	    idINFO.texto = "¡No podés invocar criaturas en una zona segura!";
	    return 0;
	}

	var posXMouse = round(device_mouse_x(argument3));
	var posYMouse = round(device_mouse_y(argument3));

	while (posXMouse % 16 != 0 || posXMouse % 32 == 0) {
	    posXMouse++;
	}

	while (posYMouse % 16 != 0 || posYMouse % 32 == 0) {
	    posYMouse++;
	}
    
	var tilePasto = tile_layer_find(10000000, posXMouse, posYMouse); // Pasto
	var tileCosta = tile_layer_find(1000000, posXMouse, posYMouse); // Costa
	var tilePisosYPuentes = tile_layer_find(100000, posXMouse, posYMouse); // Pisos y puentes

	if (tilePasto != -1 || tileCosta != -1 || tilePisosYPuentes != -1) { // Si hay algún tipo de suelo...

	    // Guarda mascotas si es druida

	    if (obj_pj.clase == 5) {
	        for (var i = 0; i < 3; i++) {
	            if (obj_pj.criaturasHijas[i, 0] != -1) {
	                with (obj_pj.criaturasHijas[i, 0]) {
	                    instance_destroy();
	                }
	                obj_pj.criaturasHijas[i, 0] = -1;
	            }
	        }
	    }
    
	    // Guarda invocaciones si tiene
    
	    NPCHechizo = argument1;
	    i = 0;
    
	    for (i = 0; i < 3; i++) {
	        if (obj_pj.criaturasInvocadas[i] != -1) {
	            with (obj_pj.criaturasInvocadas[i]) {
	                if (other.NPCHechizo != obj_npc_zombie_invocado && other.NPCHechizo != obj_npc_lobo_invocado) {
	                    if (object_index != obj_npc_ele_agua_invocado && object_index != obj_npc_ele_tierra_invocado && object_index != obj_npc_ele_fuego_invocado) {
	                        instance_destroy();
	                        obj_pj.criaturasInvocadas[i] = -1;
	                    }
	                } else {
	                    instance_destroy();
	                    obj_pj.criaturasInvocadas[i] = -1;
	                }
	            }
	        }
	    }
    
	} else {
	    idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	    idINFO.padre = obj_pj.id;
	    idINFO.texto = "¡No podés invocar criaturas en el agua!";
	    return 0;
	}

	var i = 0;
	if (argument2 > 1) {
	    obj_pj.mana -= consumoMana;
	    repeat (argument2) {
	        var idInvocacion = instance_create(posXMouse, posYMouse, argument1);   
			if (argument1 == obj_npc_zombie_invocado && claseSemiGuerrera()) {
				with (idInvocacion) {
					sprite_index = spr_npc_lord_zombie
					nombre = "Lord Zombie"
					salud = 350
					saludMax = 350
					danoMeleeMin = 45
					danoMeleeMax = 60
					evasion = 80
					experiencia = 350
					oro = obj_pj.modOro * 150
				}
			}
	        idInvocacion.invocado = true;
	        idInvocacion.alarm[7] = 5400; // 1 minuto y medio
	        obj_pj.criaturasInvocadas[i] = idInvocacion;              
	        idInvocacion.alarm[6] = 1;
	        idInvocacion.alarm[8] = 1;
	        i++;
	    }
	} else {

	    cantElesTierra = 0;
	    cantElesFuego = 0;
    
	    for (var i = 0; i < 3; i++) {
	        with (obj_pj.criaturasInvocadas[i]) {
	            if (object_index == obj_npc_ele_tierra_invocado) {
	                other.cantElesTierra++;
	            } else if (object_index == obj_npc_ele_fuego_invocado) {
	                other.cantElesFuego++;
	            }
	        }
	    }    
    
	    var puedeInvocarElesT = true;
	    var puedeInvocarElesF = true;
    
	    if (argument1 == obj_npc_ele_tierra_invocado) {
	        if (cantElesTierra >= 2) {
	            puedeInvocarElesT = false;
	        }
	    } else if (argument1 == obj_npc_ele_fuego_invocado) {
	        if (cantElesFuego >= 1) {
	            puedeInvocarElesF = false;
	        }
	    }
    
	    var hayLugarParaEle = false;
    
	    if (puedeInvocarElesT && puedeInvocarElesF) {
	        for (var i = 0; i < 3; i++) {
	            if (obj_pj.criaturasInvocadas[i] == -1) {
	                hayLugarParaEle = true;
	                var idInvocacion = instance_create(posXMouse, posYMouse, argument1);          
	                idInvocacion.invocado = true;
	                idInvocacion.alarm[7] = 5400; // 1 minuto y medio
	                obj_pj.criaturasInvocadas[i] = idInvocacion;              
	                idInvocacion.alarm[6] = 1;
	                idInvocacion.alarm[8] = 1;
	                obj_pj.mana -= consumoMana;
	                break;
	            }
	        }
	    }    
    
	    if (!hayLugarParaEle) {
	        idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	        idINFO.padre = obj_pj.id;
	        idINFO.texto = "¡No podés invocar más elementales!";
	        return 0;
	    }
    
	}

	return 1;

            



}
