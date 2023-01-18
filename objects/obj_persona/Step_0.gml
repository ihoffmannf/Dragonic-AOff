/// @description  Control general

detectarBugGrilla();

// Salud

if (salud <= 0 && !muerto) {
    image_alpha = 0.5;
    muerto = true;
    alarm[10] = 1;
}

// Enemigo?

enemigo = false;

if (obj_pj.pk) {
    enemigo = true;
} else {
    if (pk) {
        enemigo = true;
    }
}

if (
(x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
(y >= __view_get( e__VW.YView, 0 ) && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
) {

    // Tiempo dentro de la view
    
    if (!obj_pj.muerto && !agitando && !obj_mapas_mundo.mapas[room]) {
        tiempoEnView++;    
    }

    // Texto
    
    if (!muerto && (!obj_pj.pk && !pk)) {
        if (!yaHabloEnojado1 && tiempoEnView >= 1800) {
            yaHablo = false;
            yaHabloEnojado1 = true;
        } else if (!yaHabloEnojado2 && tiempoEnView >= 2700) {
            yaHablo = false;
            yaHabloEnojado2 = true;
        } else if (!yaHabloEnojado3 && tiempoEnView >= 3600) {
            yaHablo = false;
            yaHabloEnojado3 = true;
        }
    }
    
    if (!muerto && !yaHablo && !dicePalabrasMagicas) {
    
        if (instance_number(obj_INFO) > 0) {
            with (obj_INFO) {
                if (padre == other.id) {
                    instance_destroy();
                }   
            }
        }
    
        if (!gano) {
            
            yaHablo = true;
            
            var rand = floor(random(5));
            var mensaje = "";
            
            if (rand < 0 || rand > 4) {
                rand = 0;
            }
            
            var idIAAux = elegirIAObjetivoIA(false);
            
            if ((enemigo && !obj_pj.muerto) || (idIAAux != -1 && (pk || idIAAux.pk))) {
                if (obj_pj.invisible && idIAAux == -1 && !obj_mapas_mundo.mapas[room]) {
                    mensaje = "¡Muéstrate! Cobarde...";
                } else {
                    if (!obj_mapas_mundo.mapas[room]) {
                        switch (rand) {
                            case 0:
                                mensaje = "¡En guardia!";
                                break;
                            case 1:
                                mensaje = "¡Te haré pedazos!";
                                break;
                            case 2:
                                mensaje = "¡Muere, gusano!";
                                break;
                            case 3:
                                mensaje = "¡Esto será fácil! Jajaja";
                                break;
                            case 4:
                                mensaje = "Eres historia...";
                                break;
                        }   
                    } else {
                        switch (rand) {
                            case 0:
                                mensaje = "Que no te vea fuera de la ciudad...";
                                break;
                            case 1:
                                mensaje = "Ve con ciudado... Jajaja";
                                break;
                            case 2:
                                mensaje = "¡Si te encuentro afuera las pagarás!";
                                break;
                            case 3:
                                mensaje = "Mantente alerta... Jajaja";
                                break;
                            case 4:
                                mensaje = "Ja, te ha salvado la protección de la ciudad";
                                break;
                        }   
                    }
                } 
            } else if ((!enemigo && !obj_pj.muerto) || (idIAAux != -1 && (!pk && !idIAAux.pk))) {
                if (obj_pj.invisible) {
                    if (idIAAux == -1) {
                        mensaje = "¿Hay alguien ahí?";
                    }
                    if ((!obj_pj.pk && !pk) && (yaHabloEnojado1 || yaHabloEnojado2 || yaHabloEnojado3)) {
                        if (tiempoEnView >= 3600) {
                        
                            var randEnojado = floor(random(3));
                        
							if (rangoFaccion == 0) {
	                            
								switch (randEnojado) {
	                                case 0:
	                                    mensaje = "¡Te lo advertí!";        
	                                    break;
	                                case 1:
	                                    mensaje = "¡Ahora me las pagarás!";        
	                                    break;
	                                case 2:
	                                    mensaje = "Si lo quieres de la forma difícil...";        
	                                    break;
	                            }
								
                            
	                            pk = true;
	                            alarm[5] = 1;
								
							} else {
							
								switch (randEnojado) {
	                                case 0:
	                                    mensaje = "De no ser por mi lealtad la habrías pagado...";        
	                                    break;
	                                case 1:
	                                    mensaje = "No vales la pena...";        
	                                    break;
	                                case 2:
	                                    mensaje = "¡En otro momento de mi vida te habría aniquilado!";        
	                                    break;
	                            }
							
							}
                            
                        } else {
                            mensaje = "¡Quienquiera que seas, vete!";
                        }                        
                    }
                } else {
                
                    var randEnojado = floor(random(3));
                
                    if (tiempoEnView >= 3600) {
						if (rangoFaccion == 0) {
	                        switch (randEnojado) {
	                            case 0:
	                                mensaje = "¡Te lo advertí!";        
	                                break;
	                            case 1:
	                                mensaje = "¡Ahora me las pagarás!";        
	                                break;
	                            case 2:
	                                mensaje = "Si lo quieres de la forma difícil...";        
	                                break;
	                        }               
	                        pk = true;         
						} else {
							switch (randEnojado) {
	                            case 0:
	                                mensaje = "De no ser por mi lealtad la habrías pagado...";        
	                                break;
	                            case 1:
	                                mensaje = "No vales la pena...";        
	                                break;
	                            case 2:
	                                mensaje = "¡En otro momento de mi vida te habría aniquilado!";        
	                                break;
	                        }
						}
                    } else if (tiempoEnView >= 2700) {
                        switch (randEnojado) {
                            case 0:
                                mensaje = "Lárgate. ¡Ahora!";      
                                break;
                            case 1:
                                mensaje = "En tu lugar me largaría...";        
                                break;
                            case 2:
                                mensaje = "Vete si quieres sobrevivir...";        
                                break;
                        }        
                    } else if (tiempoEnView >= 1800) {
                        switch (randEnojado) {
                            case 0:
                                mensaje = "Déjame solo...";    
                                break;
                            case 1:
                                mensaje = "Vete por favor, necesito soledad";        
                                break;
                            case 2:
                                mensaje = "¿Podrías retirarte? Gracias...";        
                                break;
                        }        
                    } else {
                        if (!obj_mapas_mundo.mapas[room]) {
                            switch (rand) {
                                case 0:
                                    mensaje = "Que tal...";
                                    break;
                                case 1:
                                    mensaje = "Buenos días, viajero";
                                    break;
                                case 2:
                                    mensaje = "Lindo día ¿Eh?";
                                    break;
                                case 3:
                                    mensaje = "¿Entrenando un poco?";
                                    break;
                                case 4:
                                    mensaje = "¡Saludos, Noble!";
                                    break;
                            }
                        } else {
                            switch (rand) {
                                case 0:
                                    mensaje = "Hogar, dulce hogar...";
                                    break;
                                case 1:
                                    mensaje = "Ten cuidado ¡Afuera hay muchos criminales!";
                                    break;
                                case 2:
                                    mensaje = "¿Es seguro allá afuera?";
                                    break;
                                case 3:
                                    mensaje = "Amo esta ciudad...";
                                    break;
                                case 4:
                                    mensaje = "Este pueblo me recuerda a mi hogar...";
                                    break;
                            }   
                        }
                    }
                }
            }
            
            var idINFO = instance_create(x, y, obj_INFO);
            idINFO.texto = mensaje;
            idINFO.padre = id;
            idINFO.tiempo = 60 * 5;
        
        } else {
            
            gano = false;
            yaHablo = true;
            
            var mensaje = "";
            var rand = floor(random(5));
            
            switch (rand) {
                case 0:
                    mensaje = "¡Has caído! ¡Jajaja!";
                    break;
                case 1:
                    mensaje = "He triunfado una vez más...";
                    break;
                case 2:
                    mensaje = "Eres débil...";
                    break;
                case 3:
                    mensaje = "¡Eso fue corto!";
                    break;
                case 4:
                    mensaje = "Lástima... ¡Jajaja!";
                    break;
            }
            
            var idINFO = instance_create(x, y, obj_INFO);
            idINFO.texto = mensaje;
            idINFO.padre = id;
            idINFO.tiempo = 60 * 5;
        
        }
        
    }
    
    if (obj_pj.pk) {
        tiempoEnView = 0;
        yaHabloEnojado1 = false;
        yaHabloEnojado2 = false;
        yaHabloEnojado3 = false;
    }    

}

if (enemigo && !obj_pj.muerto && !obj_mapas_mundo.mapas[room]) {
    if (distance_to_object(obj_pj) > 500) {
        agitando = false;
    } else {
        agitando = true;
    }
} else {
    
    var idIAAux = elegirIAObjetivoIA(true);

    if (!obj_mapas_mundo.mapas[room] && idIAAux != -1 && !idIAAux.muerto) {
        with (idIAAux) {
            if (!other.agitando) {
                other.agitando = true;
                other.alarm[5] = 1;
            }
            if (!agitando) {
                agitando = true;
                alarm[5] = 1;
            }
        }
    } else {
        agitando = false;
    }
    
}

var condicionAValida = !muerto && clase == 0 && !obj_pj.muerto && inmovilizado && agitando && enemigo && xObjetivo == x && yObjetivo == y;
var condicionBValida = !muerto && clase == 0 && agitando && xObjetivo == x && yObjetivo == y;

if (condicionAValida) {

    if (place_meeting(x + 32, y, obj_pj)) {
        direccion = 3;
    } else if (place_meeting(x - 32, y, obj_pj)) {
        direccion = 2;
    } else if (place_meeting(x, y + 32, obj_pj)) {
        direccion = 0;
    } else if (place_meeting(x, y - 32, obj_pj)) {
        direccion = 1;
    }

}

if (condicionBValida) {

    var idPersonaCercana;
    
    if (place_meeting(x + 32, y, obj_persona)) {
        idPersonaCercana = instance_place(x + 32, y, obj_persona);
        if (!idPersonaCercana.muerto && (idPersonaCercana.pk || pk)) {
            direccion = 3;
        }
    } else if (place_meeting(x - 32, y, obj_persona)) {
        idPersonaCercana = instance_place(x - 32, y, obj_persona);
        if (!idPersonaCercana.muerto && (idPersonaCercana.pk || pk)) {
            direccion = 2;
        }
    } else if (place_meeting(x, y + 32, obj_persona)) {
        idPersonaCercana = instance_place(x, y + 32, obj_persona);
        if (!idPersonaCercana.muerto && (idPersonaCercana.pk || pk)) {
            direccion = 0;
        }
    } else if (place_meeting(x, y - 32, obj_persona)) {
        idPersonaCercana = instance_place(x, y - 32, obj_persona);
        if (!idPersonaCercana.muerto && (idPersonaCercana.pk || pk)) {
            direccion = 1;
        }
    }

}

// Tiempo lejos del PJ

if (
(x < __view_get( e__VW.XView, 0 ) || (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
(y < __view_get( e__VW.YView, 0 ) || (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
) {
    tiempoLejosPJ++;
    if (!enemigo) {
        if (tiempoLejosPJ >= 2700) {
            instance_destroy();
            obj_respawn_personas.alarm[0] = 1;
        }
    } else {
        if (tiempoLejosPJ >= 3600) {
            instance_destroy();
            obj_respawn_personas.alarm[0] = 1;
        }
    }
} else {
    tiempoLejosPJ = 0;
}

// Movimiento random

siguiendo = false;   
puedeMoverse = true;
    
if (!muerto && !moviendose && pasos == 0) {

    xInicio = x;
    yInicio = y;
    
    if (
    place_meeting(x, y - 32, obj_npc_basic) ||
    place_meeting(x, y + 32, obj_npc_basic) ||
    place_meeting(x - 32, y, obj_npc_basic) ||
    place_meeting(x + 32, y, obj_npc_basic)
    ) {
        alarm[5] = 1;
    }
    
    if (
    (
    (place_meeting(x + 32, y, obj_bloque_basic) && direccion == 3) ||
    (place_meeting(x - 32, y, obj_bloque_basic) && direccion == 2) ||
    (place_meeting(x, y + 32, obj_bloque_basic) && direccion == 0) ||
    (place_meeting(x, y - 32, obj_bloque_basic) && direccion == 1)
    ) 
    ||
    (
    (place_meeting(x + 32, y, obj_telep) && direccion == 3) ||
    (place_meeting(x - 32, y, obj_telep) && direccion == 2) ||
    (place_meeting(x, y + 32, obj_telep) && direccion == 0) ||
    (place_meeting(x, y - 32, obj_telep) && direccion == 1)
    ) 
    ||
    (
    !navega &&
    (
    (place_meeting(x + 32, y, obj_bloqueo_agua) && direccion == 3) ||
    (place_meeting(x - 32, y, obj_bloqueo_agua) && direccion == 2) ||
    (place_meeting(x, y + 32, obj_bloqueo_agua) && direccion == 0) ||
    (place_meeting(x, y - 32, obj_bloqueo_agua) && direccion == 1)
    ) 
    )
    ||
    (
    (obj_pj.muerto || !agitando) &&
    (
    (place_meeting(x + 32, y, obj_pj) && direccion == 3) ||
    (place_meeting(x - 32, y, obj_pj) && direccion == 2) ||
    (place_meeting(x, y + 32, obj_pj) && direccion == 0) ||
    (place_meeting(x, y - 32, obj_pj) && direccion == 1)
    )
    )
    ) {
        alarm[5] = 1;
    }
    
    /*
    
    if (agitando && !muerto) {
        if (place_meeting(x + 32, y, obj_pj)) {
            direccion = 3;
        } else if (place_meeting(x - 32, y, obj_pj)) {
            direccion = 2;
        } else if (place_meeting(x, y + 32, obj_pj)) {
            direccion = 0;
        } else if (place_meeting(x, y - 32, obj_pj)) {
            direccion = 1;
        }
    }        
    
    */
    
    bloqueo = false;
    
    if (ordenMovimientos == 0) {
    
        if (y > yObjetivo) {
    
            if (!navega) {
                bloqueo = place_meeting(x, y - 32, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x, y - 32, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x, y - 32, obj_bloqueo_tierra);
                }
            }
                     
            if (
            !place_meeting(x, y - 32, obj_pj) &&
            !place_meeting(x, y - 32, obj_npc_basic) && 
            !place_meeting(x, y - 32, obj_bloque_basic) &&   
            !place_meeting(x, y - 32, obj_telep) &&             
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                y -= spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 1;
            
        } else if (y < yObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x, y + 32, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x, y + 32, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x, y + 32, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x, y + 32, obj_pj) && 
            !place_meeting(x, y + 32, obj_npc_basic) && 
            !place_meeting(x, y + 32, obj_bloque_basic) &&   
            !place_meeting(x, y + 32, obj_telep) &&         
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                y += spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 0;
            
        } else if (x > xObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x - 32, y, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x - 32, y, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x - 32, y, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x - 32, y, obj_pj) &&
            !place_meeting(x - 32, y, obj_npc_basic) && 
            !place_meeting(x - 32, y, obj_bloque_basic) &&   
            !place_meeting(x - 32, y, obj_telep) &&   
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                x -= spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 2;
        
        } else if (x < xObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x + 32, y, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x + 32, y, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x + 32, y, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x + 32, y, obj_pj) &&
            !place_meeting(x + 32, y, obj_npc_basic) && 
            !place_meeting(x + 32, y, obj_bloque_basic) &&   
            !place_meeting(x + 32, y, obj_telep) &&   
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                x += spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 3;
            
        }
        
    } else if (ordenMovimientos == 1) {
        
        if (x > xObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x - 32, y, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x - 32, y, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x - 32, y, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x - 32, y, obj_pj) &&
            !place_meeting(x - 32, y, obj_npc_basic) && 
            !place_meeting(x - 32, y, obj_bloque_basic) &&   
            !place_meeting(x - 32, y, obj_telep) &&   
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                x -= spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 2;
        
        } else if (x < xObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x + 32, y, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x + 32, y, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x + 32, y, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x + 32, y, obj_pj) && 
            !place_meeting(x + 32, y, obj_npc_basic) && 
            !place_meeting(x + 32, y, obj_bloque_basic) &&   
            !place_meeting(x + 32, y, obj_telep) &&   
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                x += spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 3;
            
        } else if (y > yObjetivo) {
    
            if (!navega) {
                bloqueo = place_meeting(x, y - 32, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x, y - 32, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x, y - 32, obj_bloqueo_tierra);
                }
            }
            
            if (
            !place_meeting(x, y - 32, obj_pj) &&
            !place_meeting(x, y - 32, obj_npc_basic) && 
            !place_meeting(x, y - 32, obj_bloque_basic) &&   
            !place_meeting(x, y - 32, obj_telep) &&             
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                y -= spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 1;
            
        } else if (y < yObjetivo) {
        
            if (!navega) {
                bloqueo = place_meeting(x, y + 32, obj_bloqueo_agua);
            } else {
                if (!enBarca) {
                    enBarca = place_meeting(x, y + 32, obj_bloqueo_agua);
                } else {
                    enBarca = !place_meeting(x, y + 32, obj_bloqueo_tierra);
                }
            }
        
            if (
            !place_meeting(x, y + 32, obj_pj) && 
            !place_meeting(x, y + 32, obj_npc_basic) && 
            !place_meeting(x, y + 32, obj_bloque_basic) && 
            !place_meeting(x, y + 32, obj_telep) &&         
            !bloqueo
            ) {
                alarm[1] = 1;
                moviendose = true;
                y += spd;
                pasos++;
            } else {
                pasos = 0;
                if (!agitando) {
                    alarm[5] = 1;
                }
            }
            
            direccion = 0;
            
        }
        
    }
    
}

// En grilla

if (pasos > 0) {

    var chancesFreno = 8.5;

    switch (direccion) {
        case 0:
            if (pasos < pasosMax) {
                y += spd;
                pasos++;
            } else { 
                y += spdUltimoPaso;
                y = floor(y);
                pasos = 0;
                if (!muerto && !inmovilizado) {
                    if (moviendose || puedeMoverse) {
                        reproducirPaso(enBarca);
                        moviendose = false;
                        puedeMoverse = false;
                        if (random(10) > 5) {
                            ordenMovimientos = 0; 
                        } else {
                            ordenMovimientos = 1; 
                        }
                        if (xObjetivo >= x - 32 && xObjetivo <= x + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                xObjetivo = x;
                            }
                        }
                        if (yObjetivo >= y - 32 && yObjetivo <= y + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                yObjetivo = y;
                            }
                        }
                        if (!agitando && random(10) > chancesFreno) {
                            xObjetivo = x;
                            yObjetivo = y;
                        } else {
                            alarm[0] = 1;
                        }
                    }
                } else {
                    alarm[5] = 1;
                }
            }
            break;
        case 1:
            if (pasos < pasosMax) {
                y -= spd;
                pasos++;
            } else {
                y -= spdUltimoPaso;
                y = floor(y);
                y++;
                pasos = 0;
                if (!muerto && !inmovilizado) {
                    if (moviendose || puedeMoverse) {
                        reproducirPaso(enBarca);
                        moviendose = false;
                        puedeMoverse = false;
                        if (random(10) > 5) {
                            ordenMovimientos = 0; 
                        } else {
                            ordenMovimientos = 1; 
                        }
                        if (xObjetivo >= x - 32 && xObjetivo <= x + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                xObjetivo = x;
                            }
                        }
                        if (yObjetivo >= y - 32 && yObjetivo <= y + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                yObjetivo = y;
                            }
                        }
                        if (!agitando && random(10) > chancesFreno) {
                            xObjetivo = x;
                            yObjetivo = y;
                        } else {
                            alarm[0] = 1;
                        }
                    }
                } else {
                    alarm[5] = 1;
                }
            }
            break;
        case 2:
            if (pasos < pasosMax) {
                x -= spd;
                pasos++;
            } else { 
                x -= spdUltimoPaso;
                x = floor(x);
                x++;
                pasos = 0;
                if (!muerto && !inmovilizado) {
                    if (moviendose || puedeMoverse) {
                        reproducirPaso(enBarca);
                        moviendose = false;
                        puedeMoverse = false;
                        if (random(10) > 5) {
                            ordenMovimientos = 0; 
                        } else {
                            ordenMovimientos = 1; 
                        }
                        if (xObjetivo >= x - 32 && xObjetivo <= x + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                xObjetivo = x;
                            }
                        }
                        if (yObjetivo >= y - 32 && yObjetivo <= y + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                yObjetivo = y;
                            }
                        }
                        if (!agitando && random(10) > chancesFreno) {
                            xObjetivo = x;
                            yObjetivo = y;
                        } else {
                            alarm[0] = 1;
                        }
                    }
                } else {
                    alarm[5] = 1;
                }
            }
            break;
        case 3:
            if (pasos < pasosMax) {
                x += spd;
                pasos++;
            } else {
                x += spdUltimoPaso;
                x = floor(x);
                pasos = 0;
                if (!muerto && !inmovilizado) {
                    if (moviendose || puedeMoverse) {
                        reproducirPaso(enBarca);
                        moviendose = false;
                        puedeMoverse = false;
                        if (random(10) > 5) {
                            ordenMovimientos = 0; 
                        } else {
                            ordenMovimientos = 1; 
                        }
                        if (xObjetivo >= x - 32 && xObjetivo <= x + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                xObjetivo = x;
                            }
                        }
                        if (yObjetivo >= y - 32 && yObjetivo <= y + 32) {
                            if (agitando) {
                                if (!obj_pj.inmovilizado) {
                                    alarm[5] = 1;
                                }
                            } else {
                                yObjetivo = y;
                            }
                        }
                        if (!agitando && random(10) > chancesFreno) {
                            xObjetivo = x;
                            yObjetivo = y;
                        } else {
                            alarm[0] = 1;
                        }
                    }
                } else {
                    alarm[5] = 1;
                }
            }
            break;
    }
    
} else if (pasos == 0) {
    if (random(10) > 5) {
        ordenMovimientos = 0; 
    } else {
        ordenMovimientos = 1; 
    }
}

// Depth

if (
(x >= __view_get( e__VW.XView, 0 ) && (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
(y >= __view_get( e__VW.YView, 0 ) - __view_get( e__VW.WView, 0 ) / 2 && (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.WView, 0 ) / 2))
) {

    if (y < obj_pj.y) {
        depth = obj_pj.depth + obj_pj.y - y;
    } else if (y > obj_pj.y) {
        depth = obj_pj.depth - y + obj_pj.y;
    } else {
        depth = obj_pj.depth;
    }

}

// Desaparece

if (muerto) {
    image_alpha -= 0.0015;
}

if (image_alpha <= 0) {
    instance_destroy();
}


/* */
/*  */
