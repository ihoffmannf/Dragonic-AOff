/// @description  Control general

/*

    Ultima tecla:
    vk_down = 0;
    vk_up = 1;
    vk_left = 2;
    vk_right = 3;

*/

var bloqueo = false;

if (puedeMoverse) {
    if (keyboard_check(vk_right)) {
        direccion = 3;
    } else if (keyboard_check(vk_left)) {
        direccion = 2;
    } else if (keyboard_check(vk_up)) {
        direccion = 1;
    } else if (keyboard_check(vk_down)) {
        direccion = 0;
    }
}

if (pasos == 0 && puedeMoverse && !inmovilizado && !meditando) {    


    var sndPaso = -1;

    if (!keyboard_check(vk_left) && !keyboard_check(vk_up) && !keyboard_check(vk_down)) {

        // Derecha
        
        if (!navega) {
            bloqueo = place_meeting(x + 32, y, obj_bloqueo_agua);
            sndPaso = snd_paso;
        } else {
            bloqueo = place_meeting(x + 32, y, obj_bloqueo_tierra);
            sndPaso = snd_barca;
        }
    
        if (
        !place_meeting(x + 32, y, obj_bloque_basic) && 
        !place_meeting(x + 32, y, obj_npc_basic) && 
        !bloqueo
        ) {
        
            if (keyboard_check(vk_right)) {
                xInicio = x;
                // frame = 0;
                alarm[0] = 1;
                x += spd;
                if (!muerto) {
                    reproducirSonido(sndPaso, false, false);
                }
                pasos = 1;
                ultimaTecla = 3;
            } 
        
        }        
        
    } else if (!keyboard_check(vk_right) && !keyboard_check(vk_up) && !keyboard_check(vk_down)) {
    
        // Izquierda
    
        if (!navega) {
            bloqueo = place_meeting(x - 32, y, obj_bloqueo_agua);
            sndPaso = snd_paso;
        } else {
            bloqueo = place_meeting(x - 32, y, obj_bloqueo_tierra);
            sndPaso = snd_barca;
        }
    
        if (
        !place_meeting(x - 32, y, obj_bloque_basic) && 
        !place_meeting(x - 32, y, obj_npc_basic) && 
        !bloqueo
        ) {
    
            if (keyboard_check(vk_left)) {
                xInicio = x;
                // frame = 0;
                alarm[0] = 1;
                x -= spd;
                if (!muerto) {
                    reproducirSonido(sndPaso, false, false);
                }
                pasos = 1;
                ultimaTecla = 2;
            } 
            
        }
    
    } else if (!keyboard_check(vk_right) && !keyboard_check(vk_left) && !keyboard_check(vk_down)) {
        
        // Arriba
        
        if (!navega) {
            bloqueo = place_meeting(x, y - 32, obj_bloqueo_agua);
            sndPaso = snd_paso;
        } else {
            bloqueo = place_meeting(x, y - 32, obj_bloqueo_tierra);
            sndPaso = snd_barca;
        }
    
        if (
        !place_meeting(x, y - 32, obj_bloque_basic) && 
        !place_meeting(x, y - 32, obj_npc_basic) && 
        !bloqueo
        ) {
        
            if (keyboard_check(vk_up)) {
                yInicio = y;
                // frame = 0;
                alarm[0] = 1;
                y -= spd;
                if (!muerto) {
                    reproducirSonido(sndPaso, false, false);
                }
                pasos = 1;
                ultimaTecla = 1;
            } 
            
        }
    
    } else if (!keyboard_check(vk_right) && !keyboard_check(vk_left) && !keyboard_check(vk_up)) {
        
        // Abajo
    
        if (!navega) {
            bloqueo = place_meeting(x, y + 32, obj_bloqueo_agua);
            sndPaso = snd_paso;
        } else {
            bloqueo = place_meeting(x, y + 32, obj_bloqueo_tierra);
            sndPaso = snd_barca;
        }
    
        if (
        !place_meeting(x, y + 32, obj_bloque_basic) && 
        !place_meeting(x, y + 32, obj_npc_basic) && 
        !bloqueo
        ) {
    
            if (keyboard_check(vk_down)) {
                yInicio = y;
                // frame = 0;
                alarm[0] = 1;
                y += spd;
                if (!muerto) {
                    reproducirSonido(sndPaso, false, false);
                }
                pasos = 1;
                ultimaTecla = 0;
            } 
        
        }
    
    }
    
}

switch (ultimaTecla) {
    case 0:    
        if (pasos > 0) {
            if (pasos < pasosMax) {
                y += spd;
                pasos++;
                puedeMoverse = false;
            } else {
                y += spdUltimoPaso;
                y = floor(y);
                pasos = 0;
                puedeMoverse = true;     
            }
        }
        break;        
    case 1:
        if (pasos > 0) {
            if (pasos < pasosMax) {
                y -= spd;
                pasos++;
                puedeMoverse = false;
            } else {
                y -= spdUltimoPaso;
                y = floor(y);
                y++;
                pasos = 0;
                puedeMoverse = true;  
            } 
        }
        break;       
    case 2:    
        if (pasos > 0) {
            if (pasos < pasosMax) {
                x -= spd;
                pasos++;
                puedeMoverse = false;
            } else {
                x -= spdUltimoPaso;
                x = floor(x);
                x++;
                pasos = 0;
                puedeMoverse = true;
            }
        }
        break;        
    case 3:    
        if (pasos > 0) {
            if (pasos < pasosMax) {
                x += spd;
                pasos++;
                puedeMoverse = false;
            } else {
                x += spdUltimoPaso;
                x = floor(x);
                pasos = 0;
                puedeMoverse = true;      
            }
        }
        break;         
}

if (
(keyboard_check(vk_up) && keyboard_check(vk_down)) ||
(keyboard_check(vk_left) && keyboard_check(vk_right)) ||
(keyboard_check(vk_up) && keyboard_check(vk_right)) ||
(keyboard_check(vk_up) && keyboard_check(vk_left)) ||
(keyboard_check(vk_down) && keyboard_check(vk_right)) ||
(keyboard_check(vk_down) && keyboard_check(vk_left))
) {
    puedeMoverse = false;
}

// Opacidad techos

if (!obj_opciones.opcionTechos) {

    if (
    (place_meeting(x, y, obj_techo_basic)) ||
    (place_meeting(x, y - 32, obj_techo_basic))
    ) {
        with (obj_techo_basic) {
            visible = false;
        }
    } else {
        with (obj_techo_basic) {
            visible = true;
        }
    }

} else {

    if (
    (place_meeting(x, y, obj_techo_basic)) ||
    (place_meeting(x, y - 32, obj_techo_basic))
    ) {
    
        with (obj_techo_basic) {
            image_alpha = 0.35;
        }
        
    } else {
    
        with (obj_techo_basic) {
            image_alpha = 1;
        }
        
    }
    
}

// Meditación

