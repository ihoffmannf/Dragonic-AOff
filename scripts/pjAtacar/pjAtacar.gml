// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pjAtacar(){
with(obj_pj){
	if (!muerto && !meditando) {
    
	    if (puedeAtacar) {
	        if (armaActual != -1) {
            
	            // Combate con armas
            
	            if (armaActual >= 0 && armaActual <= 17) {
                
	                if (energia < 12) {
	                    var idINFO = instance_create(x, y, obj_INFO);
	                    idINFO.padre = id;
	                    idINFO.texto = "¡Energía menor a 12!";
	                }
                
	                if (energia >= 12) {
                        
	                    if (invisible) {
	                        invisible = false;
                            
	                        with (obj_persona) {
	                            if (agitando) {
	                                alarm[5] = 1;        
	                            }
	                        }
	                    }
            
	                    var acerto = false;
	                    var idNPC = -1;
                        
	                    switch (direccion) {
	                        case 0:
	                            if (place_meeting(x, y + 32, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x, y + 32, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 1:
	                            if (place_meeting(x, y - 32, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x, y - 32, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 2:
	                            if (place_meeting(x - 32, y, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x - 32, y, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 3:
	                            if (place_meeting(x + 32, y, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x + 32, y, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                    }
                        
	                    if (idNPC == -1) {
	                        acerto = false;
	                    } else if (!idNPC.hostil) {
	                        acerto = false;
	                    }
                        
	                    if (acerto) {
	                        if (idNPC.object_index == obj_persona) {
	                            if (idNPC.muerto) {
	                                acerto = false;
	                            }
	                        }
	                    }
                        
	                    if (acerto) {
                            
	                        var valido = true;
                            
	                        if (idNPC.object_index == obj_persona) {
                                
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
                        
	                    if (acerto && valido) {
                        
	                        defendidoConEscudo = false;
                                
	                        if (acerto) {
                        
	                            var chances = 0;
                                
	                            if (skills[2] >= 0 && skills[2] <= 10) {
	                                chances = 4.85;
	                            } else if (skills[2] >= 11 && skills[2] <= 20) {
	                                chances = 4.5;
	                            }  else if (skills[2] >= 21 && skills[2] <= 30) {
	                                chances = 4.15;
	                            }  else if (skills[2] >= 31 && skills[2] <= 40) {
	                                chances = 3.8;
	                            }  else if (skills[2] >= 41 && skills[2] <= 50) {
	                                chances = 3.5;
	                            }  else if (skills[2] >= 51 && skills[2] <= 60) {
	                                chances = 3.25;
	                            }  else if (skills[2] >= 61 && skills[2] <= 70) {
	                                chances = 3;
	                            }  else if (skills[2] >= 71 && skills[2] <= 80) {
	                                chances = 2.75;
	                            }  else if (skills[2] >= 81 && skills[2] <= 90) {
	                                chances = 2.5;
	                            }  else if (skills[2] >= 91 && skills[2] <= 100) {
	                                chances = 2.35;
	                            } 
                                
	                            chances -= obtenerAtributoAgilidadPJ() / 18;
	                            chances += idNPC.evasion * 0.0085;
	                            chances = chances / obj_pj.modProbCuerpoACuerpo;
                                
	                            if (random(10) < chances) {
	                                acerto = false;
	                            } else {
	                                if (idNPC.object_index == obj_persona) {
	                                    if (idNPC.eqEscudo != -1) {
	                                        if (random(20) < chances) {
	                                            acerto = false;
	                                            defendidoConEscudo = true;
	                                        }
	                                    }
	                                }
	                            }
                            
	                        }
                            
	                        obj_arma.alarm[0] = 1;
	                        alarm[1] = intervaloGolpe;
                            
	                        if (energia >= 12) {
	                            energia -= 12;
	                        } else {
	                            energia = 0;
	                        }
                            
	                        if (acerto) {
                            
	                            with (idNPC) {
                                
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
	                                idDano.apunala = false;
									
									if (obj_pj.armaActual >= 0 && obj_pj.armaActual <= 7 && (obj_pj.clase == 1 || (obj_pj.clase == 2 && obj_pj.skills[4] >= 10))) {
										dano = round(dano * 1.25);
									}
                                    
	                                if (obj_pj.skills[4] >= 10 || obj_pj.clase == 1) {
                                    
	                                    if (obj_pj.armaActual >= 0 && obj_pj.armaActual <= 7) {
                                        
	                                        var chancesApu = 0;
                            
	                                        if (obj_pj.skills[4] >= 0 && obj_pj.skills[4] <= 10) {
	                                            chancesApu = 6.75;
	                                        } else if (obj_pj.skills[4] >= 11 && obj_pj.skills[4] <= 20) {
	                                            chancesApu = 6.55;
	                                        }  else if (obj_pj.skills[4] >= 21 && obj_pj.skills[4] <= 30) {
	                                            chancesApu = 6.5;
	                                        }  else if (obj_pj.skills[4] >= 31 && obj_pj.skills[4] <= 40) {
	                                            chancesApu = 6.4;
	                                        }  else if (obj_pj.skills[4] >= 41 && obj_pj.skills[4] <= 50) {
	                                            chancesApu = 6.25;
	                                        }  else if (obj_pj.skills[4] >= 51 && obj_pj.skills[4] <= 60) {
	                                            chancesApu = 6.15;
	                                        }  else if (obj_pj.skills[4] >= 61 && obj_pj.skills[4] <= 70) {
	                                            chancesApu = 6;
	                                        }  else if (obj_pj.skills[4] >= 71 && obj_pj.skills[4] <= 80) {
	                                            chancesApu = 5.95;
	                                        }  else if (obj_pj.skills[4] >= 81 && obj_pj.skills[4] <= 90) {
	                                            chancesApu = 5.8;
	                                        }  else if (obj_pj.skills[4] >= 91 && obj_pj.skills[4] <= 100) {
	                                            chancesApu = 5.75;
	                                        } 
                                            
	                                        if (obj_pj.clase == 1) {
	                                            chancesApu -= 1.5;
	                                        } else if (obj_pj.clase == 2) {
	                                            chancesApu -= 0.5;
	                                        }
                                            
	                                        if (random(7.5) > chancesApu) {
	                                            dano = round(dano * 3.4);
	                                            idDano.apunala = true;
	                                        }
                                        
	                                    }
                                        
	                                }
                                    
	                                if (obj_pj.armaActual >= 0 && obj_pj.armaActual <= 7) {
	                                    if (obj_pj.clase == 1 || obj_pj.skills[4] >= 10) {
	                                        if (obj_pj.skills[4] < obj_pj.skillsNaturales[obj_pj.nivel]) {
	                                            if (random(10) > 6.5) {
	                                                obj_skills_libres.mostrado = false;
	                                                obj_pj.skills[4]++;
	                                                var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
	                                                idSubirSkills.indice = 4;
	                                            }
	                                        }
	                                    }    
	                                }                                
                                    
	                                if (obj_pj.skills[2] < obj_pj.skillsNaturales[obj_pj.nivel]) {
	                                    if (random(10) > 6.5) {
	                                        obj_skills_libres.mostrado = false;
	                                        obj_pj.skills[2]++;
	                                        var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
	                                        idSubirSkills.indice = 2;
	                                    }
	                                }
                                    
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
                                    
	                                if (idNPC.object_index == obj_persona) {
	                                    reproducirSonido(snd_golpeRecibido, false, false);
	                                } else {
	                                    reproducirSonido(snd_golpeANPC, false, false);
	                                }
                                    
	                                vibrarPantalla();
                                    
	                                if (instance_exists(idNPC) && idNPC.salud > 0 && idNPC.object_index != obj_persona && idNPC.domado) {
	                                    for (var i = 0; i < 3; i++) {
	                                        if (obj_pj.criaturasHijas[i, 0] == idNPC) {
	                                            break;
	                                        }
	                                    }
	                                    obj_pj.criaturasHijas[i, 2] = idNPC.salud;
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
                                    
	                            }
                                
	                        } else if (idNPC != -1) {
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
                
	            }
                
	        } else {
            
	            // Combate sin armas
                
	                if (energia < 12) {
	                    var idINFO = instance_create(x, y, obj_INFO);
	                    idINFO.padre = id;
	                    idINFO.texto = "¡Energía menor a 12!";
	                }
                
	                if (energia >= 12) {
                        
	                    if (invisible) {
	                        invisible = false;
                            
	                        with (obj_persona) {
	                            if (agitando) {
	                                alarm[5] = 1;        
	                            }
	                        }
	                    }
            
	                    var acerto = false;
	                    var idNPC = -1;
                        
	                    switch (direccion) {
	                        case 0:
	                            if (place_meeting(x, y + 32, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x, y + 32, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 1:
	                            if (place_meeting(x, y - 32, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x, y - 32, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 2:
	                            if (place_meeting(x - 32, y, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x - 32, y, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                        case 3:
	                            if (place_meeting(x + 32, y, obj_npc_basic)) {
                                
	                                idNPC = instance_place(x + 32, y, obj_npc_basic);
	                                acerto = true;
                                    
	                            }
	                            break;
	                    }
                        
	                    if (idNPC == -1) {
	                        acerto = false;
	                    } else if (!idNPC.hostil) {
	                        acerto = false;
	                    }
                        
	                    if (acerto) {
	                        if (idNPC.object_index == obj_persona) {
	                            if (idNPC.muerto) {
	                                acerto = false;
	                            }
	                        }
	                    }
                        
	                    if (acerto) {
                            
	                        var valido = true;
                            
	                        if (idNPC.object_index == obj_persona) {
                                
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
                        
	                    if (acerto && valido) {
                        
	                        defendidoConEscudo = false;
                        
	                        if (acerto) {
                        
	                            var chances = 0;
                                
	                            if (skills[13] >= 0 && skills[13] <= 10) {
	                                chances = 4.85;
	                            } else if (skills[13] >= 11 && skills[13] <= 20) {
	                                chances = 4.5;
	                            }  else if (skills[13] >= 21 && skills[13] <= 30) {
	                                chances = 4.15;
	                            }  else if (skills[13] >= 31 && skills[13] <= 40) {
	                                chances = 3.8;
	                            }  else if (skills[13] >= 41 && skills[13] <= 50) {
	                                chances = 3.5;
	                            }  else if (skills[13] >= 51 && skills[13] <= 60) {
	                                chances = 3.25;
	                            }  else if (skills[13] >= 61 && skills[13] <= 70) {
	                                chances = 3;
	                            }  else if (skills[13] >= 71 && skills[13] <= 80) {
	                                chances = 2.75;
	                            }  else if (skills[13] >= 81 && skills[13] <= 90) {
	                                chances = 2.5;
	                            }  else if (skills[13] >= 91 && skills[13] <= 100) {
	                                chances = 2.35;
	                            } 
                                
	                            chances -= obtenerAtributoAgilidadPJ() / 18;
	                            chances += idNPC.evasion * 0.0085;
	                            chances = chances / obj_pj.modProbCuerpoACuerpo;
                                
	                            if (random(10) < chances) {
	                                acerto = false;
	                            } else {
	                                if (idNPC.object_index == obj_persona) {
	                                    if (idNPC.eqEscudo != -1) {
	                                        if (random(20) < chances) {
	                                            acerto = false;
	                                            defendidoConEscudo = true;
	                                        }
	                                    }
	                                }
	                            }
                            
	                        }
                            
	                        obj_arma.alarm[0] = 1;
	                        alarm[1] = intervaloGolpe;
                            
	                        if (energia >= 12) {
	                            energia -= 12;
	                        } else {
	                            energia = 0;
	                        }
                            
	                        if (acerto) {
                            
	                            with (idNPC) {
                                
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
                                    
	                                if (obj_pj.skills[13] < obj_pj.skillsNaturales[obj_pj.nivel]) {
	                                    if (random(10) > 6.5) {
	                                        obj_skills_libres.mostrado = false;
	                                        obj_pj.skills[13]++;
	                                        var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
	                                        idSubirSkills.indice = 13;
	                                    }
	                                }
                                    
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
                                    
	                                if (idNPC.object_index == obj_persona) {
	                                    reproducirSonido(snd_golpeRecibido, false, false);
	                                } else {
	                                    reproducirSonido(snd_golpeANPC, false, false);
	                                }
                                    
	                                vibrarPantalla();
                                    
	                                if (instance_exists(idNPC) && idNPC.salud > 0 && idNPC.object_index != obj_persona && idNPC.domado) {
	                                    for (var i = 0; i < 3; i++) {
	                                        if (obj_pj.criaturasHijas[i, 0] == idNPC) {
	                                            break;
	                                        }
	                                    }
	                                    obj_pj.criaturasHijas[i, 2] = idNPC.salud;
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
                                    
	                            }
	                        } else if (idNPC != -1) {
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
              
	        }
	    }
    
	}
    
	obj_tecla_ctrl.teclaApretada = false;
	obj_tecla_ctrl.alarm[0] = 2;
    
	}
}