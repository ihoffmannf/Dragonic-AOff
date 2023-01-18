/// @description  Acciono

if (seleccionado != -1) {

    for (var i = 0; i < maximoInv; i++) {
        if (seleccionado == indiceInv[i]) {
            break;
        }
    }
    
    if (tipoInv[i] == "arma") {
        if (obj_pj.armaActual >= 21 && obj_pj.armaActual <= 27) {
            if (obj_pj.puedeAtacar && obj_pj.energia >= 20 && obj_pj.flechaEnInv != -1) {
                obj_pj.atacaConArco = true;
            }
        }
    } else if (tipoInv[i] == "comida") {
    
        var suma = 0;
        
        switch (indiceInv[i]) {
            case 101:
                suma = 10;
                break;
            case 102:
                suma = 15;
                break;
            case 103:
                suma = 15;
                break;
            case 104:
                suma = 20;
                break;
            case 105:
                suma = 20;
                break;
            case 106:
                suma = 25;
                break;
            case 107:
                suma = 75;
                break;
            case 108:
                suma = 50;
                break;
            case 109:
                suma = 50;
                break;
            case 110:
                suma = 25;
                break;
            case 111:
                suma = 50;
                break;
            case 112:
                suma = 75;
                break;
            case 113:
                suma = 75;
                break;
            case 114:
                suma = 75;
                break;
            case 115:
                suma = 100;
                break;
        }
        
        reproducirSonido(snd_comerComida, false, false);
    
        if (obj_pj.hambre + suma <= obj_pj.hambreMax) {
            obj_pj.hambre += suma;
        } else {
            obj_pj.hambre = obj_pj.hambreMax;
        }
        
        if (cantInv[i] > 1) {
            cantInv[i]--;
        } else {
            indiceInv[i] = -1;
            tipoInv[i] = "";
            cantInv[i] = 0;
            equipadoInv[i] = false;
            generoInv[i] = -1;
            razaInv[i] = -1;
            seleccionado = -1;
            nombreInv[i] = "Vacío";
        }
        
    } else if (tipoInv[i] == "bebida") {
    
        var suma = 0;
        
        switch (indiceInv[i]) {
            case 116:
                suma = 30;
                break;
            case 117:
                suma = 60;
                break;
            case 118:
                suma = 90;
                break;
            case 119:
                suma = 100;
                break;
        }
        
        if (obj_pj.sed + suma <= obj_pj.sedMax) {
            obj_pj.sed += suma;
        } else {
            obj_pj.sed = obj_pj.sedMax;
        }
        
        reproducirSonido(snd_tomarBebida, false, false);
        
        if (cantInv[i] > 1) {
            cantInv[i]--;
        } else {
            indiceInv[i] = -1;
            tipoInv[i] = "";
            cantInv[i] = 0;
            equipadoInv[i] = false;
            generoInv[i] = -1;
            razaInv[i] = -1;
            seleccionado = -1;
            nombreInv[i] = "Vacío";
        }
        
    } else if (tipoInv[i] == "hechizo") {
        
        var valido = false;
        valido = agregarHechizo(indiceInv[i]);
    
        if (valido) {
            if (cantInv[i] > 1) {
                cantInv[i]--;
            } else {
                indiceInv[i] = -1;
                tipoInv[i] = "";
                cantInv[i] = 0;
                equipadoInv[i] = false;
                generoInv[i] = -1;
                razaInv[i] = -1;
                seleccionado = -1;
                nombreInv[i] = "Vacío";
            }
        }
        
    } else if (tipoInv[i] == "pocion") {
        
        if (indiceInv[i] == 141) {
            
            var sumaSalud = floor(15 * obj_pj.saludMax / 100);
        
            if (obj_pj.salud + sumaSalud <= obj_pj.saludMax) {
                obj_pj.salud += sumaSalud;
            } else {
                obj_pj.salud = obj_pj.saludMax;
            }
            
        } else if (indiceInv[i] == 142) {
        
            if (obj_pj.manaMax > 0) {
                var sumaMana = floor(15 * obj_pj.manaMax / 100);
            
                if (obj_pj.mana + sumaMana <= obj_pj.manaMax) {
                    obj_pj.mana += sumaMana;
                } else {
                    obj_pj.mana = obj_pj.manaMax;
                }
            }
            
        } else if (indiceInv[i] == 143) {
        
            obj_pj.envenenado = false;
            obj_pj.veneno = 0;
        
        } else if (indiceInv[i] == 218) {
			if (obj_pj.dopaAgilidad < obj_pj.maximoDopa)
				obj_pj.dopaAgilidad++
			obj_pj.tiempoDopa = 0
			alarm[7] = 1
		} else if (indiceInv[i] == 219) {
			if (obj_pj.dopaFuerza < obj_pj.maximoDopa)
				obj_pj.dopaFuerza++
			obj_pj.tiempoDopa = 0
			alarm[7] = 1
		} else if (indiceInv[i] == 220) {
			if (claseGuerrera()) {
				if (obj_pj.inmovilizado) {
					
					obj_pj.salud -= floor(obj_pj.salud / 3);                   
	                reproducirSonido(snd_dardoMagico, false, false);   
	                obj_pj.inmovilizado = false;
					var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
				    idINFO.padre = obj_pj.id;
				    idINFO.color = make_color_rgb(211, 90, 211);
				    idINFO.texto = "¡Removido!"; 
				    idINFO.tiempo = 180;
					
			        reproducirSonido(snd_tomarPocion, false, false);
        
			        if (cantInv[i] > 1) {
			            cantInv[i]--;
			        } else {
			            indiceInv[i] = -1;
			            tipoInv[i] = "";
			            cantInv[i] = 0;
			            equipadoInv[i] = false;
			            generoInv[i] = -1;
			            razaInv[i] = -1;
			            seleccionado = -1;
			            nombreInv[i] = "Vacío";
			        }
					
				} else {
					var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	                idINFO.padre = obj_pj.id;
	                idINFO.texto = "¡No estás inmovilizado ni paralizado!"; 
				}
			} else {
				var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                idINFO.padre = obj_pj.id;
                idINFO.texto = "¡Tu clase no puede usar este ítem!"; 
			}
		} else if (indiceInv[i] == 221) {
			if (claseGuerrera()) {
				
				obj_pj.salud -= floor(obj_pj.salud * 0.9);                   
	            reproducirSonido(snd_dardoMagico, false, false);   
				var idEfectoHechizo = instance_create(obj_pj.x, obj_pj.y, obj_invisibilidad);
				idEfectoHechizo.padre = obj_pj.id;
	            obj_pj.invisible = true;
                obj_pj.alarm[5] = 1800;
                                                    
                if (instance_number(obj_persona) > 0) {
                    with (obj_persona) {
                        yaHablo = false;
                    }
                }
					
			    reproducirSonido(snd_tomarPocion, false, false);
        
			    if (cantInv[i] > 1) {
			        cantInv[i]--;
			    } else {
			        indiceInv[i] = -1;
			        tipoInv[i] = "";
			        cantInv[i] = 0;
			        equipadoInv[i] = false;
			        generoInv[i] = -1;
			        razaInv[i] = -1;
			        seleccionado = -1;
			        nombreInv[i] = "Vacío";
			    }
					
			} else {
				var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                idINFO.padre = obj_pj.id;
                idINFO.texto = "¡Tu clase no puede usar este ítem!"; 
			}
		}
        
		if (indiceInv[i] == 141 || indiceInv[i] == 142 || indiceInv[i] == 143 || indiceInv[i] == 218 || indiceInv[i] == 219) {
	        reproducirSonido(snd_tomarPocion, false, false);
        
	        if (cantInv[i] > 1) {
	            cantInv[i]--;
	        } else {
	            indiceInv[i] = -1;
	            tipoInv[i] = "";
	            cantInv[i] = 0;
	            equipadoInv[i] = false;
	            generoInv[i] = -1;
	            razaInv[i] = -1;
	            seleccionado = -1;
	            nombreInv[i] = "Vacío";
	        }
		}
        
    } else if (tipoInv[i] == "barca") {
    
		obj_skills_libres.mostrado = false;
	
        var idINFO = 0;
    
        if (obj_pj.nivel < 25) {
            idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
            idINFO.padre = obj_pj.id;
            idINFO.texto = "¡Nivel menor a 25!";
        } else if (obj_pj.skills[14] < 70) {
            idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
            idINFO.padre = obj_pj.id;
            idINFO.texto = "¡Navegación menor a 70!";
        }
    
        if (obj_pj.skills[14] >= 70 && obj_pj.nivel >= 25) {
        
            movimientoValido = false;
            margen = 32;
                
            if (obj_pj.puedeMoverse) {
            
                switch (obj_pj.direccion) {
                    case 0:
                        with (obj_pj) {
                            if (!place_meeting(x, y + obj_inventario.margen, obj_bloque_basic) && !place_meeting(x, y + obj_inventario.margen, obj_npc_basic)) {
                                obj_inventario.movimientoValido = true;
                            }
                        }
                        break;
                    case 1:
                        with (obj_pj) {
                            if (!place_meeting(x, y - obj_inventario.margen, obj_bloque_basic) && !place_meeting(x, y - obj_inventario.margen, obj_npc_basic)) {
                                obj_inventario.movimientoValido = true;
                            }
                        }
                        break;
                    case 2:
                        with (obj_pj) {
                            if (!place_meeting(x - obj_inventario.margen, y, obj_bloque_basic) && !place_meeting(x - obj_inventario.margen, y, obj_npc_basic)) {
                                obj_inventario.movimientoValido = true;
                            }
                        }
                        break;
                    case 3:
                        with (obj_pj) {
                            if (!place_meeting(x + obj_inventario.margen, y, obj_bloque_basic) && !place_meeting(x + obj_inventario.margen, y, obj_npc_basic)) {
                                obj_inventario.movimientoValido = true;
                            }
                        }
                        break;
                }
            
            }
        
            if (movimientoValido) {
                
                bloqueoAgua = false;
                bloqueoTierra = false;
            
                with (obj_numpad) {
                    instance_destroy();
                }
                
                switch (obj_pj.direccion) {
                    case 0:
                        with (obj_pj) {
                            obj_inventario.bloqueoAgua = place_meeting(x, y + obj_inventario.margen, obj_bloqueo_agua);
                            obj_inventario.bloqueoTierra = place_meeting(x, y + obj_inventario.margen, obj_bloqueo_tierra);
                        }
                        if (obj_pj.navega) {
                            if (bloqueoTierra) {
                                obj_pj.navega = false;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        } else {
                            if (bloqueoAgua) {
                                obj_pj.navega = true;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        }
                        break;
                    case 1:
                        with (obj_pj) {
                            obj_inventario.bloqueoAgua = place_meeting(x, y - obj_inventario.margen, obj_bloqueo_agua);
                            obj_inventario.bloqueoTierra = place_meeting(x, y - obj_inventario.margen, obj_bloqueo_tierra);
                        }
                        if (obj_pj.navega) {
                            if (bloqueoTierra) {
                                obj_pj.navega = false;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        } else {
                            if (bloqueoAgua) {
                                obj_pj.navega = true;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        }
                        break;
                    case 2:
                        with (obj_pj) {
                            obj_inventario.bloqueoAgua = place_meeting(x - obj_inventario.margen, y , obj_bloqueo_agua);
                            obj_inventario.bloqueoTierra = place_meeting(x - obj_inventario.margen, y, obj_bloqueo_tierra);
                        }
                        if (obj_pj.navega) {
                            if (bloqueoTierra) {
                                obj_pj.navega = false;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        } else {
                            if (bloqueoAgua) {
                                obj_pj.navega = true;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        }
                        break;
                    case 3:
                        with (obj_pj) {
                            obj_inventario.bloqueoAgua = place_meeting(x + obj_inventario.margen, y , obj_bloqueo_agua);
                            obj_inventario.bloqueoTierra = place_meeting(x + obj_inventario.margen, y, obj_bloqueo_tierra);
                        }
                        if (obj_pj.navega) {
                            if (bloqueoTierra) {
                                obj_pj.navega = false;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        } else {
                            if (bloqueoAgua) {
                                obj_pj.navega = true;
                                obj_sonido_mar.inicioPartida = false;
                                obj_sonido_mar.alarm[0] = 1;
                            }
                        }
                        break;
                }
            
            }
        
        }
        
    } else if (tipoInv[i] == "runa") {
        
        var idINFO = 0;
    
        if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
        
            if (!obj_pj.muerto) {
                idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                idINFO.padre = obj_pj.id;
                idINFO.texto = "¡Tenés que estar muerto para usar este ítem!";
            } else {
                
                if (obj_pj.roomRuna != -1 && obj_pj.xRuna != -1 && obj_pj.yRuna != -1) {
                    usarRuna();
                    obj_pj.x = obj_pj.xRuna;
                    obj_pj.y = obj_pj.yRuna;
                    obj_pj.alarm[9] = 1;   
                } else {
                    idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                    idINFO.padre = obj_pj.id;
                    idINFO.texto = "¡No tenés asignado un hogar!";
                }
            
            }
            
        } else {
            idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
            idINFO.padre = obj_pj.id;
            idINFO.texto = "¡No podés usar la runa en movimiento!";
        }
        
    } else if (tipoInv[i] == "trabajo") {
		
		obj_skills_libres.mostrado = false;
        if (indiceInv[i] == 157 || indiceInv[i] == 158 || indiceInv[i] == 159) {
        
            if (obj_panel_trabajos.mostrado) {
                obj_panel_trabajos.mostrado = false;
            } else {
            
                switch (indiceInv[i]) {
                    case 157:
                        obj_panel_trabajos.modo = 0;
                        break;
                    case 158:
                        obj_panel_trabajos.modo = 1;
                        break;
                    case 159:
                        obj_panel_trabajos.modo = 2;
                        break;
                }
                
                obj_panel_trabajos.alarm[0] = 1;
                
            }
            
            
        }
		
    }
    
}

keyboard_key_release(ord("U"));
obj_tecla_U.alarm[0] = 2;

