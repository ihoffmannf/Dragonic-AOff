/// @description  Inmoviliza / tira hechizos a NPCs / Ataca PJ

if (!muerto && !obj_mapas_mundo.mapas[room]) {

    yaTiroHechizo = false;
    var atacaNPC = true;
    var PJTieneCriaturas = false;
    var PJTieneInvocadas = false;
    var criaturaPJ = -1;
    
    if (agitando && !obj_pj.muerto) {
        if (obj_pj.inmovilizado) {
            atacaNPC = false;
        } else {
        
            for (var i = 0; i < 3; i++) {
                if (obj_pj.criaturasHijas[i, 0] != -1) {
                    PJTieneCriaturas = true;
                    break;
                }
            }    
            
            if (!PJTieneCriaturas) {
                for (var i = 0; i < 3; i++) {
                    if (obj_pj.criaturasInvocadas[i] != -1) {
                        PJTieneInvocadas = true;
                        break;
                    }
                } 
            }
                
            if (!PJTieneCriaturas && !PJTieneInvocadas) {
                if (random(10) > 1) {
                    atacaNPC = false;
                }
            } else {
                if (random(10) > 5) {
                    atacaNPC = false;
                } else {
                    if (PJTieneCriaturas) {
                        rand = floor(random(3));
                        criaturaPJ = obj_pj.criaturasHijas[rand, 0];
                        while (criaturaPJ == -1) {
                            rand = floor(random(3));
                            criaturaPJ = obj_pj.criaturasHijas[rand, 0];
                        }
                        if (criaturaPJ.inmovilizado) {
                            atacaNPC = false;
                        }
                    } else if (PJTieneInvocadas) {
                        rand = floor(random(3));
                        criaturaPJ = obj_pj.criaturasInvocadas[rand];
                        while (criaturaPJ == -1) {
                            rand = floor(random(3));
                            criaturaPJ = obj_pj.criaturasInvocadas[rand];
                        }
                        if (criaturaPJ.inmovilizado) {
                            atacaNPC = false;
                        }
                    }
                }
            }
            
        }
    }
    
    if (
    (x < __view_get( e__VW.XView, 0 ) && (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
    (y < __view_get( e__VW.YView, 0 ) && (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
    ) {
       atacaNPC = true; 
    }      

    if (inmovilizado && puedeRemoverse && obj_pj.nivel >= 16 && mana > 300) {
        alarm[4] = 1;
        alarm[8] = -1;
    } 
    
    if (!inmovilizado || (inmovilizado && obj_pj.nivel < 16)) {
        
        var idIA = elegirIAObjetivoIA(true);
    
        if (idIA != -1 && enemigo && !obj_pj.inmovilizado && IAAtacaAPJ()) {
            if (!obj_pj.invisible || (obj_pj.invisible && obj_pj.meditando)) {
                idIA = -1;
            }
        }
    
        if (atacaNPC && idIA == -1) {
        
            var objetivo = seleccionarNPCObjetivoIA();
    
            if (PJTieneCriaturas || PJTieneInvocadas) {
                objetivo = criaturaPJ;
            }
    
            if (objetivo != -1) {
            
                with (objetivo) {
                    
                    if (!other.yaTiroHechizo) {
                    
                        if (hostil && object_index != other.object_index) {
                            if (target == other.id) {
                                if ((!domado && !invocado) || ((domado || invocado) && other.enemigo)) {
                            
                                    if (distance_to_object(other.id) <= 250) {
                                    
                                        if (
                                        (
                                        (salud > 60 && !inmovilizado && !paralizado) ||
                                        other.agitando
                                        ) && (obj_pj.nivel >= 24 && other.mana >= 300) && object_index != obj_npc_dragonic
                                        ) {
                                            if (!inmovilizado && !paralizado) {
                                            
                                                other.yaTiroHechizo = true;
                                                alarm[4] = 7200;
                                                inmovilizado = true;
                                                other.mana -= 300;                
                                                var idEfectoHechizo = -1;
                                                idEfectoHechizo = instance_create(x, y, obj_inmovilizar);
                                                idEfectoHechizo.padre = id;
                                                
                                                reproducirSonido(snd_inmovilizar, false, false);
                                                
                                                // Palabras mágicas
                                                
                                                other.dicePalabrasMagicas = true;
                                                other.palabrasMagicas = "Är Prop s'uo";
                                                other.alarm[9] = 180;
                                                
                                            }
                                        } else if (!other.agitando) {
                                            if (other.clase != 2) {
                                                if (obj_pj.nivel >= 24 && (other.manaMax >= 210 && other.mana >= 210)) {
                                                
                                                    other.yaTiroHechizo = true;
                                                    other.mana -= 210;                
                                                    var idEfectoHechizo = -1;
                                                    idEfectoHechizo = instance_create(x, y, obj_tormenta_de_fuego);
                                                    idEfectoHechizo.padre = id;
                                                    
                                                    other.dano = round(random_range(40, 60)); 
                                                    other.danoTotal = calcularDanoMagicoIAaNPC(other.dano, other.id);
                                                    var idDano = instance_create(x, y, obj_efecto_dano);
                                                    idDano.dano = other.danoTotal;
                                                    salud -= other.danoTotal;
                                                    
                                                    alarm[5] = 1;
                                                    
                                                    reproducirSonido(snd_tormentaDeFuego, false, false);
                                                    
                                                    // Palabras mágicas
                                                    
                                                    other.dicePalabrasMagicas = true;
                                                    other.palabrasMagicas = "EN VAX ON TAR";;
                                                    other.alarm[9] = 180;
                                                    
                                                } else if (other.manaMax < 210 && other.mana >= 45) {
                                                
                                                    other.yaTiroHechizo = true;
                                                    other.mana -= 45;                
                                                    var idEfectoHechizo = -1;
                                                    idEfectoHechizo = instance_create(x, y, obj_misil_magico);
                                                    idEfectoHechizo.padre = id;
                                                    
                                                    other.dano = round(random_range(25, 35)); 
                                                    other.danoTotal = calcularDanoMagicoIAaNPC(other.dano, other.id);
                                                    var idDano = instance_create(x, y, obj_efecto_dano);
                                                    idDano.dano = other.danoTotal;
                                                    salud -= other.danoTotal;
                                                    
                                                    alarm[5] = 1;
                                                    
                                                    reproducirSonido(snd_misilMagico, false, false);
                                                    
                                                    // Palabras mágicas
                                                    
                                                    other.dicePalabrasMagicas = true;
                                                    other.palabrasMagicas = "VAX IN TAR";;
                                                    other.alarm[9] = 180;
                                                    
                                                }                                            
                                            } else {
                                                
                                                other.yaTiroHechizo = true;
                                                
                                                other.chances = 0;
                                                
                                                if (obj_pj.skills[12] >= 0 && obj_pj.skills[12] <= 10) {
                                                    other.chances = 4.85;
                                                } else if (obj_pj.skills[12] >= 11 && obj_pj.skills[12] <= 20) {
                                                    other.chances = 4.5;
                                                }  else if (obj_pj.skills[12] >= 21 && obj_pj.skills[12] <= 30) {
                                                    other.chances = 4.15;
                                                }  else if (obj_pj.skills[12] >= 31 && obj_pj.skills[12] <= 40) {
                                                    other.chances = 3.8;
                                                }  else if (obj_pj.skills[12] >= 41 && obj_pj.skills[12] <= 50) {
                                                    other.chances = 3.5;
                                                }  else if (obj_pj.skills[12] >= 51 && obj_pj.skills[12] <= 60) {
                                                    other.chances = 3.25;
                                                }  else if (obj_pj.skills[12] >= 61 && obj_pj.skills[12] <= 70) {
                                                    other.chances = 3;
                                                }  else if (obj_pj.skills[12] >= 71 && obj_pj.skills[12] <= 80) {
                                                    other.chances = 2.75;
                                                }  else if (obj_pj.skills[12] >= 81 && obj_pj.skills[12] <= 90) {
                                                    other.chances = 2.5;
                                                }  else if (obj_pj.skills[12] >= 91 && obj_pj.skills[12] <= 100) {
                                                    other.chances = 2.35;
                                                }
                                                
                                                other.chances += evasion * 0.0085;
                                                
                                                if (random(10) > other.chances) {
                                                
                                                    other.dano = round(random_range(other.danoMeleeMin, other.danoMeleeMax));
                                                    other.danoTotal = calcularDanoArcoIAaNPC(floor(other.dano * obj_pj.modDanoLvl), other.id);
                                                    
                                                    var idDano = instance_create(x, y, obj_efecto_dano);
                                                    idDano.dano = other.danoTotal;
                                                    idDano.padre = id;
                                                    
                                                    reproducirSonido(snd_golpeANPC, false, false);
                                                    
                                                    salud -= other.danoTotal;
                                                    
                                                } else {
                                                    var idINFO = instance_create(other.x, other.y + 9, obj_INFO);
                                                    idINFO.padre = other.id;
                                                    idINFO.texto = "¡Falla!";
                                                    idINFO.color = c_red;
                                                }                                            
                                                    
                                            }
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                    
                    }
                }
            
            }
    
        } else if (idIA != -1 && !idIA.muerto) {
        
            // Cálculo rand
                
            var rand = 0;
            
            if (idIA.pasos == 0 || idIA.inmovilizado) {
                rand = 1.5 / gradoIA;
            }
            
            if (random(10) > rand) {
                    
                var randInmo = 6.5; // Clero
                
                if (clase == 1) { // Mago
                    randInmo = 8.5;
                } else if (clase == 2) { // Caza
                    randInmo = 7.5;
                }
            
                if (obj_pj.nivel >= 24 && !idIA.inmovilizado && random(10) > randInmo && mana >= 300) {
                
                    // Inmoviliza
                            
                    mana -= 300;                
                    var idEfectoHechizo = -1;
                    idEfectoHechizo = instance_create(idIA.x, idIA.y, obj_inmovilizar);
                    idEfectoHechizo.padre = idIA;
                    
                    reproducirSonido(snd_inmovilizar, false, false);
                    
                    // Palabras mágicas
                    
                    dicePalabrasMagicas = true;
                    palabrasMagicas = "Är Prop s'uo";;
                    alarm[9] = 180;
                    
                    idIA.inmovilizado = true;                   
                    idIA.alarm[4] = 1800; // 30 Segundos 
                    idIA.alarm[7] = 170;
                    
                    alarm[5] = 15;
                    
                } else {
                
                    if (clase != 2) {
                    
                        // Ataca con hechizo
                        
                        var lanzoHechizo = false;
                        
                        var restaMana = 0;
                        var efecto = 0;
                        var dano = 0;
                        var palabras = "";
                        
                        var chancesDesca = 0;
                        var chancesTormi = 0;
                        var chancesMisil = 0;
                        
                        if (obj_pj.nivel >= 40 && manaMax >= 1000) {
                            chancesDesca = 2
                            chancesTormi = 3.5;
                            chancesMisil = 10;
                        } else if (obj_pj.nivel >= 34 && manaMax >= 460) {
                            chancesDesca = 0;
                            chancesTormi = 2;
                            chancesMisil = 10;
                        } else if (obj_pj.nivel >= 24 && manaMax >= 210) {
                            chancesTormi = 0;
                            chancesMisil = 3.5;
                        } else if (manaMax < 210) {
                            chancesMisil = 0;
                        }
                        
                        if (obj_pj.nivel >= 40 && mana >= 1000) {
                            restaMana = 1000;
                            efecto = obj_apocalipsis;
                            dano = floor(random_range(93, 98));
                            palabras = "Rahma Nañarak O'al";
                            lanzoHechizo = true;
                            reproducirSonido(snd_apocalipsis, false, false);
                        } else if (obj_pj.nivel >= 34 && mana >= 460) {
                            if (random(10) > chancesDesca) {
                                restaMana = 460;
                                efecto = obj_descarga_electrica;
                                dano = floor(random_range(81, 85)); 
                                palabras = "T'HY KOOOL";
                                lanzoHechizo = true;
                                reproducirSonido(snd_descargaElectrica, false, false);
                            }
                        } else if (obj_pj.nivel >= 24 && mana >= 210) {
                            if (random(10) > chancesTormi) {
                                restaMana = 210;
                                efecto = obj_tormenta_de_fuego;
                                dano = floor(random_range(55, 60));  
                                palabras = "EN VAX ON TAR";
                                lanzoHechizo = true;
                                reproducirSonido(snd_tormentaDeFuego, false, false);
                            }
                        } else if (mana >= 45) {
                            if (random(10) > chancesMisil) {
                                restaMana = 45;
                                efecto = obj_misil_magico;
                                dano = floor(random_range(27, 32));  
                                palabras = "VAX IN TAR";
                                lanzoHechizo = true;
                                reproducirSonido(snd_misilMagico, false, false);
                            }
                        }
                        
                        if (lanzoHechizo) {
                            mana -= restaMana;
                                            
                            var idEfectoHechizo = -1;
                            idEfectoHechizo = instance_create(idIA.x, idIA.y, efecto);
                            idEfectoHechizo.padre = idIA;
                            
                            var modBaculo = 1.031;
                            
                            if (eqArma == 18) {
                                modBaculo = 1.058;
                            } else if (eqArma == 19) {
                                modBaculo = 1.085;
                            }
                            
                            var danoTotal = floor(calcularDanoMagicoIAaIA(dano, idIA) * modBaculo); 
                                                    
                            var idDano = instance_create(idIA.x, idIA.y, obj_efecto_dano);
                            idDano.dano = danoTotal;
                            idDano.padre = idIA;
                            
                            if (idIA.salud - danoTotal > 0) {
                                idIA.salud -= danoTotal;
                            } else {
                                idIA.salud -= danoTotal;
                                yaHablo = false;
                                gano = true;
                                alarm[5] = 1;
                            }
                            
                            // Palabras mágicas
                            
                            dicePalabrasMagicas = true;
                            palabrasMagicas = palabras;;
                            alarm[9] = 180;
                            
                        }
                    
                    } else {
                    
                        // Ataca con arco
                        IAAtacaConArco(idIA);
                        
                    }
                    
                }
            } else {
                var idINFO = instance_create(x, y, obj_INFO);
                idINFO.padre = id;
                idINFO.color = make_color_rgb(211, 90, 211);
                idINFO.texto = "¡Target inválido!"; 
            }
        
        } else if (!obj_pj.muerto && agitando && enemigo) {
            
            var valido = false;
        
            if (
            (x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
            (y >= __view_get( e__VW.YView, 0 ) && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
            ) {
               valido = true; 
            }
                
            if (valido) {
            
                var rand = 0;
                
                // Invisible y meditando
                
                var invisibleMeditando = false;
                
                if (obj_pj.invisible && obj_pj.meditando) {
                    invisibleMeditando = true;
                }
                
                // Mantiene la posición
                
                var mantienePos = false;
                
                if (obj_pj.invisible && !obj_pj.meditando) {
                    if (obj_pj.x == obj_pj.xMeditando && obj_pj.y == obj_pj.yMeditando) {
                        mantienePos = true;      
                    }
                }
                
                // Cálculo rand
                
                if (!obj_pj.invisible) {
                    if (!obj_pj.puedeMoverse || obj_pj.inmovilizado) {
                        rand = 1.5 / gradoIA;
                    }
                } else {
                    rand = 10;
                }
            
                if (random(10) > rand) {
                    
                    var randInmo = 6.5; // Clero
                    
                    if (clase == 1) { // Mago
                        randInmo = 8.5;
                    } else if (clase == 2) { // Caza
                        randInmo = 7.5;
                    }
                
                    if (obj_pj.nivel >= 24 && !obj_pj.inmovilizado && random(10) > randInmo && mana >= 300) {
                    
                        // Inmoviliza
                                
                        mana -= 300;                
                        var idEfectoHechizo = -1;
                        idEfectoHechizo = instance_create(obj_pj.x, obj_pj.y, obj_inmovilizar);
                        idEfectoHechizo.padre = obj_pj.id;
                        
                        reproducirSonido(snd_inmovilizar, false, false);
                        
                        // Palabras mágicas
                        
                        dicePalabrasMagicas = true;
                        palabrasMagicas = "Är Prop s'uo";;
                        alarm[9] = 180;
                        
                        obj_pj.inmovilizado = true;
						
						if (claseGuerrera())
							obj_control_inmo_pj.alarm[0] = 600; // 10 Segundos
						else
							obj_control_inmo_pj.alarm[0] = 1800; // 30 Segundos
						
                        
                        alarm[5] = 15;
                        
                    } else {
                    
                        if (clase != 2) {
                        
                            // Ataca con hechizo
                            
                            var lanzoHechizo = false;
                            
                            var restaMana = 0;
                            var efecto = 0;
                            var dano = 0;
                            var palabras = "";
                            
                            var chancesDesca = 0;
                            var chancesTormi = 0;
                            var chancesMisil = 0;
                            
                            if (obj_pj.nivel >= 40 && manaMax >= 1000) {
                                chancesDesca = 2
                                chancesTormi = 3.5;
                                chancesMisil = 10;
                            } else if (obj_pj.nivel >= 34 && manaMax >= 460) {
                                chancesDesca = 0;
                                chancesTormi = 2;
                                chancesMisil = 10;
                            } else if (obj_pj.nivel >= 24 && manaMax >= 210) {
                                chancesTormi = 0;
                                chancesMisil = 3.5;
                            } else if (manaMax < 210) {
                                chancesMisil = 0;
                            }
                            
                            if (obj_pj.nivel >= 40 && mana >= 1000) {
                                restaMana = 1000;
                                efecto = obj_apocalipsis;
                                dano = floor(random_range(200, 220));
                                palabras = "Rahma Nañarak O'al";
                                lanzoHechizo = true;
                                reproducirSonido(snd_apocalipsis, false, false);
                            } else if (obj_pj.nivel >= 34 && mana >= 460) {
                                if (random(10) > chancesDesca) {
                                    restaMana = 460;
                                    efecto = obj_descarga_electrica;
                                    dano = floor(random_range(150, 185)); 
                                    palabras = "T'HY KOOOL";
                                    lanzoHechizo = true;
                                    reproducirSonido(snd_descargaElectrica, false, false);
                                }
                            } else if (obj_pj.nivel >= 24 && mana >= 210) {
                                if (random(10) > chancesTormi) {
                                    restaMana = 210;
                                    efecto = obj_tormenta_de_fuego;
                                    dano = floor(random_range(85, 115));  
                                    palabras = "EN VAX ON TAR";
                                    lanzoHechizo = true;
                                    reproducirSonido(snd_tormentaDeFuego, false, false);
                                }
                            } else if (mana >= 45) {
                                if (random(10) > chancesMisil) {
                                    restaMana = 45;
                                    efecto = obj_misil_magico;
                                    dano = floor(random_range(22, 32));  
                                    palabras = "VAX IN TAR";
                                    lanzoHechizo = true;
                                    reproducirSonido(snd_misilMagico, false, false);
                                }
                            }
                            
                            if (lanzoHechizo) {
                                mana -= restaMana;
                                                
                                var idEfectoHechizo = -1;
                                idEfectoHechizo = instance_create(obj_pj.x, obj_pj.y, efecto);
                                idEfectoHechizo.padre = obj_pj.id;
                                
                                var danoTotal = calcularDanoMagicoNPC(dano);
                                
                                var modBaculo = 1;
                                
                                if (eqArma == 18) {
                                    modBaculo = 1.058;
                                } else if (eqArma == 19) {
                                    modBaculo = 1.085;
                                }
                                
                                danoTotal = floor(danoTotal * modBaculo);
                                                        
                                var idDano = instance_create(obj_pj.x, obj_pj.y, obj_efecto_dano);
                                idDano.dano = danoTotal;
                                idDano.padre = obj_pj.id;
                                
                                vibrarPantalla();
                                
                                if (obj_pj.salud - danoTotal > 0) {
                                    obj_pj.salud -= danoTotal
                                } else {
                                    muertePJ();
                                    yaHablo = false;
                                    gano = true;
                                    alarm[5] = 1;
                                }
                                
                                // Palabras mágicas
                                
                                dicePalabrasMagicas = true;
                                palabrasMagicas = palabras;;
                                alarm[9] = 180;
                                
                                // Skill
                                
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
                                
                            }
                        
                        } else {
                        
                            // Ataca con arco
                            IAAtacaConArco(-1);          
                                          
                        }
                        
                    }
                } else {
                    var idINFO = instance_create(x, y, obj_INFO);
                    idINFO.padre = id;
                    idINFO.color = make_color_rgb(211, 90, 211);
                    idINFO.texto = "¡Target inválido!"; 
                }
                
            }
                
        }    
    
    }
    
}

if (agitando) {
    alarm[8] = random_range((2 * 60) / gradoIA, (2.5 * 60) / gradoIA);
} else {
    alarm[8] = random_range(7 * 60, 9 * 60);
}















