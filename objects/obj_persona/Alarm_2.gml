/// @description  Ataque

if (!muerto && clase == 0 && !obj_mapas_mundo.mapas[room]) {
    
    ataca = false;
    var idIA = -1;
    
    switch (direccion) {
        case 0:
            if (place_meeting(x, y + 32, obj_persona)) {
                ataca = true;
                idIA = instance_place(x, y + 32, obj_persona);
            }
            break;
        case 1:
            if (place_meeting(x, y + 32, obj_persona)) {
                ataca = true;
                idIA = instance_place(x, y + 32, obj_persona);
            }
            break;
        case 2:
            if (place_meeting(x - 32, y, obj_persona)) {
                ataca = true;
                idIA = instance_place(x - 32, y, obj_persona);
            }
            break;
        case 3:
            if (place_meeting(x + 32, y, obj_persona)) {
                ataca = true;
                idIA = instance_place(x + 32, y, obj_persona);
            }
            break;
    }
    
    var esEnemigo = pk || idIA.pk;
    
    if (ataca) {
        ataca = esEnemigo;
    }
    
    // Evasion escudo
        
    if (ataca) {
    
        if (idIA.eqEscudo != -1) {
        
            var chancesEscudos = 0;
                                             
            if (obj_pj.nivel >= 1 && obj_pj.nivel <= 4) {
                chancesEscudos = 8.25 + 0.075 * 10;
            } else if (obj_pj.nivel >= 5 && obj_pj.nivel <= 9) {
                chancesEscudos = 8.25 + 0.075 * 9;
            }  else if (obj_pj.nivel >= 10 && obj_pj.nivel <= 14) {
                chancesEscudos = 8.25 + 0.075 * 8;
            }  else if (obj_pj.nivel >= 15 && obj_pj.nivel <= 19) {
                chancesEscudos = 8.25 + 0.075 * 7;
            }  else if (obj_pj.nivel >= 20 && obj_pj.nivel <= 24) {
                chancesEscudos = 8.25 + 0.075 * 6;
            }  else if (obj_pj.nivel >= 25 && obj_pj.nivel <= 29) {
                chancesEscudos = 8.25 + 0.075 * 5;
            }  else if (obj_pj.nivel >= 30 && obj_pj.nivel <= 34) {
                chancesEscudos = 8.25 + 0.075 * 4;
            }  else if (obj_pj.nivel >= 35 && obj_pj.nivel <= 39) {
                chancesEscudos = 8.25 + 0.075 * 3;
            }  else if (obj_pj.nivel >= 40 && obj_pj.nivel <= 44) {
                chancesEscudos = 8.25 + 0.075 * 2;
            }  else if (obj_pj.nivel >= 45 && obj_pj.nivel <= 47) {
                chancesEscudos = 8.25 + 0.075 * 1;
            } 
        
            chancesEscudos += evasion * 0.01;
                
            var modAgilidadParaEscu = obtenerAtributoAgilidadPJ() / 22;
            
            chancesEscudos -= modAgilidadParaEscu;
            chancesEscudos -= obj_pj.modEvasionEscu;
            
            if (random(20) < chancesEscudos) {
            
                ataca = false;
                
                var idINFO = instance_create(idIA.x, idIA.y, obj_INFO);
                idINFO.padre = idIA;
                idINFO.texto = "¡Defendido con escudo!";
                idINFO.color = c_red;
                
                reproducirSonido(snd_defensaEscudo, false, false);
                
            }
        
        }
        
    }
    
    // Evasion
    
    if (ataca) {
    
        graficoArma.alarm[0] = 1;
        
        var chancesTacticas = 0;
                                
        if (obj_pj.nivel >= 1 && obj_pj.nivel <= 4) {
            chancesTacticas = 8.25 + 0.075 * 10;
        } else if (obj_pj.nivel >= 5 && obj_pj.nivel <= 9) {
            chancesTacticas = 8.25 + 0.075 * 9;
        }  else if (obj_pj.nivel >= 10 && obj_pj.nivel <= 14) {
            chancesTacticas = 8.25 + 0.075 * 8;
        }  else if (obj_pj.nivel >= 15 && obj_pj.nivel <= 19) {
            chancesTacticas = 8.25 + 0.075 * 7;
        }  else if (obj_pj.nivel >= 20 && obj_pj.nivel <= 24) {
            chancesTacticas = 8.25 + 0.075 * 6;
        }  else if (obj_pj.nivel >= 25 && obj_pj.nivel <= 29) {
            chancesTacticas = 8.25 + 0.075 * 5;
        }  else if (obj_pj.nivel >= 30 && obj_pj.nivel <= 34) {
            chancesTacticas = 8.25 + 0.075 * 4;
        }  else if (obj_pj.nivel >= 35 && obj_pj.nivel <= 39) {
            chancesTacticas = 8.25 + 0.075 * 3;
        }  else if (obj_pj.nivel >= 40 && obj_pj.nivel <= 44) {
            chancesTacticas = 8.25 + 0.075 * 2;
        }  else if (obj_pj.nivel >= 45 && obj_pj.nivel <= 47) {
            chancesTacticas = 8.25 + 0.075 * 1;
        } 
        
        if (random(10) > chancesTacticas) {
        
            ataca = false;
            
            var idINFO = instance_create(x, y + 9, obj_INFO);
            idINFO.padre = id;
            idINFO.texto = "¡Falla!";
            idINFO.color = c_red;
            
        }
    
    }
    
    if (ataca && !idIA.muerto && esEnemigo) {
    
        var dano = round(random_range(danoMeleeMin, danoMeleeMax));
        var danoTotal = floor(0.85 * calcularDanoFisicoIAaIA(dano * obj_pj.modDanoLvl, idIA));
        
        idDano = instance_create(idIA.x, idIA.y - 41, obj_efecto_dano);
        idDano.dano = danoTotal;
        idDano.padre = idIA;
        
        reproducirSonido(snd_golpeRecibido, false, false);
        
        if (idIA.salud - danoTotal >= 1) {
            idIA.salud -= danoTotal;
        } else {
            idIA.salud -= danoTotal;
            yaHablo = false;            
            gano = true;
            alarm[5] = 1;
        }
        
    }
    
}

if (!muerto && enemigo && clase == 0 && !obj_mapas_mundo.mapas[room]) {

    ataca = false;

    if (!obj_pj.muerto) {
        
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
    
        graficoArma.alarm[0] = 1;
    
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
        var danoTotal = calcularDanoFisicoNPC(floor(dano * obj_pj.modDanoLvl));
        
        idDano = instance_create(obj_pj.x, obj_pj.y - 41, obj_efecto_dano);
        idDano.dano = danoTotal;
        idDano.padre = obj_pj.id;
        
        reproducirSonido(snd_golpeRecibido, false, false);
        
        if (obj_pj.salud - danoTotal >= 1) {
            obj_pj.salud -= danoTotal;
        } else {
            muertePJ();
            yaHablo = false;            
            gano = true;
            alarm[5] = 1;
        }
        
    }

}

alarm[2] = intervaloAtaque;

