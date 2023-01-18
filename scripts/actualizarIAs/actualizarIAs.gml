/// @description  actualizarIAs()
function actualizarIAs() {

	if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {  

	    with (obj_persona) {
        
	        if (!muerto) {
                    
	            // Guardo el inventario
            
	            /*
            
	            var vecItemsIA;
	            vecItemsIA[0] = -1;
	            var cantItemsIA;
	            cantItemsIA[0] = -1;
            
	            for (var i = 0; i < 20; i++) {
	                vecItemsIA[i] = vecItems[i];
	                cantItemsIA[i] = cantItems[i];
	            }
            
	            */
        
	            // Lo guardo y lo destruyo
            
	            for (var i = 0; i < 46; i++) {
	                datosIAAux[i] = -1;
	            }
            
	            x = floor(x);
	            y = floor(y);
            
	            datosIAAux[0] = x;
	            datosIAAux[1] = y;
	            datosIAAux[2] = enemigo;
	            datosIAAux[3] = direccion;
	            datosIAAux[4] = yaHabloEnojado1;
	            datosIAAux[5] = yaHabloEnojado2;
	            datosIAAux[6] = yaHabloEnojado3;
	            datosIAAux[7] = genero;
	            datosIAAux[8] = clase;
	            datosIAAux[9] = nroRaza;
	            datosIAAux[10] = saludMax;
	            datosIAAux[11] = salud;
	            datosIAAux[12] = manaMax;
	            datosIAAux[13] = mana;
	            datosIAAux[14] = nombre;
	            datosIAAux[15] = danoMeleeMin;
	            datosIAAux[16] = danoMeleeMax;
	            datosIAAux[17] = evasion;
            
	            datosIAAux[18] = eqArma;
	            datosIAAux[19] = eqRopa;
	            datosIAAux[20] = eqCascoGorro;
	            datosIAAux[21] = eqEscudo;
	            datosIAAux[22] = eqFlechas;
            
	            datosIAAux[23] = pk;
	            datosIAAux[24] = enBarca;
	            datosIAAux[25] = sprCabeza;
	            datosIAAux[26] = inmovilizado;        
	            datosIAAux[27] = agitando;
            
	            datosIAAux[28] = yaHablo;
	            datosIAAux[29] = tiempoEnView;
	            datosIAAux[30] = alarm[4];
	            datosIAAux[31] = alarm[8];
	            datosIAAux[32] = tiempoLejosPJ;
            
	            // Si hay un teletransporte en la view y la IA esta cerca del PJ
            
	            TPCerca = -1;
            
	            with (obj_tp) {
	                if (place_meeting(x, y, obj_pj)) {
	                    other.TPCerca = id;
	                    break;
	                }
	            }
            
	            datosIAAux[33] = TPCerca;
            
	            if (TPCerca != -1) {
	                datosIAAux[34] = distance_to_object(TPCerca);
	                datosIAAux[35] = TPCerca.x;
	                datosIAAux[36] = TPCerca.y;
	                datosIAAux[37] = TPCerca.xTP;
	                datosIAAux[38] = TPCerca.yTP;
	                datosIAAux[39] = TPCerca.visible;
	            }        
            
	            datosIAAux[40] = room;
            
	            if (moviendose || puedeMoverse) { // Si se está moviendo...
            
	                switch (direccion) { // Controlo la dirección para saber si sumo/resto a la x/y
	                    case 0: // Está avanzando hacia abajo  
	                        while (y % 16 != 0 || y % 32 == 0) {
	                            y++;
	                        }
	                        break;
	                    case 1: // Está avanzando hacia arriba  
	                        while (y % 16 != 0 || y % 32 == 0) {
	                            y--;
	                        }
	                        break;
	                    case 2: // Está avanzando hacia la izquierda  
	                        while (x % 16 != 0 || x % 32 == 0) {
	                            x--;
	                        }
	                        break;
	                    case 3: // Está avanzando hacia la derecha  
	                        while (x % 16 != 0 || x % 32 == 0) {
	                            x++;
	                        }
	                        break;
	                }
            
	                datosIAAux[0] = x;
	                datosIAAux[1] = y;
                
	            }
            
	            var i = 0;
	            while (i < obj_personas_mundo.totalMultiIA) {
	                globalIAAux = obj_personas_mundo.globalIA[i];
	                if (globalIAAux[0] != -1 && globalIAAux[14] == nombre) {
	                    break;
	                }
	                i++;
	            }
	            datosIAAux[41] = i;
            
	            datosIAAux[42] = alarm[7];
	            datosIAAux[43] = false; // Ya puede crearse ya que alcanzó el límite de la room
	            datosIAAux[44] = sigue; // Indica si sigue o no al PJ
	            datosIAAux[45] = rangoFaccion;
            
	            obj_personas_mundo.globalIA[i] = datosIAAux;
	            obj_personas_mundo.itemsGlobalIA[i] = vecItems;
	            obj_personas_mundo.cantItemsGlobalIA[i] = cantItems;
            
	            instance_destroy();
                        
	        }

	    }
    
	}



}
