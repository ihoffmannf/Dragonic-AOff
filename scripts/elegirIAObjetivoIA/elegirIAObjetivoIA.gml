/// @description  elegirIAObjetivoIA(recursivo)
/// @param recursivo
function elegirIAObjetivoIA(argument0) {

	if (!obj_pj.muerto && !hayEnemigosCerca() && ((pk && !obj_pj.pk) || (!pk && obj_pj.pk)) && (!obj_pj.invisible || (obj_pj.invisible && obj_pj.meditando))) { // Si no hay enemigos cerca y el PJ es de status contrario al de la IA
	    return -1;
	} else if (!obj_pj.inmovilizado || (hayEnemigosCerca() && (pk && obj_pj.pk)) || !enemigo) {

	    distanciaMinima = room_width * room_height;
	    IDIAdistanciaMinima = -1;
    
	    // Chequea si hay IAs inmovilizadas enemigas
    
	    if (pk) {
	        with (obj_persona) {
	            if (other.id != id) {
	                if (!other.pk && distance_to_object(other) <= 250 && inmovilizado) {
	                    other.IDIAdistanciaMinima = id;
	                    break;
	                }
	            }
	        }
	    } else if (!pk) {
	        with (obj_persona) {
	            if (other.id != id) {
	                if (other.pk && distance_to_object(other) <= 250 && inmovilizado) {
	                    other.IDIAdistanciaMinima = id;
	                    break;
	                }
	            }
	        }
	    }
    
	    // Si las IAs inmovilizadas son del mismo status...
    
	    if (IDIAdistanciaMinima == -1) {
	        with (obj_persona) {
	            if (other.id != id) {
	                if ((pk || other.pk) && distance_to_object(other) <= 250 && inmovilizado) {
	                    if (!hayEnemigosCerca()) { // No siempre PKs van a atacar a otros PKs
	                        other.IDIAdistanciaMinima = id;
	                        break;
	                    }
	                }
	            }
	        }
	    }
    
	    // Busca IAs enemigas
    
	    if (IDIAdistanciaMinima == -1) {
    
	        if (pk) {
        
	            // Chequea si hay IAs ciudadanas en caso de ser PK (Elije de entre todos los ciudadanos al más cercano)
        
	            with (obj_persona) {
	                if (other.id != id) {
	                    var nuevaDistancia = distance_to_object(other);
	                    if (!other.pk && distance_to_object(other) <= 250 && nuevaDistancia < other.distanciaMinima) {
	                        other.IDIAdistanciaMinima = id;
	                        other.distanciaMinima = nuevaDistancia;
	                    }
	                }
	            }
        
	        } else if (!pk) {
        
	            // Chequea si hay IAs PKs en caso de ser ciudadano (Elije de entre todos los PKs al más cercano)
        
	            with (obj_persona) {
	                if (other.id != id) {
	                    var nuevaDistancia = distance_to_object(other);
	                    if (other.pk && distance_to_object(other) <= 250 && nuevaDistancia < other.distanciaMinima) {
	                        other.IDIAdistanciaMinima = id;
	                        other.distanciaMinima = nuevaDistancia;
	                    }
	                }
	            }
        
	        }
    
	    }
    
	    // Sino busca por cercanía a IAs del mismo status
    
	    if (IDIAdistanciaMinima == -1) {
    
	        with (obj_persona) {
	            if (other.id != id) {
	                var nuevaDistancia = distance_to_object(other);
	                if ((pk || other.pk) && distance_to_object(other) <= 320 && nuevaDistancia < other.distanciaMinima) {
	                    if ((pk && other.pk)) { 
	                        if (!hayEnemigosCerca()) { // No siempre PKs van a atacar a otros PKs
	                            other.IDIAdistanciaMinima = id;
	                            other.distanciaMinima = nuevaDistancia;
	                        }
	                    } else {
	                        other.IDIAdistanciaMinima = id;
	                        other.distanciaMinima = nuevaDistancia;
	                    }
	                } else if (argument0 && (!other.pk && !pk) && distance_to_object(other) <= 250) {
	                    var otraIA = elegirIAObjetivoIA(false);
	                    if (otraIA != -1) {
	                        if ((pk && otraIA.pk)) { 
	                            if (!hayEnemigosCerca()) { // No siempre PKs van a atacar a otros PKs
	                                other.IDIAdistanciaMinima = otraIA;
	                                other.distanciaMinima = distance_to_object(otraIA);
	                            }
	                        } else {
	                            other.IDIAdistanciaMinima = otraIA;
	                            other.distanciaMinima = distance_to_object(otraIA);
	                        }
	                    }
	                }
	            }
	        }
    
	    }
    
	    return IDIAdistanciaMinima;

	} else {

	    // Pueden darse varios casos:
    
	    /*
    
	    La IA es PK y el PJ ciuda
	    LA IA es ciuda y el PJ PK
	    Ambos son PK
    
	    */
    
	    cantInmovilizados = 0;
    
	    inmovilizados[0] = -1;
	    inmovilizados[1] = -1;
	    inmovilizados[2] = -1;
	    inmovilizados[3] = -1;
	    inmovilizados[4] = -1;
	    inmovilizados[5] = -1;
	    inmovilizados[6] = -1;
	    inmovilizados[7] = -1;
	    inmovilizados[8] = -1;
	    inmovilizados[9] = -1;

	    with (obj_persona) {
	        if (id != other.id && inmovilizado) {
	            if (pk && !obj_pj.pk) {
	                if (!other.pk) {
	                    other.inmovilizados[other.cantInmovilizados] = id;
	                    other.cantInmovilizados++;
	                }
	            } else if (!pk && obj_pj.pk) {
	                if (other.pk) {
	                    other.inmovilizados[other.cantInmovilizados] = id;
	                    other.cantInmovilizados++;
	                }
	            } else if (pk && other.pk) {
	                // Este caso solo se da cuando quedan solo PKs agitando. El PJ es uno de ellos
	                other.inmovilizados[other.cantInmovilizados] = id;
	                other.cantInmovilizados++;
	            }
	        }    
	    }
    
	    if (cantInmovilizados > 0) {
	        var rand = random(cantInmovilizados);
	        if (rand > (cantInmovilizados - (cantInmovilizados * 0.5))) { // Hay una probabilidad de que la IA ataque al PJ
	            return -1; // Ataca al PJ
	        } else {
            
	            var idRet = -1;
        
	            for (var i = 0; i < cantInmovilizados; i++) {
	                if ((inmovilizados[i].pk && !pk) || (!inmovilizados[i].pk && pk)) {
	                    idRet = inmovilizados[i];
	                    break;
	                }
	            }    
        
	            if (idRet == -1) {
	                var IARandInmo = floor(random(cantInmovilizados));
	                if (IARandInmo >= 0) {
	                    return inmovilizados[IARandInmo]; // Ataca a otra IA random
	                } else {
	                    return inmovilizados[0];
	                }
	            } else {
	                return idRet; // La IA tiene preferencia por IAs enemigas
	            }
            
	        }
	    } else {
	        return -1; // Ataca al PJ si es el unico inmovilizado
	    }
    
	}












}