if (!meditando) {
    if (obj_tecla_f6.teclaApretada) {
    
        instance_create(x, y, obj_meditacion);
        meditando = true;
        
        if (instance_exists(obj_persona) && !obj_persona.muerto) {
            if (
            (obj_persona.x >= __view_get( e__VW.XView, 0 ) && (obj_persona.x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
            (obj_persona.y >= __view_get( e__VW.YView, 0 ) && (obj_persona.y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
            ) {
                xMeditando = x;
                yMeditando = y;
            } else {
                xMeditando = 0;
                yMeditando = 0;
            }
        } else {
            xMeditando = 0;
            yMeditando = 0;
        }        
        
        if (invisible) {
            with (obj_persona) {
                if (agitando) {
                    alarm[5] = 1;        
                }
            }
        }
        
    }
}

// Deja de trabajar

if (trabajando) { 

    var entra = false;

    if (trabajaMineria && trabajoActual != 154) {
        entra = true;
    }
    
    if (trabajaTala && trabajoActual != 147) {
        entra = true;
    }
    
    if (trabajaPesca && (trabajoActual != 155 && trabajoActual != 156)) {
        entra = true;
    }
    
    if (trabajaFragua && (obj_inventario.seleccionado != 148 && obj_inventario.seleccionado != 149 && obj_inventario.seleccionado != 150)) {
        entra = true;
    }

	var estaEnMovimiento = !puedeMoverse || obj_flecha_abajo.apretada || obj_flecha_arriba.apretada || obj_flecha_izq.apretada || obj_flecha_der.apretada;

    if (estaEnMovimiento || entra) {
            
        trabajaMineria = false;
        trabajaTala = false;
        trabajaFragua = false;
        trabajaPesca = false;
        trabajando = false;
        indiceMineral = -1;
        var idINFO = instance_create(x, y, obj_INFO);
        idINFO.padre = id;
        idINFO.texto = "Dejaste de trabajar";
        alarm[11] = -1;
        
    }

}

if (!invisible) {
    xMeditando = 0;
    yMeditando = 0;
}


/* */
/// Control mouse

var device = -1;

if (
device_mouse_check_button(0, mb_left) ||
device_mouse_check_button(1, mb_left) ||
device_mouse_check_button(2, mb_left) ||
device_mouse_check_button(3, mb_left) ||
device_mouse_check_button(4, mb_left)
) {

    device = elegirDeviceLibre();

    if (device != -1) {
    
        if (device_mouse_check_button_pressed(device, mb_left)) {
        
            obj_control_devices.devicesL[device] = true;
            
            // Ataque con arco / hechizo

            if (
            (device_mouse_x(device) >= __view_get( e__VW.XView, 0 ) && device_mouse_x(device) <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) &&
            (device_mouse_y(device) >= __view_get( e__VW.YView, 0 ) && device_mouse_y(device) <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
            ) {
                obj_hechizos.moviendoHechizo = false;
            }
            
            if (
            !atacaConArco && 
            !atacaConHechizo &&
            (device_mouse_x(device) >= __view_get( e__VW.XView, 0 ) && device_mouse_x(device) <= __view_get( e__VW.XView, 0 ) + 56) &&
            (device_mouse_y(device) >= __view_get( e__VW.YView, 0 ) && device_mouse_y(device) <= __view_get( e__VW.YView, 0 ) + 32)
            ) {
            
                if (obj_gui.panelActivo) {
                    obj_gui.panelActivo = false;
                } else {
                    obj_gui.panelActivo = true;
                }
                
            } else {
            
                if (!muerto) {
            
                    if (
                    atacaConArco && 
                    !meditando &&
                    (device_mouse_x(device) >= __view_get( e__VW.XView, 0 ) && device_mouse_x(device) <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) &&
                    (device_mouse_y(device) >= __view_get( e__VW.YView, 0 ) && device_mouse_y(device) <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
                    ) {
            
                        var idNPCAux = instance_position(device_mouse_x(device), device_mouse_y(device), obj_npc_basic);
                    
                        if (
                        (!position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) ||
                        (idNPCAux != noone && idNPCAux.hostil)
                        ) {
                            
                            // Arco
                        
                            if (flechaEnInv != -1) {
                            
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                
                                    var idINFO = 0;
                                        
                                    if (energia < 20) {
                                        var idINFO = instance_create(x, y, obj_INFO);
                                        idINFO.padre = id;
                                        idINFO.texto = "¡Energía menor a 20!";
                                        alarm[3] = 1;
                                    }
                                
                                    if (obj_inventario.cantInv[flechaEnInv] > 0 && energia >= 20) {
                                    
                                        if (invisible) {
                                            invisible = false;
                                            
                                            with (obj_persona) {
                                                if (agitando) {
                                                    alarm[5] = 1;        
                                                }
                                            }
                                        }
                                    
                                        energia -= 20;
                                    
                                        if (position_meeting(device_mouse_x(device), device_mouse_y(device), obj_npc_basic)) {
                            
                                            var idNPC = instance_position(device_mouse_x(device), device_mouse_y(device), obj_npc_basic);
                                            
                                            if (idNPC.hostil) {
                                                
                                                var valido = true;
                                                
                                                if (idNPC.object_index == obj_persona) {
                                                    if (idNPC.muerto) {
                                                        valido = false;
                                                    }
                                                }
                                                
                                                if (valido && idNPC.object_index == obj_persona) {
                                
                                                    if (obj_mapas_mundo.mapas[room]) {
                                                        valido = false;
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.texto = "¡No podés atacar en una zona segura!";
                                                    }
                                                    
                                                    if (valido) {
                                                    
                                                        if (!obj_pj.pk && !idNPC.pk) {
                                                            if (obj_pj.esArmada) {
                                                                valido = false;
                                                                var idINFO = instance_create(x, y, obj_INFO);
                                                                idINFO.texto = "No podés atacar ciudadanos siendo de la Armada Imperial";
                                                            } else if (obj_seguro.activo) {
                                                                valido = false;
                                                                var idINFO = instance_create(x, y, obj_INFO);
                                                                idINFO.texto = "Desactivá el seguro para atacar ciudadanos";
                                                            } else {
                                                                if (!obj_pj.pk) {
                                                                    if (!idNPC.pk) {
                                                                        obj_pj.pk = true;
                                                                        if (salud > 0) {
                                                                            obj_pj.puntosPK += round(random_range(5, 7));
                                                                            idNPC.yaHablo = false;
                                                                            idNPC.alarm[5] = 1;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    
                                                    }
                                                    
                                                }
                                            
                                                if (valido) {
                                                
                                                    var defendidoConEscudo = false;
                                                
                                                    obj_arma.alarm[0] = 1;
                                                    puedeAtacar = false;
                                                    alarm[1] = 35;
                                                    
                                                    var acerto = true;
                                                    var chances = 0;
                                                    
                                                    if (skills[12] >= 0 && skills[12] <= 10) {
                                                        chances = 4.85;
                                                    } else if (skills[12] >= 11 && skills[12] <= 20) {
                                                        chances = 4.5;
                                                    }  else if (skills[12] >= 21 && skills[12] <= 30) {
                                                        chances = 4.15;
                                                    }  else if (skills[12] >= 31 && skills[12] <= 40) {
                                                        chances = 3.8;
                                                    }  else if (skills[12] >= 41 && skills[12] <= 50) {
                                                        chances = 3.5;
                                                    }  else if (skills[12] >= 51 && skills[12] <= 60) {
                                                        chances = 3.25;
                                                    }  else if (skills[12] >= 61 && skills[12] <= 70) {
                                                        chances = 3;
                                                    }  else if (skills[12] >= 71 && skills[12] <= 80) {
                                                        chances = 2.75;
                                                    }  else if (skills[12] >= 81 && skills[12] <= 90) {
                                                        chances = 2.5;
                                                    }  else if (skills[12] >= 91 && skills[12] <= 100) {
                                                        chances = 2.35;
                                                    }
                                                    
                                                    chances -= obtenerAtributoAgilidadPJ() / 18;
                                                    chances += idNPC.evasion * 0.0085;
                                                    chances = chances / obj_pj.modProbArco;
                                                    
                                                    if (random(10) < chances) {
                                                        acerto = false;
                                                    } else {
                                                        if (idNPC.object_index == obj_persona) {
                                                            if (idNPC.eqEscudo != -1) {
                                                                if (random(20) < chances) {
                                                                    acerto = false;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    
                                                    if (acerto) {
														
														if (obj_pj.flechaActual != 217) {
	                                                        if (skills[12] < skillsNaturales[nivel]) {
	                                                            if (random(10) > 6.5) {
	                                                                obj_skills_libres.mostrado = false;
	                                                                skills[12]++;
	                                                                var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
	                                                                idSubirSkills.indice = 12;
	                                                            }
	                                                        }
														}
                                                    
                                                        with (idNPC) {
															
															if (obj_pj.flechaActual != 217) {
															
																// Flechas comunes
															
	                                                            if (idNPC.object_index == obj_persona) {
	                                                                var dano = calcularDanoFisicoPJ(random_range(obj_pj.danoMin, obj_pj.danoMax), true);
	                                                            } else {
	                                                                var dano = calcularDanoFisicoPJ(random_range(obj_pj.danoMin, obj_pj.danoMax), false);
	                                                            }
	                                                            dano = floor(dano * obj_pj.modDanoLvl);                                            
                                                    
	                                                            if (dano < 1) {
	                                                                dano = 1;
	                                                            }
                                                    
	                                                            idDano = instance_create(idNPC.x, idNPC.y, obj_efecto_dano);
                                                            
	                                                            var expOtorgada = 0;
                                                                
	                                                            if (idNPC.salud > 0) {
	                                                                expOtorgada = floor(idNPC.experiencia / (idNPC.salud / dano));
	                                                            }
                                                            
	                                                            if (idNPC.experiencia - expOtorgada <= 0) {
	                                                                expOtorgada = idNPC.experiencia;
	                                                                idNPC.experiencia = 0;
	                                                            } else {
	                                                                idNPC.experiencia -= expOtorgada;
	                                                            }
                                                            
	                                                            if (idNPC.object_index != obj_persona && (idNPC.domado || idNPC.invocado)) {
	                                                                expOtorgada = 0;
	                                                            }
                                                    
	                                                            idDano.padre = idNPC;
	                                                            idDano.dano = dano;
	                                                            salud -= dano;
                                                            
	                                                            reproducirSonido(snd_flechaAcertada, false, false);
                                                            
	                                                            if (idNPC.object_index == obj_persona) {
	                                                                reproducirSonido(snd_golpeRecibido, false, false);
	                                                            } else {
	                                                                reproducirSonido(snd_golpeANPC, false, false);
	                                                            }
                                                            
	                                                            vibrarPantalla();
                                                            
	                                                            if (salud > 0 && object_index != obj_persona && domado) {
	                                                                for (var i = 0; i < 3; i++) {
	                                                                    if (obj_pj.criaturasHijas[i, 0] == id) {
	                                                                        break;
	                                                                    }
	                                                                }
	                                                                obj_pj.criaturasHijas[i, 2] = salud;
	                                                            }
                                                    
	                                                            if (object_index == obj_persona) {
	                                                                if (salud <= 0) {
	                                                                    if (pk) {
	                                                                        other.criminalesMatados++;
	                                                                    } else {
	                                                                        other.puntosPK = -1;
	                                                                        other.ciudadanosMatados++;
	                                                                    }
	                                                                }
	                                                            }
                                                            
	                                                            if (obj_pj.nivel < obj_pj.nivelMax) {
	                                                                if (obj_pj.experiencia < obj_pj.expLvl[obj_pj.nivel] - expOtorgada) {
	                                                                    obj_pj.experiencia += expOtorgada;
	                                                                } else {
	                                                                    subirNivel();
	                                                                }
	                                                            }
															
															} else {
															
																// Flechas Paralizantes
																
																if (object_index == obj_npc_dragonic) {
		                                                            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
		                                                            idINFO.padre = obj_pj.id;
		                                                            idINFO.texto = "¡Esta criatura es inmune a la parálisis!";
																	reproducirSonido(snd_fallo, false, false);
		                                                        } else {
																	
																	if (obj_pj.skills[12] < obj_pj.skillsNaturales[obj_pj.nivel]) {
			                                                            if (random(10) > 6.5) {
			                                                                obj_skills_libres.mostrado = false;
			                                                                obj_pj.skills[12]++;
			                                                                var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
			                                                                idSubirSkills.indice = 12;
			                                                            }
			                                                        }
																
		                                                            reproducirSonido(snd_flechaAcertada, false, false);
		                                                            vibrarPantalla();
																	
																	if (obj_pj.invisible) {
		                                                                obj_pj.invisible = false;
                                                                
		                                                                with (obj_persona) {
		                                                                    if (agitando) {
		                                                                        alarm[5] = 1;        
		                                                                    }
		                                                                }
		                                                            }
																
		                                                            var idEfectoHechizo = instance_create(x, y, obj_paralizar);
		                                                            idEfectoHechizo.padre = id;
		                                                            reproducirSonido(snd_dardoMagico, false, false);
                                                            
		                                                            if (object_index != obj_persona) {
		                                                                paralizado = true;
		                                                                inmovilizado = false;
		                                                                alarm[4] = 7200; // 2 Minutos
		                                                            } else {
		                                                                alarm[7] = 170;
		                                                                inmovilizado = true;
		                                                                alarm[4] = 1800; // 30 Segundos
		                                                            }                                    
                                                            
		                                                            if (object_index == obj_persona) {
                                                                
		                                                                if (!obj_pj.pk) {
		                                                                    if (!pk) {
		                                                                        obj_pj.pk = true;
		                                                                        if (salud > 0) {
		                                                                            obj_pj.puntosPK += round(random_range(5, 7));
		                                                                            yaHablo = false;
		                                                                            alarm[5] = 1;
		                                                                        }
		                                                                    }
		                                                                }
		                                                                if (!pk && salud <= 0) {
		                                                                    obj_pj.puntosPK = -1;
		                                                                }
		                                                            }
																
																}
															
															}
                                                            
                                                        }
                                                        
                                                    } else {
                                                    
                                                        if (defendidoConEscudo) {
                                                            var idINFO = instance_create(idNPC.x, idNPC.y, obj_INFO);
                                                            idINFO.padre = idNPC;
                                                            idINFO.texto = "¡Defendido con escudo!";
                                                            reproducirSonido(snd_defensaEscudo, false, false);
                                                        } else {
                                                            var idINFO = instance_create(x, y, obj_INFO);
                                                            idINFO.padre = id;
                                                            idINFO.texto = "¡Fallás!";
                                                            reproducirSonido(snd_fallo, false, false);
                                                        }
                                                        idINFO.color = c_red;
                                                        
                                                    }
                                                
                                                }
                                                
                                            }
                                        
                                        } else {
                                            var idINFO = instance_create(x, y, obj_INFO);
                                            idINFO.padre = id;
                                            idINFO.color = make_color_rgb(211, 90, 211);
                                            idINFO.texto = "¡Target inválido!"; 
                                        }
                                        
                                        alarm[3] = 1;
                                    
                                        if (obj_inventario.cantInv[flechaEnInv] > 1) {
                                        
                                            obj_inventario.cantInv[flechaEnInv]--;
                                            break;
                                            
                                        } else if (obj_inventario.cantInv[flechaEnInv] > 0) {
                                                         
                                            obj_inventario.cantInv[flechaEnInv] = 0;
                                            obj_inventario.indiceInv[flechaEnInv] = -1;
                                            obj_inventario.equipadoInv[flechaEnInv] = false;
                                            obj_inventario.tipoInv[flechaEnInv] = "";
                                        
                                            atacaConArco = false;
                                            flechaActual = -1;
                                            flechaEnInv = -1;
                                            
                                            break;
                                            
                                        }
                                    
                                    }
                                                                        
                                }
                                
                            }    
                        
                        }
                        
                    } else if (
                    puedeAtacar &&
                    atacaConHechizo && 
                    !meditando &&
                    (device_mouse_x(device) >= __view_get( e__VW.XView, 0 ) && device_mouse_x(device) <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) &&
                    (device_mouse_y(device)  >= __view_get( e__VW.YView, 0 ) && device_mouse_y(device)  <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
                    ) {
                    
                        // Hechizos
                    
                        if (obj_hechizos.seleccionado != -1) {
                        
                                var lanzo = true;
                            
                                for (var i = 0; i < obj_hechizos.maximoHechizos; i++) {
                                
                                    if (obj_hechizos.indiceHechizos[i] == obj_hechizos.seleccionado) {
                                        
                                        var idINFO = 0;
                                        var valido = true;
                                        
                                        if (clase == 7) {
                                            if (
                                            obj_hechizos.indiceHechizos[i] == 9 || 
                                            obj_hechizos.indiceHechizos[i] == 13 || 
                                            obj_hechizos.indiceHechizos[i] == 10 ||
                                            obj_hechizos.indiceHechizos[i] == 4 ||
                                            obj_hechizos.indiceHechizos[i] == 11 ||
                                            obj_hechizos.indiceHechizos[i] == 16
                                            ) {
                                                if (armaActual != 18 && armaActual != 19 && armaActual != 20) {
                                                    valido = false;
                                                    idINFO = instance_create(x, y, obj_INFO);
                                                    idINFO.padre = id;
                                                    idINFO.texto = "¡Necesitás un báculo para lanzar este hechizo!";
                                                }
                                            }
                                        }
                                        
                                        if (valido) {
                                            if (obj_hechizos.indiceHechizos[i] == 17 || obj_hechizos.indiceHechizos[i] == 18 || obj_hechizos.indiceHechizos[i] == 19) {
                                                if (clase != 5) {
                                                    valido = false;
                                                    idINFO = instance_create(x, y, obj_INFO);
                                                    idINFO.padre = id;
                                                    idINFO.texto = "¡Este hechizo es solo para Druidas!";
                                                } else if (obj_hechizos.indiceHechizos[i] == 17 || obj_hechizos.indiceHechizos[i] == 18) {
													if (armaActual != 227) {
	                                                    valido = false;
	                                                    idINFO = instance_create(x, y, obj_INFO);
	                                                    idINFO.padre = id;
	                                                    idINFO.texto = "¡Necesitás un báculo para lanzar este hechizo!";
	                                                }
												}
                                            }
                                        }
                                        
                                        if (valido) {
                                            if (clase == 7) {
                                                if (
                                                obj_hechizos.indiceHechizos[i] == 4 ||
                                                obj_hechizos.indiceHechizos[i] == 9 ||
                                                obj_hechizos.indiceHechizos[i] == 10 ||
                                                obj_hechizos.indiceHechizos[i] == 11 ||
                                                obj_hechizos.indiceHechizos[i] == 13 ||
                                                obj_hechizos.indiceHechizos[i] == 16
                                                ) {
                                                    if (armaActual != 18 && armaActual != 19 && armaActual != 20) {
                                                        valido = false;
                                                        idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.texto = "¡Necesitás un báculo para lanzar este hechizo!";
                                                    }
                                                }
                                            }
                                        }
                                    
                                        if (valido) {
                                            if (skills[0] < obj_hechizos.skillHechizos[i]) {
                                                idINFO = instance_create(x, y, obj_INFO);
                                                idINFO.padre = id;
                                                idINFO.texto = "¡Magia menor a " + string(obj_hechizos.skillHechizos[i]) + "!";
                                                valido = false;
                                            } else if (mana < obj_hechizos.manaHechizos[i]) {
                                                if (obj_hechizos.tipoHechizos[i] != "invocacion") {
                                                    idINFO = instance_create(x, y, obj_INFO);
                                                    idINFO.padre = id;
                                                    idINFO.texto = "¡Maná menor a " + string(obj_hechizos.manaHechizos[i]) + "!";
                                                    valido = false;
                                                }
                                            } else if (energia < obj_hechizos.energiaHechizos[i]) {
                                                idINFO = instance_create(x, y, obj_INFO);
                                                idINFO.padre = id;
                                                idINFO.texto = "¡Energía menor a " + string(obj_hechizos.energiaHechizos[i]) + "!";
                                                valido = false;
                                            }
                                        }
                                    
                                        if (valido && (mana >= obj_hechizos.manaHechizos[i] || obj_hechizos.tipoHechizos[i] == "invocacion") && energia >= obj_hechizos.energiaHechizos[i] && skills[0] >= obj_hechizos.skillHechizos[i]) {
                                                                    
                                            if (obj_hechizos.tipoHechizos[i] == "negro") {
                                            
                                                if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic)) {
                            
                                                    var idNPC = instance_position(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic);
                                                    
                                                    if (idNPC.hostil) {
                                                
                                                        var valido = true;
                                                
                                                        if (idNPC.object_index == obj_persona) {
                                                            if (idNPC.muerto) {
                                                                valido = false;
                                                            }
                                                        }
                                                        
                                                        if (valido && idNPC.object_index == obj_persona) {
                                                        
                                                            if (obj_mapas_mundo.mapas[room]) {
                                                                valido = false;
                                                                var idINFO = instance_create(x, y, obj_INFO);
                                                                idINFO.texto = "¡No podés atacar en una zona segura!";
                                                            }
                                                    
                                                            if (valido) {
                                                        
                                                                if (!obj_pj.pk && !idNPC.pk) {
                                                                    if (obj_pj.esArmada) {
                                                                        valido = false;
                                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                                        idINFO.texto = "No podés atacar ciudadanos siendo de la Armada Imperial";
                                                                    } else if (obj_seguro.activo) {
                                                                        valido = false;
                                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                                        idINFO.texto = "Desactivá el seguro para atacar ciudadanos";
                                                                    }
                                                                }
                                                            
                                                            }
                                                            
                                                        }
                                                    
                                                        if (valido) {
                                                                                            
                                                            if (obj_hechizos.palabrasMagicasHechizos[i] != "") {
                                                                dicePalabrasMagicas = true;
                                                                palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                                alarm[6] = 180;
                                                            }
                                                        
                                                            if (invisible) {
                                                                invisible = false;
                                                                
                                                                with (obj_persona) {
                                                                    if (agitando) {
                                                                        alarm[5] = 1;        
                                                                    }
                                                                }
                                                            }
                                                        
                                                            if (skills[0] < skillsNaturales[nivel]) {
                                                                if (random(10) > 6.5) {
                                                                    obj_skills_libres.mostrado = false;
                                                                    skills[0]++;
                                                                    var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                                    idSubirSkills.indice = 0;
                                                                }
                                                            }
                                                        
                                                            puedeAtacar = false;
                                                            alarm[1] = intervaloHechizo;
                                                            
                                                            atacaConHechizo = true;
                                                            energia -= obj_hechizos.energiaHechizos[i];
                                                            mana -= obj_hechizos.manaHechizos[i];
                                                            
                                                            var idEfectoHechizo = 0;
                                                            
                                                            switch (obj_hechizos.indiceHechizos[i]) {
                                                                case 5:
                                                                    reproducirSonido(snd_dardoMagico, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_dardo_magico);
                                                                    break;
                                                                case 6:
                                                                    reproducirSonido(snd_dardoMagico, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_flecha_magica);
                                                                    break;
                                                                case 7:
                                                                    reproducirSonido(snd_dardoMagico, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_flecha_electrica);
                                                                    break;
                                                                case 8:
                                                                    reproducirSonido(snd_misilMagico, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_misil_magico);
                                                                    break;
                                                                case 9:
                                                                    reproducirSonido(snd_tormentaDeFuego, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_tormenta_de_fuego);
                                                                    break;
                                                                case 10:
                                                                    reproducirSonido(snd_descargaElectrica, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_descarga_electrica);
                                                                    break;
                                                                case 11:
                                                                    reproducirSonido(snd_apocalipsis, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_apocalipsis);
                                                                    break;
                                                            }
                                                            
                                                            idEfectoHechizo.padre = idNPC;
                                                            
                                                            if (idNPC.object_index == obj_persona) {
                                                                var dano = calcularDanoMagicoPJ(random_range(obj_hechizos.efectoMinHechizos[i], obj_hechizos.efectoMaxHechizos[i]), true, idNPC);
                                                            } else {
                                                                var dano = calcularDanoMagicoPJ(random_range(obj_hechizos.efectoMinHechizos[i], obj_hechizos.efectoMaxHechizos[i]), false, -1);
                                                            }
                                                            
                                                            idDano = instance_create(idNPC.x, idNPC.y, obj_efecto_dano);
                                                            
                                                            var expOtorgada = 0;
                                                            
                                                            if (idNPC.salud > 0) {
                                                                expOtorgada = floor(idNPC.experiencia / (idNPC.salud / dano));
                                                            }
                                                
                                                            if (idNPC.experiencia - expOtorgada <= 0) {
                                                                expOtorgada = idNPC.experiencia;
                                                                idNPC.experiencia = 0;
                                                            } else {
                                                                idNPC.experiencia -= expOtorgada;
                                                            }
                                                            
                                                            if (idNPC.object_index != obj_persona && (idNPC.domado || idNPC.invocado)) {
                                                                expOtorgada = 0;
                                                            }
                                                
                                                            idDano.padre = idNPC;
                                                            idDano.dano = dano;
                                                            idNPC.salud -= dano;
                                                            
                                                            vibrarPantalla();
                                                            
                                                            if (instance_exists(idNPC) && idNPC.salud > 0 && idNPC.object_index != obj_persona && idNPC.domado) {
                                                                for (var i = 0; i < 3; i++) {
                                                                    if (obj_pj.criaturasHijas[i, 0] == idNPC) {
                                                                        break;
                                                                    }
                                                                }
                                                                obj_pj.criaturasHijas[i, 2] = idNPC.salud;
                                                            }
                                                
                                                            if (idNPC.object_index == obj_persona) {
                                                                if (!pk) {
                                                                    if (!idNPC.pk) {
                                                                        pk = true;
                                                                        if (idNPC.salud > 0) {
                                                                            puntosPK += round(random_range(5, 7));
                                                                            idNPC.yaHablo = false;
                                                                            idNPC.alarm[5] = 1;
                                                                        }
                                                                    }
                                                                }
                                                                if (idNPC.salud <= 0) {
                                                                    if (idNPC.pk) {
                                                                        criminalesMatados++;
                                                                    } else {
                                                                        puntosPK = -1;
                                                                        ciudadanosMatados++;
                                                                    }
                                                                }
                                                            }
                                                            
                                                            if (obj_pj.nivel < obj_pj.nivelMax) {
                                                                if (obj_pj.experiencia < obj_pj.expLvl[obj_pj.nivel] - expOtorgada) {
                                                                    obj_pj.experiencia += expOtorgada;
                                                                } else {
                                                                    subirNivel();
                                                                }
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                
                                                } else {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                        lanzo = false;
                                                    } else {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.color = make_color_rgb(211, 90, 211);
                                                        idINFO.texto = "¡Target inválido!"; 
                                                    }
                                                }
                                            
                                            } else if (obj_hechizos.tipoHechizos[i] == "curacion") {
                                            
                                                if (position_meeting(device_mouse_x(device), device_mouse_y(device) , self)) {
                                                
                                                    if (obj_hechizos.palabrasMagicasHechizos[i] != "") {
                                                        dicePalabrasMagicas = true;
                                                        palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                        alarm[6] = 180;
                                                    }
                                                    
                                                    if (invisible) {
                                                        invisible = false;
                                                        
                                                        with (obj_persona) {
                                                            if (agitando) {
                                                                alarm[5] = 1;        
                                                            }
                                                        }
                                                    }
                                            
                                                    if (skills[0] < skillsNaturales[nivel]) {
                                                        if (random(10) > 6.5) {
                                                            obj_skills_libres.mostrado = false;
                                                            skills[0]++;
                                                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                            idSubirSkills.indice = 0;
                                                        }
                                                    }
                                                
                                                    puedeAtacar = false;
                                                    alarm[1] = intervaloHechizo;
                                                    
                                                    atacaConHechizo = true;
                                                    energia -= obj_hechizos.energiaHechizos[i];
                                                    mana -= obj_hechizos.manaHechizos[i];
                                                    
                                                    var idEfectoHechizo = 0;
                                                    
                                                    switch (obj_hechizos.indiceHechizos[i]) {
                                                        case 1:
                                                            reproducirSonido(snd_curarHeridasLeves, false, false);
                                                            idEfectoHechizo = instance_create(x, y, obj_curar_heridas_leves);
                                                            break;
                                                        case 2:
                                                            reproducirSonido(snd_curarHeridasGraves, false, false);
                                                            idEfectoHechizo = instance_create(x, y, obj_curar_heridas_graves);
                                                            break;
                                                    }
                                                    
                                                    idEfectoHechizo.padre = id;
                                                    
                                                    var cura = calcularDanoMagicoPJ(random_range(obj_hechizos.efectoMinHechizos[i], obj_hechizos.efectoMaxHechizos[i]), false, -1);
                                                    idCura = instance_create(x, y - 40, obj_efecto_dano);
                                        
                                                    idCura.padre = id;
                                                    idCura.dano = cura;
                                                    idCura.cura = true;
                                                    
                                                    if (salud <= saludMax - cura) {
                                                        salud += cura;
                                                    } else {
                                                        salud = saludMax;
                                                    }
                                                
                                                } else {
                                                     
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                        lanzo = false;
                                                    } else {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.color = make_color_rgb(211, 90, 211);
                                                        idINFO.texto = "¡Target inválido!"; 
                                                    }
                                                    
                                                }
                                            
                                            } else if (obj_hechizos.tipoHechizos[i] == "paralisis") {
                                        
                                                if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic)) {
                            
                                                    var idNPC = instance_position(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic);
                                                    
                                                    if (idNPC.hostil) {
                                                    
                                                        var valido = true;
                                                        
                                                        if (idNPC.object_index == obj_persona) {
                                                            if (idNPC.muerto) {
                                                                valido = false;
                                                            }
                                                        }
                                                
                                                        if (valido && idNPC.object_index == obj_persona) {
                                                        
                                                            if (obj_mapas_mundo.mapas[room]) {
                                                                valido = false;
                                                                var idINFO = instance_create(x, y, obj_INFO);
                                                                idINFO.texto = "¡No podés atacar en una zona segura!";
                                                            }
                                                            
                                                            if (valido) {
                                                        
                                                                if (!obj_pj.pk && !idNPC.pk) {
                                                                    if (obj_pj.esArmada) {
                                                                        valido = false;
                                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                                        idINFO.texto = "No podés atacar ciudadanos siendo de la Armada Imperial";
                                                                    } else if (obj_seguro.activo) {
                                                                        valido = false;
                                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                                        idINFO.texto = "Desactivá el seguro para atacar ciudadanos";
                                                                    }
                                                                }
                                                            
                                                            }
                                                            
                                                        }
                                                        
                                                        if (idNPC.object_index == obj_npc_dragonic) {
                                                            var idINFO = instance_create(x, y, obj_INFO);
                                                            idINFO.padre = id;
                                                            idINFO.texto = "¡Esta criatura es inmune a este hechizo!";
                                                            valido = false;
                                                        }
                                                        
                                                        if (valido) {
                                                        
                                                            if (obj_hechizos.palabrasMagicasHechizos[i] != "") {
                                                                dicePalabrasMagicas = true;
                                                                palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                                alarm[6] = 180;
                                                            }
                                                        
                                                            if (invisible) {
                                                                invisible = false;
                                                                
                                                                with (obj_persona) {
                                                                    if (agitando) {
                                                                        alarm[5] = 1;        
                                                                    }
                                                                }
                                                            }
                                                        
                                                            if (skills[0] < skillsNaturales[nivel]) {
                                                                if (random(10) > 6.5) {
                                                                    obj_skills_libres.mostrado = false;
                                                                    skills[0]++;
                                                                    var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                                    idSubirSkills.indice = 0;
                                                                }
                                                            }
                                                        
                                                            puedeAtacar = false;
                                                            alarm[1] = intervaloHechizo;
                                                            
                                                            atacaConHechizo = true;
                                                            energia -= obj_hechizos.energiaHechizos[i];
                                                            mana -= obj_hechizos.manaHechizos[i];
                                                            
                                                            var idEfectoHechizo = 0;
                                                            
                                                            switch (obj_hechizos.indiceHechizos[i]) {
                                                                case 12:
                                                                    reproducirSonido(snd_dardoMagico, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_paralizar);
                                                                    break;
                                                                case 13:
                                                                    reproducirSonido(snd_inmovilizar, false, false);
                                                                    idEfectoHechizo = instance_create(idNPC.x, idNPC.y, obj_inmovilizar);
                                                                    break;
                                                            }
                                                            
                                                            idEfectoHechizo.padre = idNPC;
                                                            
                                                            if (idNPC.object_index != obj_persona) {
                                                                if (obj_hechizos.indiceHechizos[i] == 12) {
                                                                    idNPC.paralizado = true;
                                                                    idNPC.inmovilizado = false;
                                                                    idNPC.alarm[4] = 7200; // 2 Minutos
                                                                } else {
                                                                    idNPC.inmovilizado = true;
                                                                    idNPC.paralizado = false;
                                                                    idNPC.alarm[4] = 7200; // 2 Minutos
                                                                }
                                                            } else {
                                                                idNPC.alarm[7] = 170;
                                                                idNPC.inmovilizado = true;
                                                                idNPC.alarm[4] = 1800; // 30 Segundos
                                                            }                                    
                                                            
                                                            if (idNPC.object_index == obj_persona) {
                                                                
                                                                if (!pk) {
                                                                    if (!idNPC.pk) {
                                                                        pk = true;
                                                                        if (idNPC.salud > 0) {
                                                                            puntosPK += round(random_range(5, 7));
                                                                            idNPC.yaHablo = false;
                                                                            idNPC.alarm[5] = 1;
                                                                        }
                                                                    }
                                                                }
                                                                if (!idNPC.pk && idNPC.salud <= 0) {
                                                                    puntosPK = -1;
                                                                }
                                                            }
                                                        
                                                        }
                                                        
                                                    }
                                                
                                                } else {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                        lanzo = false;
                                                    } else {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.color = make_color_rgb(211, 90, 211);
                                                        idINFO.texto = "¡Target inválido!"; 
                                                    }
                                                }
                                                
                                            } else if (obj_hechizos.tipoHechizos[i] == "invisibilidad") {
                                            
                                                if (position_meeting(device_mouse_x(device), device_mouse_y(device) , self)) {
                                                
                                                    dicePalabrasMagicas = false;
                                                    palabrasMagicas = "";
                                                
                                                    if (skills[0] < skillsNaturales[nivel]) {
                                                        if (random(10) > 6.5) {
                                                            obj_skills_libres.mostrado = false;
                                                            skills[0]++;
                                                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                            idSubirSkills.indice = 0;
                                                        }
                                                    }
                                                
                                                    puedeAtacar = false;
                                                    alarm[1] = intervaloHechizo;
                                                    
                                                    atacaConHechizo = true;
                                                    energia -= obj_hechizos.energiaHechizos[i];
                                                    mana -= obj_hechizos.manaHechizos[i];
                                                    
                                                    reproducirSonido(snd_dardoMagico, false, false);
													
													var idEfectoHechizo = instance_create(x, y, obj_invisibilidad);
													idEfectoHechizo.padre = id;
                                                    
                                                    obj_pj.invisible = true;
                                                    obj_pj.alarm[5] = 1800;
                                                    
                                                    if (instance_number(obj_persona) > 0) {
                                                        with (obj_persona) {
                                                            yaHablo = false;
                                                        }
                                                    }
                                                
                                                } else {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                        lanzo = false;
                                                    } else {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.color = make_color_rgb(211, 90, 211);
                                                        idINFO.texto = "¡Target inválido!"; 
                                                    }
                                                }
                                                
                                            } else if (obj_hechizos.tipoHechizos[i] == "curar veneno") {
                                            
                                                if (position_meeting(device_mouse_x(device), device_mouse_y(device) , self)) {
                                                
                                                    if (obj_hechizos.palabrasMagicasHechizos[i] != "") {
                                                        dicePalabrasMagicas = true;
                                                        palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                        alarm[6] = 180;
                                                    }
                                                    
                                                    if (invisible) {
                                                        invisible = false;
                                                        
                                                        with (obj_persona) {
                                                            if (agitando) {
                                                                alarm[5] = 1;        
                                                            }
                                                        }
                                                    }
                                            
                                                    if (skills[0] < skillsNaturales[nivel]) {
                                                        if (random(10) > 6.5) {
                                                            obj_skills_libres.mostrado = false;
                                                            skills[0]++;
                                                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                            idSubirSkills.indice = 0;
                                                        }
                                                    }
                                                
                                                    puedeAtacar = false;
                                                    alarm[1] = intervaloHechizo;
                                                    
                                                    atacaConHechizo = true;
                                                    energia -= obj_hechizos.energiaHechizos[i];
                                                    mana -= obj_hechizos.manaHechizos[i];
                                                    
                                                    var idEfectoHechizo = instance_create(x, y, obj_curar_veneno);
                                                    idEfectoHechizo.padre = id;
                                                    
                                                    reproducirSonido(snd_dardoMagico, false, false);
                                                    
                                                    envenenado = false;
                                                    veneno = 0;
                                                
                                                } else {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                        lanzo = false;
                                                    } else {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.color = make_color_rgb(211, 90, 211);
                                                        idINFO.texto = "¡Target inválido!"; 
                                                    }
                                                }
                                            
                                            } else if (obj_hechizos.tipoHechizos[i] == "remover") {
                                            
                                                if (inmovilizado) {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , self)) {
                                                    
                                                        if (obj_hechizos.palabrasMagicasHechizos[i] != "") {
                                                            dicePalabrasMagicas = true;
                                                            palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                            alarm[6] = 180;
                                                        }
                                                        
                                                        if (invisible) {
                                                            invisible = false;
                                                            
                                                            with (obj_persona) {
                                                                if (agitando) {
                                                                    alarm[5] = 1;        
                                                                }
                                                            }
                                                        }
                                                
                                                        if (skills[0] < skillsNaturales[nivel]) {
                                                            if (random(10) > 6.5) {
                                                                obj_skills_libres.mostrado = false;
                                                                skills[0]++;
                                                                var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                                idSubirSkills.indice = 0;
                                                            }
                                                        }
                                                    
                                                        puedeAtacar = false;
                                                        alarm[1] = intervaloHechizo;
                                                        
                                                        atacaConHechizo = true;
                                                        energia -= obj_hechizos.energiaHechizos[i];
                                                        mana -= obj_hechizos.manaHechizos[i];
                                                        
                                                        reproducirSonido(snd_dardoMagico, false, false);
                                                        
                                                        inmovilizado = false;
                                                    
                                                    } else {
                                                        if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                            lanzo = false;
                                                        } else {
                                                            var idINFO = instance_create(x, y, obj_INFO);
                                                            idINFO.padre = id;
                                                            idINFO.color = make_color_rgb(211, 90, 211);
                                                            idINFO.texto = "¡Target inválido!"; 
                                                        }
                                                    }
                                                } else {
                                                    if (position_meeting(device_mouse_x(device), device_mouse_y(device) , self)) {
                                                        var idINFO = instance_create(x, y, obj_INFO);
                                                        idINFO.padre = id;
                                                        idINFO.texto = "¡No estás inmovilizado ni paralizado!"; 
                                                    }
                                                }
                                            
                                            } else if (obj_hechizos.tipoHechizos[i] == "invocacion") {
                                                
                                                if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
                                                    if (obj_hechizos.indiceHechizos[i] == 19) {
                                                    
                                                        // Invocar mascotas
                                                    
                                                        var validoInvocar = false;
                                                    
                                                        for (var j = 0; j < 3; j++) {
                                                            if (criaturasHijas[j, 1] != -1) {
                                                                validoInvocar = true;
                                                                break;    
                                                            }
                                                        }
                                                    
                                                        if (validoInvocar) {
                                                        
                                                            if (!position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                            
                                                                var res = invocarGuardarMascotas(device);
                                                                            
                                                                if (res == 1) { // Tiene maná e invocó en tierra
                                                                
                                                                    reproducirSonido(snd_logueo, false, false);
                                                                
                                                                    dicePalabrasMagicas = true;
                                                                    palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                                    alarm[6] = 180;
                                                                
                                                                     if (invisible) {
                                                                        invisible = false;
                                                                        
                                                                        with (obj_persona) {
                                                                            if (agitando) {
                                                                                alarm[5] = 1;        
                                                                            }
                                                                        }
                                                                    }
                                                            
                                                                    if (skills[0] < skillsNaturales[nivel]) {
                                                                        if (random(10) > 6.5) {
                                                                            obj_skills_libres.mostrado = false;
                                                                            skills[0]++;
                                                                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                                            idSubirSkills.indice = 0;
                                                                        }
                                                                    }
                                                                
                                                                    puedeAtacar = false;
                                                                    alarm[1] = intervaloHechizo;
                                                                    
                                                                    atacaConHechizo = true;
                                                                    energia -= obj_hechizos.energiaHechizos[i];
                                                                
                                                                }
                                                        
                                                            } else {
                                                                lanzo = false;
                                                            }     
                                                            
                                                        } else {
                                                            var idINFO = instance_create(x, y, obj_INFO);
                                                            idINFO.padre = id;
                                                            idINFO.texto = "¡No domaste ninguna criatura!";
                                                        }  
                                                    
                                                    } else {
                                                                
                                                        if (!position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_area_flechas)) {
                                                    
                                                            if (obj_hechizos.indiceHechizos[i] == 14) {
                                                                // Llamado a la Naturaleza
                                                                var res = invocarCriatura(obj_hechizos.manaHechizos[i], obj_npc_lobo_invocado, 3, device);
                                                            } else if (obj_hechizos.indiceHechizos[i] == 15) {
                                                                // Invocar Zombies
                                                                var res = invocarCriatura(obj_hechizos.manaHechizos[i], obj_npc_zombie_invocado, 3, device);
                                                            } else if (obj_hechizos.indiceHechizos[i] == 16) {
                                                                // Invocar Elemental de Agua
                                                                var res = invocarCriatura(obj_hechizos.manaHechizos[i], obj_npc_ele_agua_invocado, 1, device);
                                                            } else if (obj_hechizos.indiceHechizos[i] == 17) {
                                                                // Invocar Elemental de Tierra
                                                                var res = invocarCriatura(obj_hechizos.manaHechizos[i], obj_npc_ele_tierra_invocado, 1, device);
                                                            } else if (obj_hechizos.indiceHechizos[i] == 18) {
                                                                // Invocar Elemental de Fuego
                                                                var res = invocarCriatura(obj_hechizos.manaHechizos[i], obj_npc_ele_fuego_invocado, 1, device);
                                                            }
                                                            
                                                            if (res) { // Tiene maná e invocó en tierra
                                                                                  
                                                                reproducirSonido(snd_logueo, false, false);
                                                                                         
                                                                dicePalabrasMagicas = true;
                                                                palabrasMagicas = obj_hechizos.palabrasMagicasHechizos[i];
                                                                alarm[6] = 180;
                                                            
                                                                 if (invisible) {
                                                                    invisible = false;
                                                                    
                                                                    with (obj_persona) {
                                                                        if (agitando) {
                                                                            alarm[5] = 1;        
                                                                        }
                                                                    }
                                                                }
                                                        
                                                                if (skills[0] < skillsNaturales[nivel]) {
                                                                    if (random(10) > 6.5) {
                                                                        obj_skills_libres.mostrado = false;
                                                                        skills[0]++;
                                                                        var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                                                        idSubirSkills.indice = 0;
                                                                    }
                                                                }
                                                            
                                                                puedeAtacar = false;
                                                                alarm[1] = intervaloHechizo;
                                                                
                                                                atacaConHechizo = true;
                                                                energia -= obj_hechizos.energiaHechizos[i];
                                                                
                                                            }
                                                        
                                                        } else {
                                                            lanzo = false;
                                                        }
                                                        
                                                    }
                                                    
                                                } else {
                                                    var idINFO = instance_create(x, y, obj_INFO);
                                                    idINFO.padre = id;
                                                    idINFO.texto = "¡No podés invocar criaturas en movimiento!";
                                                }
                                            }
                                        
                                        }
                                        
                                        break;
                                        
                                    }
                                    
                                }
                            
                                if (lanzo) {
                                    alarm[3] = 1;
                                }
                            
                        }    
                    } else {
                        
                        // Muestra la vida del NPC
                        
                        if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic)) {
                        
                            var idNPC = instance_position(device_mouse_x(device), device_mouse_y(device) , obj_npc_basic);
                            
                            var valido = true;
                            
                            if (instance_number(obj_persona) > 0) {
                                if (idNPC.object_index != obj_persona.object_index) {
                                    valido = true;
                                } else {
                                    valido = false;
                                }
                            }
                            
                            if (idNPC.hostil && valido) {
                            
                                var idINFO = instance_create(idNPC.x, idNPC.y, obj_INFO);
                                idINFO.padre = idNPC;
                                if (idNPC.domado) {
                                    idINFO.texto = "(Mascota) " + idNPC.nombre + " - " + string(idNPC.salud) + "/" + string(idNPC.saludMax);
                                } else if (idNPC.invocado) {
                                    idINFO.texto = "(Invocado) " + idNPC.nombre + " - " + string(idNPC.salud) + "/" + string(idNPC.saludMax);
                                } else {
                                    idINFO.texto = idNPC.nombre + " - " + string(idNPC.salud) + "/" + string(idNPC.saludMax);
                                }
                                idINFO.limite = 3;
                                idINFO.color = c_orange;
                            
                            }
                        
                        } else if (
                        (puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) &&
                        (trabajoActual == 155 || trabajoActual == 156) &&
                        tile_layer_find(10000000, device_mouse_x(device), device_mouse_y(device) ) == -1
                        ) {
                        
                            // Hay agua... trabajo
                            
                            if (trabajoEquipado) {
                                if (trabajoEnInv != -1) {
                                
                                    var valido = false;
									
									if (navega) {
										if (distance_to_point(device_mouse_x(device), device_mouse_y(device)) <= 32)
											valido = true
									} else {
		                                if (position_meeting(device_mouse_x(device), device_mouse_y(device), obj_bloqueo_agua)) {
		                                    valido = true;
		                                }
			                            if (!valido)
			                                valido = hayAguaEn(x, y);
			                            if (!valido)
			                                valido = hayAguaEn(x - 32, y);
			                            if (!valido)
			                                valido = hayAguaEn(x - 32, y);
			                            if (!valido)
			                                valido = hayAguaEn(x, y - 32);
			                            if (!valido)
			                                valido = hayAguaEn(x - 32, y + 32);
									}
                                
                                    if (valido) {
                                    
                                        if (
                                        (device_mouse_x(device) <= x + 32 && device_mouse_x(device) >= x - 32) &&
                                        (device_mouse_y(device)  <= y + 32 && device_mouse_y(device)  >= y - 32)
                                        ) {
                                        
                                            posPescaX = x;
                                            posPescaY = y;
                                        
                                            activo = true;
                                            trabajaMineria = false;
                                            trabajaFragua = false;
                                            trabajaTala = false;
                                            trabajaPesca = true;
                                            trabajando = true;
                                            
											obj_skills_libres.mostrado = false;
											
                                            var idINFO = instance_create(x, y, obj_INFO);
                                            idINFO.texto = "Trabajando";
                                            idINFO.padre = id;
                                            
                                            if (trabajoActual == 155) {
                                                alarm[11] = 240;
                                            } else if (trabajoActual == 156) {
                                                alarm[11] = 180;
                                            }
                                            
                                        }
                                        
                                    }
                                }   
                            }
                            
                        } else {
                            if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_item)) {
                                var idItem = instance_position(device_mouse_x(device), device_mouse_y(device) , obj_item);
                                var idINFO = instance_create(idItem.x, idItem.y, obj_INFO);
                                idINFO.texto = nombreItem(idItem.indice) + " (" + string(idItem.cantidad) + ")";
                                idINFO.padre = idItem;
                            } else if (position_meeting(device_mouse_x(device), device_mouse_y(device) , obj_oro)) {
                                var idOro = instance_position(device_mouse_x(device), device_mouse_y(device) , obj_oro);
                                var idINFO = instance_create(idOro.x, idOro.y, obj_INFO);
                                idINFO.texto = "Monedas de oro (" + string(idOro.valor) + ")";
                                idINFO.padre = idOro;
                            }
                        }
                        
                    }
                
                }
            
            }
            
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}

/* */
/*  */
