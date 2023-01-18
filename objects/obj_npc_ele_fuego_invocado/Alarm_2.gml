/// @description  Ataque a Persona

if (personaRoom != -1 && instance_exists(personaRoom)) {

    if (
    personaRoom.enemigo &&
    !personaRoom.muerto &&
    (personaRoom.x >= __view_get( e__VW.XView, 0 ) && (personaRoom.x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))) &&
    (personaRoom.y >= __view_get( e__VW.YView, 0 ) && (personaRoom.y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))
    ) {
    
        // Si la IA está viva y está dentro de la view
        
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
        distanciaX <= (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) * 0.5 &&
        distanciaY <= (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) * 0.5
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
                    var idHechizo = instance_create(personaRoom.x, personaRoom.y, obj_tormenta_de_fuego);
                    idHechizo.padre = personaRoom.id;
                    
                    var dano = floor(random_range(danoHechizoMin, danoHechizoMax));
                    var danoTotal = calcularDanoMagicoNPCaIA(dano, personaRoom);
                    idDano = instance_create(personaRoom.x, personaRoom.y - 41, obj_efecto_dano);
                    idDano.dano = danoTotal;
                    idDano.padre = personaRoom.id;
                    
					// Palabras mágicas
        
			        dicePalabrasMagicas = true;
			        palabrasMagicas = "EN VAX ON TAR";
			        alarm[9] = 180;
					
                    reproducirSonido(snd_tormentaDeFuego, false, false);
                    personaRoom.salud -= danoTotal;
                    
                    if (personaRoom.salud <= 0) {
                        if (personaRoom.pk) {
                            obj_pj.criminalesMatados++;
                        } else {
                            obj_pj.puntosPK = -1;
                            obj_pj.ciudadanosMatados++;
                        }
                    }
                    
                }
                
            }
        
        }
    
    }

}

alarm[2] = floor(random_range(intervaloAtaque * 0.85, intervaloAtaque * 1.15));

