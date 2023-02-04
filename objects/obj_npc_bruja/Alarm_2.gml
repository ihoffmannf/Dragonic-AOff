/// @description  Ataque a PJ
                    
if (obj_pj.invisible) {
    
    // Si es invisible
            
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

if (target == -1 || target == obj_pj) {

	if (!obj_pj.invisible) {
    
        // Si no es invisible
    
        if (
        !obj_pj.muerto &&
        (x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
        (y >= __view_get( e__VW.YView, 0 ) && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
        ) {
    
            if (!paralizado) {
            
                var valido = false;
            
                if (inmovilizado) {
                    switch (direccion) {
                        case 0:
                            if (
                            (obj_pj.x >= x - 16 && obj_pj.x <= x + 16) && 
                            obj_pj.y > y
                            ) {
                                valido = true;
                            }
                            break;
                        case 1:
                            if (
                            (obj_pj.x >= x - 16 && obj_pj.x <= x + 16) && 
                            obj_pj.y < y
                            ) {
                                valido = true;
                            }
                            break;
                        case 2:
                            if (
                            (obj_pj.y >= y - 16 && obj_pj.y <= y + 16) && 
                            obj_pj.x < x
                            ) {
                                valido = true;
                            }
                            break;
                        case 3:
                            if (
                            (obj_pj.y >= y - 16 && obj_pj.y <= y + 16) && 
                            obj_pj.x > x
                            ) {
                                valido = true;
                            }
                            break;
                    }
                    
                } else {
                    valido = true;
                }
                
                if (valido) {
                
                    if (!obj_pj.inmovilizado && random(10) > 8.5) {
                    
                        var idHechizo = instance_create(obj_pj.x, obj_pj.y, obj_paralizar);
                        idHechizo.padre = obj_pj.id;
                        
                        reproducirSonido(snd_dardoMagico, false, false);
                        obj_pj.inmovilizado = true;
						
						if (claseGuerrera())
							obj_control_inmo_pj.alarm[0] = 600; // 10 Segundos
						else
							obj_control_inmo_pj.alarm[0] = 1800; // 30 Segundos
                        
                    } else {
                
                        var idHechizo = instance_create(obj_pj.x, obj_pj.y, obj_descarga_electrica);
                        idHechizo.padre = obj_pj.id;
                        
                        var dano = floor(random_range(danoHechizoMin, danoHechizoMax));
                        var danoTotal = calcularDanoMagicoNPC(dano);
                        idDano = instance_create(obj_pj.x, obj_pj.y - 41, obj_efecto_dano);
                        idDano.dano = danoTotal;
                        idDano.padre = obj_pj.id;
                            
                        if (random(10) > 6.5) {
                            if (obj_pj.skills[17] < 100) {
                                if (obj_pj.skills[17] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                    obj_skills_libres.mostrado = false;
                                    obj_pj.skills[17]++;
                                    var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                    idSubirSkills.indice = 17;
                                }
                            }
                        }
                            
                        reproducirSonido(snd_descargaElectrica, false, false);
                        vibrarPantalla();
                        
                        if (obj_pj.salud - danoTotal >= 1) {                    
                            obj_pj.salud -= danoTotal;                        
                        } else {                        
                            muertePJ();                        
                        }
                    
                    }
                    
                }
                
            }
        
        }
    
    
    }

}

/// Ataque a Persona

if (target != -1 && target != obj_pj && personaRoom != -1 && instance_exists(personaRoom)) {

    if (
    !personaRoom.muerto &&
    (personaRoom.x >= __view_get( e__VW.XView, 0 ) && (personaRoom.x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
    (personaRoom.y >= __view_get( e__VW.YView, 0 ) && (personaRoom.y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
    ) {
    
        // Si la IA está viva y está dentro de la view (Para que no muera constantemente OOV y queden los ítems tirados)
        
        var distanciaX = 0;
        var distanciaY = 0; 
        
        if (x > personaRoom.x) {
            distanciaX = x - personaRoom.x;
        } else if (x < personaRoom.x) {
            distanciaX = personaRoom.x - x;
        }
        
        if (y > personaRoom.y) {
            distanciaY = y - personaRoom.y;
        } else if (y < personaRoom.y) {
            distanciaY = personaRoom.y - y;
        }
        
        if (
        distanciaX <= __view_get( e__VW.WView, 0 ) * 0.5 &&
        distanciaY <= __view_get( e__VW.HView, 0 ) * 0.5
        ) {
        
            if (!paralizado) {
        
                var valido = false;
            
                if (inmovilizado) {
                    switch (direccion) {
                        case 0:
                            if (
                            (personaRoom.x >= x - 16 && personaRoom.x <= x + 16) && 
                            personaRoom.y > y
                            ) {
                                valido = true;
                            }
                            break;
                        case 1:
                            if (
                            (personaRoom.x >= x - 16 && personaRoom.x <= x + 16) && 
                            personaRoom.y < y
                            ) {
                                valido = true;
                            }
                            break;
                        case 2:
                            if (
                            (personaRoom.y >= y - 16 && personaRoom.y <= y + 16) && 
                            personaRoom.x < x
                            ) {
                                valido = true;
                            }
                            break;
                        case 3:
                            if (
                            (personaRoom.y >= y - 16 && personaRoom.y <= y + 16) && 
                            personaRoom.x > x
                            ) {
                                valido = true;
                            }
                            break;
                    }
                    
                } else {
                    valido = true;
                }
                
                if (valido) {
                
                    if (!personaRoom.inmovilizado && random(10) > 8.5) {
                        
                        var idHechizo = instance_create(personaRoom.x, personaRoom.y, obj_paralizar);
                        idHechizo.padre = personaRoom.id;
                        
                        reproducirSonido(snd_dardoMagico, false, false);
                        personaRoom.alarm[7] = 170;
                        personaRoom.inmovilizado = true;
                        personaRoom.alarm[4] = 1800; // 30 Segundos
                        
                    } else {
                
                        var idHechizo = instance_create(personaRoom.x, personaRoom.y, obj_descarga_electrica);
                        idHechizo.padre = personaRoom.id;
                        
                        var dano = floor(random_range(danoHechizoMin, danoHechizoMax));
                        var danoTotal = calcularDanoMagicoNPCaIA(dano, personaRoom);
                        idDano = instance_create(personaRoom.x, personaRoom.y - 41, obj_efecto_dano);
                        idDano.dano = danoTotal;
                        idDano.padre = personaRoom.id;
                        
                        reproducirSonido(snd_descargaElectrica, false, false);
                        personaRoom.salud -= danoTotal;
                        
                    }
                    
                }
                
            }
        
        }
    
    }

}

alarm[2] = intervaloAtaque;