/// @description  Ataque a PJ / NPCs (Si es mascota)
/// @param Si es mascota

if (!domado) {
    if (target == -1 || target == obj_pj) {
            
        ataca = false;
        
        if (!obj_pj.muerto && !paralizado) {
            
            switch (direccion) {
                case 0:
                    if (place_meeting(x, y + 32, obj_pj)) {
                        ataca = true;
                    }
                    break;
                case 1:
                    if (place_meeting(x, y - 32, obj_pj)) {
                        ataca = true;
                    }
                    break;
                case 2:
                    if (place_meeting(x - 32, y, obj_pj)) {
                        ataca = true;
                    }
                    break;
                case 3:
                    if (place_meeting(x + 32, y, obj_pj)) {
                        ataca = true;
                    }
                    break;
            }
        
        }
        
        // Blanco para mascotas / invocaciones
                
        if (ataca) {
            for (var i = 0; i < 3; i++) {
                if (obj_pj.criaturasHijas[i, 0] != -1) {
                    with (obj_pj.criaturasHijas[i, 0]) {
                        targetNPC = other.id;
                    }
                }
                if (obj_pj.criaturasInvocadas[i] != -1) {
                    with (obj_pj.criaturasInvocadas[i]) {
                        targetNPC = other.id;
                    }
                }
            }
        }
        
        // Evasion escudo
        
        if (ataca) {
        
            if (obj_pj.escudoEnInv != -1 && obj_pj.escudoActual != -1) {
            
                var chancesEscudos = 0;
                                        
                if (obj_pj.skills[6] >= 0 && obj_pj.skills[6] <= 10) {
                    chancesEscudos = 9;
                } else if (obj_pj.skills[6] >= 11 && obj_pj.skills[6] <= 20) {
                    chancesEscudos = 8.85;
                }  else if (obj_pj.skills[6] >= 21 && obj_pj.skills[6] <= 30) {
                    chancesEscudos = 8.75;
                }  else if (obj_pj.skills[6] >= 31 && obj_pj.skills[6] <= 40) {
                    chancesEscudos = 8.55;
                }  else if (obj_pj.skills[6] >= 41 && obj_pj.skills[6] <= 50) {
                    chancesEscudos = 8.35;
                }  else if (obj_pj.skills[6] >= 51 && obj_pj.skills[6] <= 60) {
                    chancesEscudos = 8.20;
                }  else if (obj_pj.skills[6] >= 61 && obj_pj.skills[6] <= 70) {
                    chancesEscudos = 8.10;
                }  else if (obj_pj.skills[6] >= 71 && obj_pj.skills[6] <= 80) {
                    chancesEscudos = 8;
                }  else if (obj_pj.skills[6] >= 81 && obj_pj.skills[6] <= 90) {
                    chancesEscudos = 7.5;
                }  else if (obj_pj.skills[6] >= 91 && obj_pj.skills[6] <= 100) {
                    chancesEscudos = 7.25;
                } 
            
                chancesEscudos += evasion * 0.01;
                
                var modAgilidadParaEscu = obtenerAtributoAgilidadPJ() / 22;
                
                chancesEscudos -= modAgilidadParaEscu;
                chancesEscudos -= obj_pj.modEvasionEscu;
                
                if (random(10) > chancesEscudos) {
                
                    ataca = false;
                    
                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                    idINFO.padre = obj_pj.id;
                    idINFO.texto = "¡Defendido con escudo!";
                    idINFO.color = c_red;
                
                    reproducirSonido(snd_defensaEscudo, false, false);
                        
                    if (obj_pj.skills[6] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                        if (random(10) > 5) {
                            obj_skills_libres.mostrado = false;
                            obj_pj.skills[6]++;
                            var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                            idSubirSkills.indice = 6;
                        }
                    }
                    
                }
            
            }
        
        }
        
        // Evasion
        
        if (ataca) {
        
            var chancesTacticas = 0;
                                    
            if (obj_pj.skills[1] >= 0 && obj_pj.skills[1] <= 10) {
                chancesTacticas = 9;
            } else if (obj_pj.skills[1] >= 11 && obj_pj.skills[1] <= 20) {
                chancesTacticas = 8.85;
            }  else if (obj_pj.skills[1] >= 21 && obj_pj.skills[1] <= 30) {
                chancesTacticas = 8.75;
            }  else if (obj_pj.skills[1] >= 31 && obj_pj.skills[1] <= 40) {
                chancesTacticas = 8.55;
            }  else if (obj_pj.skills[1] >= 41 && obj_pj.skills[1] <= 50) {
                chancesTacticas = 8.35;
            }  else if (obj_pj.skills[1] >= 51 && obj_pj.skills[1] <= 60) {
                chancesTacticas = 8.20;
            }  else if (obj_pj.skills[1] >= 61 && obj_pj.skills[1] <= 70) {
                chancesTacticas = 8.10;
            }  else if (obj_pj.skills[1] >= 71 && obj_pj.skills[1] <= 80) {
                chancesTacticas = 8;
            }  else if (obj_pj.skills[1] >= 81 && obj_pj.skills[1] <= 90) {
                chancesTacticas = 7.5;
            }  else if (obj_pj.skills[1] >= 91 && obj_pj.skills[1] <= 100) {
                chancesTacticas = 7.25;
            } 
            
            chancesTacticas += evasion * 0.01;
            
            var modAgilidadParaTacticas = obtenerAtributoAgilidadPJ() / 22;
            
            chancesTacticas -= modAgilidadParaTacticas;
            chancesTacticas -= obj_pj.modEvasion;
            
            if (random(10) > chancesTacticas) {
            
                ataca = false;
                
                var idINFO = instance_create(x, y + 9, obj_INFO);
                idINFO.padre = id;
                idINFO.texto = "¡Falla!";
                idINFO.color = c_red;
                
                if (obj_pj.skills[1] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                    if (random(10) > 5) {
                        obj_skills_libres.mostrado = false;
                        obj_pj.skills[1]++;
                        var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                        idSubirSkills.indice = 1;
                    }
                }
                
            }
        
        }
        
        if (ataca) {
        
            var dano = round(random_range(danoMeleeMin, danoMeleeMax));
            var danoTotal = calcularDanoFisicoNPC(dano);
            
            idDano = instance_create(obj_pj.x, obj_pj.y - 41, obj_efecto_dano);
            idDano.dano = danoTotal;
            idDano.padre = obj_pj.id;
            
            reproducirSonido(snd_golpeRecibido, false, false);
            vibrarPantalla();   
            
            if (obj_pj.salud - danoTotal >= 1) {
                obj_pj.salud -= danoTotal;
            } else {
                muertePJ();
            }
            
        }
    
    }
} else {

    if (targetNPC != -1) {
    
        // Ataca NPCs
    
        var ataca = true;
        
        if (distance_to_object(targetNPC) > 250) {
            ataca = false;
        }
        
        if (ataca) {
        
            var chances = 7.25;
            chances -= targetNPC.evasion * 0.01;
            chances += evasion * 0.01;
            
            if (random(10) > chances) {
            
                ataca = false;
                
                var idINFO = instance_create(x, y + 9, obj_INFO);
                idINFO.padre = id;
                idINFO.texto = "¡Falla!";
                idINFO.color = c_red;
                
            }
        
        }
        
        if (ataca) {
        
            var dano = round(random_range(danoMeleeMin, danoMeleeMax) * 1.25);
            
            idDano = instance_create(targetNPC.x, targetNPC.y - 41, obj_efecto_dano);
            idDano.dano = dano;
            idDano.padre = targetNPC.id;
            
            var expOtorgada = 0;
                                                
            if (targetNPC.salud > 0) {
                expOtorgada = floor(targetNPC.experiencia / (targetNPC.salud / dano));
            }
                                 
            if (targetNPC.experiencia - expOtorgada <= 0) {
                expOtorgada = targetNPC.experiencia;
                targetNPC.experiencia = 0;
            } else {
                targetNPC.experiencia -= expOtorgada;
            }

            if (obj_pj.nivel < obj_pj.nivelMax) {
                if (obj_pj.experiencia < obj_pj.expLvl[obj_pj.nivel] - expOtorgada) {
                    obj_pj.experiencia += expOtorgada;
                } else {
                    subirNivel();
                }
            }
            
            reproducirSonido(snd_golpeANPC, false, false);
                     
            targetNPC.salud -= dano;
            
        }
        
    }
    
}

