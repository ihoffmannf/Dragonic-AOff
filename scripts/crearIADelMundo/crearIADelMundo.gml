/// @description  crearIADelMundo()
function crearIADelMundo() {

	/*

	datosIA[0] = x;
	datosIA[1] = y;
	datosIA[2] = enemigo;
	datosIA[3] = direccion;
	datosIA[4] = yaHabloEnojado1;
	datosIA[5] = yaHabloEnojado2;
	datosIA[6] = yaHabloEnojado3;
	datosIA[7] = genero;
	datosIA[8] = clase;
	datosIA[9] = nroRaza;
	datosIA[10] = saludMax;
	datosIA[11] = salud;
	datosIA[12] = manaMax;
	datosIA[13] = mana;
	datosIA[14] = nombre;
	datosIA[15] = danoMeleeMin;
	datosIA[16] = danoMeleeMax;
	datosIA[17] = evasion;
	datosIA[18] = eqArma;
	datosIA[19] = eqRopa;
	datosIA[20] = eqCascoGorro;
	datosIA[21] = eqEscudo;
	datosIA[22] = eqFlechas;
	datosIA[23] = pk;
	datosIA[24] = enBarca;
	datosIA[25] = sprCabeza;
	datosIA[26] = inmovilizado;
	datosIA[27] = agitando;
	datosIA[28] = yaHablo;
	datosIA[29] = tiempoEnView;
	datosIA[30] = alarm[4];
	datosIA[31] = alarm[8];
	datosIA[32] = tiempoLejosPJ;
	datosIA[33] = TPCerca;
	datosIA[34] = distTPCerca;
	datosIA[35] = TPCerca.x;
	datosIA[36] = TPCerca.y;
	datosIA[37] = TPCerca.xTP;
	datosIA[38] = TPCerca.yTP;
	datosIA[39] = TPCerca.visible;
	datosIA[40] = room;
	datosIA[41] = lugarEnGlobalIA;
	datosIA[42] = alarm[7];
	datosIA[43] = puedeCrear;
	datosIA[44] = sigueAlOtroMapa;

	*/

	for (var iAux = 0; iAux < totalMultiIA; iAux++) {

	    datosIA = globalIA[iAux];

	    var valido = true;
    
	    if (datosIA[0] != -1) {
	        if (datosIA[43]) {
	            if (crea) {
	                if (datosIA[40] != roomAnterior) {
	                    valido = false;
	                }
	            } else {
	                if (datosIA[40] != room) {
	                    valido = false;
	                }
	            }
	        } else {
	            valido = false;
	        }
	    } else {
	        valido = false;
	    }
    
	    if (valido) {  
        
	        var creoEfectoLogin = false;
    
	        if (datosIA[33] != -1 && crea) {
	            if (datosIA[39]) {
	                creoEfectoLogin = true;
	            }
	            datosIA[0] = datosIA[37];
	            datosIA[1] = datosIA[38];
	        }  
    
	        var switchMod = -1;
            
	        if (direccionPJ != -1) {
	            switchMod = direccionPJ;
	        } else {
	            switchMod = datosIA[3];
	        }
    
	        switch (switchMod) { // Controlo la dirección para saber si sumo/resto a la x/y
	            case 0: // Está avanzando hacia abajo  
	                while (datosIA[1] % 16 != 0 || datosIA[1] % 32 == 0) {
	                    datosIA[1]++;
	                }
	                break;
	            case 1: // Está avanzando hacia arriba  
	                while (datosIA[1] % 16 != 0 || datosIA[1] % 32 == 0) {
	                    datosIA[1]--;
	                }
	                break;
	            case 2: // Está avanzando hacia la izquierda  
	                while (datosIA[0] % 16 != 0 || datosIA[0] % 32 == 0) {
	                    datosIA[0]--;
	                }                
	                break;
	            case 3: // Está avanzando hacia la izquierda  
	                while (datosIA[0] % 16 != 0 || datosIA[0] % 32 == 0) {
	                    datosIA[0]++;
	                }
	                break;
	        } 
        
	        while ( // Mientras que haya algún bloqueo...
	        instance_position(datosIA[0], datosIA[1] - 16, obj_pj) != noone ||
	        instance_position(datosIA[0], datosIA[1] - 16, obj_bloque_basic) != noone || 
	        instance_position(datosIA[0], datosIA[1] - 16, obj_bloque) != noone || 
	        instance_position(datosIA[0], datosIA[1] - 16, obj_npc_basic) != noone
	        ) {
            
	            /*
	            switch (switchMod) {
	                case 0:
	                    datosIA[1] -= 32;
	                    break;
	                case 1:
	                    datosIA[1] += 32;
	                    break;
	                case 2:
	                    datosIA[0] += 32;
	                    break;
	                case 3:
	                    datosIA[0] -= 32;
	                    break;
	            }
	            */
            
	            switch (switchMod) {
	                case 0:
	                    datosIA[1] += 32;
	                    break;
	                case 1:
	                    datosIA[1] -= 32;
	                    break;
	                case 2:
	                    datosIA[0] -= 32;
	                    break;
	                case 3:
	                    datosIA[0] += 32;
	                    break;
	            }
            
	        }
        
	        tile1 = tile_layer_find(10000000, datosIA[0], datosIA[1]);
	        tile2 = tile_layer_find(1000000, datosIA[0], datosIA[1]);
	        tile3 = tile_layer_find(100000, datosIA[0], datosIA[1]);
            
	        if (tile1 != -1 || tile2 != -1 || tile3 != -1) { // Si hay algún tipo de suelo
	            datosIA[24] = false;
	        } else {
        
	            datosIA[24] = true;
            
	            if (obj_pj.nivel < 25) {
	                datosIA[0] = -1;
	            }
            
	        }
        
	        if (datosIA[0] != -1) {
        
	            var idIA = instance_create(datosIA[0], datosIA[1], obj_persona);             
	            idIA.enemigo = datosIA[2]; 
	            idIA.direccion = datosIA[3]; 
	            idIA.yaHabloEnojado1 = datosIA[4]; 
	            idIA.yaHabloEnojado2 = datosIA[5]; 
	            idIA.yaHabloEnojado3 = datosIA[6]; 
	            idIA.genero = datosIA[7]; 
	            idIA.clase = datosIA[8]; 
	            idIA.nroRaza = datosIA[9]; 
	            idIA.saludMax = datosIA[10]; 
	            idIA.salud = datosIA[11]; 
	            idIA.manaMax = datosIA[12]; 
	            idIA.mana = datosIA[13]; 
	            idIA.nombre = datosIA[14]; 
	            idIA.danoMeleeMin = datosIA[15]; 
	            idIA.danoMeleeMax = datosIA[16]; 
	            idIA.evasion = datosIA[17]; 
            
	            idIA.eqArma = datosIA[18]; 
	            idIA.eqRopa = datosIA[19]; 
	            idIA.eqCascoGorro = datosIA[20]; 
	            idIA.eqEscudo = datosIA[21]; 
	            idIA.eqFlechas = datosIA[22]; 
            
	            idIA.vecItems[0] = datosIA[18]; 
	            idIA.vecItems[1] = datosIA[19]; 
	            idIA.vecItems[2] = datosIA[20]; 
	            idIA.vecItems[3] = datosIA[21]; 
	            idIA.vecItems[4] = datosIA[22]; 
            
	            idIA.pk = datosIA[23]; 
	            idIA.rangoFaccion = datosIA[45]; 
	            idIA.enBarca = datosIA[24];
            
	            if (datosIA[24]) {
	                idIA.sprite_index = spr_barca;
	            }
            
	            idIA.sprCabeza = datosIA[25];
	            idIA.inmovilizado = datosIA[26];
	            idIA.agitando = datosIA[27];
            
	            if (obj_mapas_mundo.mapas[room] && datosIA[2]) {
	                idIA.yaHablo = false;
	            } else {
	                idIA.yaHablo = datosIA[28];
	            }            
            
	            idIA.tiempoEnView = datosIA[29];
	            idIA.alarm[4] = datosIA[30];
	            idIA.alarm[7] = datosIA[42];
	            idIA.alarm[8] = datosIA[31];
	            idIA.tiempoLejosPJ = datosIA[32];
	            idIA.TPCerca = -1;
            
	            idIA.image_index = idIA.index[idIA.direccion, 0];
	            idIA.graficoArma.image_index = idIA.graficoArma.index[idIA.direccion, 0];
	            idIA.graficoEscudo.image_index = idIA.graficoEscudo.index[idIA.direccion, 0];
    
	            idIA.vecItems = itemsGlobalIA[iAux];
	            idIA.cantItems = cantItemsGlobalIA[iAux];
            
	            var aux;
	            aux[0] = -1;
	            globalIA[datosIA[41]] = aux;
            
	            with (idIA) {
	                guardarDatosIAEnGlobalIA();   
	            }
            
	            if (creoEfectoLogin) {
	                var idEfecto = instance_create(idIA.x, idIA.y, obj_efecto_login);
	                idEfecto.padre = idIA;
	                reproducirSonido(snd_logueo, false, false);
	            }
            
	            actualizarCiudas();
            
	            // Lleno el inventario de la IA
            
	            /*
            
	            for (var i = 0; i < 20; i++) {
	                idIA.vecItems[i] = vecItemsIA[i];
	                idIA.cantItems[i] = cantItemsIA[i];
	            }
            
	            */
                
	        }
        
	    }

	}



}