alarm[2] = intervaloAtaque;

/// Ataque a Persona

if (!domado && target != -1 && personaRoom != -1 && instance_exists(personaRoom) && target == personaRoom) {
        
    ataca = false;
    
    if (!personaRoom.muerto && !paralizado) {
        
        switch (direccion) {
            case 0:
                if (place_meeting(x, y + 32, personaRoom)) {
                    ataca = true;
                }
                break;
            case 1:
                if (place_meeting(x, y - 32, personaRoom)) {
                    ataca = true;
                }
                break;
            case 2:
                if (place_meeting(x - 32, y, personaRoom)) {
                    ataca = true;
                }
                break;
            case 3:
                if (place_meeting(x + 32, y, personaRoom)) {
                    ataca = true;
                }
                break;
        }
    
    }
    
    // Evasion escudo

    if (ataca) {
    
        if (personaRoom.eqEscudo != -1) {
        
            var chancesEscudos = 0;
                                    
            if (obj_pj.skills[6] >= 0 && obj_pj.skills[6] <= 10) {
                chancesEscudos = 9;
            } else if (obj_pj.skills[6] >= 11 && obj_pj.skills[6] <= 20) {
                chancesEscudos = 8.85;
            }  else if (obj_pj.skills[6] >= 21 && obj_pj.skills[6] <= 30) {
                chancesEscudos = 8.75;
            }  else if (obj_pj.skills[6] >= 31 && obj_pj.skills[6] <= 40) {
                chancesEscudos = 8.55;
            }  else if (obj_pj.skills[6] >= 41 && obj_pj.skills[6] <= 50) {
                chancesEscudos = 8.35;
            }  else if (obj_pj.skills[6] >= 51 && obj_pj.skills[6] <= 60) {
                chancesEscudos = 8.20;
            }  else if (obj_pj.skills[6] >= 61 && obj_pj.skills[6] <= 70) {
                chancesEscudos = 8.10;
            }  else if (obj_pj.skills[6] >= 71 && obj_pj.skills[6] <= 80) {
                chancesEscudos = 8;
            }  else if (obj_pj.skills[6] >= 81 && obj_pj.skills[6] <= 90) {
                chancesEscudos = 7.5;
            }  else if (obj_pj.skills[6] >= 91 && obj_pj.skills[6] <= 100) {
                chancesEscudos = 7.25;
            } 
        
            chancesEscudos += evasion * 0.01;
            
            if (random(10) > chancesEscudos) {
            
                ataca = false;
                
                var idINFO = instance_create(personaRoom.x, personaRoom.y, obj_INFO);
                idINFO.padre = personaRoom;
                idINFO.texto = "¡Defendido con escudo!";
                idINFO.color = c_red;
                
                reproducirSonido(snd_defensaEscudo, false, false);
                
            }
        
        }
    
    }

    // Evasion

    if (ataca) {
    
        var chancesTacticas = 0;
                                
        if (obj_pj.skills[1] >= 0 && obj_pj.skills[1] <= 10) {
            chancesTacticas = 9;
        } else if (obj_pj.skills[1] >= 11 && obj_pj.skills[1] <= 20) {
            chancesTacticas = 8.85;
        }  else if (obj_pj.skills[1] >= 21 && obj_pj.skills[1] <= 30) {
            chancesTacticas = 8.75;
        }  else if (obj_pj.skills[1] >= 31 && obj_pj.skills[1] <= 40) {
            chancesTacticas = 8.55;
        }  else if (obj_pj.skills[1] >= 41 && obj_pj.skills[1] <= 50) {
            chancesTacticas = 8.35;
        }  else if (obj_pj.skills[1] >= 51 && obj_pj.skills[1] <= 60) {
            chancesTacticas = 8.20;
        }  else if (obj_pj.skills[1] >= 61 && obj_pj.skills[1] <= 70) {
            chancesTacticas = 8.10;
        }  else if (obj_pj.skills[1] >= 71 && obj_pj.skills[1] <= 80) {
            chancesTacticas = 8;
        }  else if (obj_pj.skills[1] >= 81 && obj_pj.skills[1] <= 90) {
            chancesTacticas = 7.5;
        }  else if (obj_pj.skills[1] >= 91 && obj_pj.skills[1] <= 100) {
            chancesTacticas = 7.25;
        } 
        
        chancesTacticas += evasion * 0.01;
        
        if (random(10) > chancesTacticas) {
        
            ataca = false;
            
            var idINFO = instance_create(personaRoom.x, personaRoom.y + 9, obj_INFO);
            idINFO.padre = personaRoom;
            idINFO.texto = "¡Falla!";
            idINFO.color = c_red;
            
        }
    
    }
    
    if (ataca) {
    
        var dano = round(random_range(danoMeleeMin, danoMeleeMax));
        var danoTotal = calcularDanoFisicoNPCaIA(dano, personaRoom);
        
        idDano = instance_create(personaRoom.x, personaRoom.y - 41, obj_efecto_dano);
        idDano.dano = danoTotal;
        idDano.padre = personaRoom.id;
        
        personaRoom.salud -= danoTotal;
        reproducirSonido(snd_golpeRecibido, false, false);
        
        if (domado) {
            
            if (personaRoom.salud <= 0) {
                if (personaRoom.pk) {
                    obj_pj.criminalesMatados++;
                } else {
                    obj_pj.puntosPK = -1;
                    obj_pj.ciudadanosMatados++;
                }
            }
            
            if (obj_pj.nivel < obj_pj.nivelMax) {
                if (obj_pj.experiencia < obj_pj.expLvl[obj_pj.nivel] - personaRoom.experiencia) {
                    obj_pj.experiencia += personaRoom.experiencia;
                } else {
                    subirNivel();
                }
            }
            
        }
        
    }

}

