/// @description  Trabaja

if (trabajando) {

    if (trabajaTala) {
        
        var cantidadMadera = 0;
                                
        if (skills[5] >= 0 && skills[5] <= 10) {
            cantidadMadera = 2;
        } else if (skills[5] >= 11 && skills[5] <= 20) {
            cantidadMadera = 3;
        }  else if (skills[5] >= 21 && skills[5] <= 30) {
            cantidadMadera = 4;
        }  else if (skills[5] >= 31 && skills[5] <= 40) {
            cantidadMadera = 5;
        }  else if (skills[5] >= 41 && skills[5] <= 50) {
            cantidadMadera = 6;
        }  else if (skills[5] >= 51 && skills[5] <= 60) {
            cantidadMadera = 7;
        }  else if (skills[5] >= 61 && skills[5] <= 70) {
            cantidadMadera = 8;
        }  else if (skills[5] >= 71 && skills[5] <= 80) {
            cantidadMadera = 9;
        }  else if (skills[5] >= 81 && skills[5] <= 90) {
            cantidadMadera = 10;
        }  else if (skills[5] >= 91 && skills[5] <= 99) {
            cantidadMadera = 11;
        }  else {
            cantidadMadera = 15;
        } 
    
        var existe = false;
        
        for (var i = 0; i < obj_inventario.maximoInv; i++) {
        
            if (obj_inventario.indiceInv[i] == 146) {
            
                if (obj_inventario.cantInv[i] + cantidadMadera <= 10000) {
                
                    // Hay lugar en slot existente
                    
                    existe = true;
                    obj_inventario.cantInv[i] += cantidadMadera;
                    
                    if (skills[5] < skillsNaturales[nivel]) {
                        if (random(10) > 6.5) {
                            obj_skills_libres.mostrado = false;
                            skills[5]++;
                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                            idSubirSkills.indice = 5;
                        }
                    }
                    
                    break;
                    
                }
                
            }
            
        }
        
        if (!existe) {
            
            var hayLugar = false;
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (obj_inventario.indiceInv[i] == -1) {
                
                    // Hay lugar en slot nuevo
                    
                    hayLugar = true;
                    datosItem = configurarItem(146);
                    
                    obj_inventario.indiceInv[i] = 146;
                    obj_inventario.tipoInv[i] = datosItem[0];
                    obj_inventario.cantInv[i] = cantidadMadera;
                    obj_inventario.generoInv[i] = datosItem[1];
                    obj_inventario.razaInv[i] = datosItem[2];
                    obj_inventario.nroSkillInv[i] = datosItem[3];
                    obj_inventario.skillRequeridoInv[i] = datosItem[4];
                    obj_inventario.clase0ValidaInv[i] = datosItem[5];
                    obj_inventario.clase1ValidaInv[i] = datosItem[6];
                    obj_inventario.clase2ValidaInv[i] = datosItem[7];
                    obj_inventario.clase3ValidaInv[i] = datosItem[8];
                    obj_inventario.clase4ValidaInv[i] = datosItem[9];
                    obj_inventario.clase5ValidaInv[i] = datosItem[10];
                    obj_inventario.clase6ValidaInv[i] = datosItem[11];
                    obj_inventario.clase7ValidaInv[i] = datosItem[12];
                    obj_inventario.clase8ValidaInv[i] = datosItem[13];
                    obj_inventario.nombreInv[i] = datosItem[14];
                    
                    if (skills[5] < skillsNaturales[nivel]) {
                        if (random(10) > 6.5) {
                            obj_skills_libres.mostrado = false;
                            skills[5]++;
                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                            idSubirSkills.indice = 5;
                        }
                    }
                    
                    break;
                    
                }
            }  
            
            if (!hayLugar) {
                trabajando = false;
                var idINFO = instance_create(x, y, obj_INFO);
                idINFO.padre = id;
                idINFO.texto = "Dejaste de trabajar";
                obj_pj.alarm[11] = -1;
            }
            
        }
        
        reproducirSonido(snd_talar, false, false);
        
        alarm[11] = 15;
    
    } else if (trabajaMineria && indiceMineral != -1) {
    
        var cantidadMinerales = 0;
                                
        if (skills[8] >= 0 && skills[8] <= 10) {
            cantidadMinerales = 2;
        } else if (skills[8] >= 11 && skills[8] <= 20) {
            cantidadMinerales = 3;
        }  else if (skills[8] >= 21 && skills[8] <= 30) {
            cantidadMinerales = 4;
        }  else if (skills[8] >= 31 && skills[8] <= 40) {
            cantidadMinerales = 5;
        }  else if (skills[8] >= 41 && skills[8] <= 50) {
            cantidadMinerales = 6;
        }  else if (skills[8] >= 51 && skills[8] <= 60) {
            cantidadMinerales = 7;
        }  else if (skills[8] >= 61 && skills[8] <= 70) {
            cantidadMinerales = 8;
        }  else if (skills[8] >= 71 && skills[8] <= 80) {
            cantidadMinerales = 9;
        }  else if (skills[8] >= 81 && skills[8] <= 90) {
            cantidadMinerales = 10;
        }  else if (skills[8] >= 91 && skills[8] <= 99) {
            cantidadMinerales = 11;
        }  else {
            cantidadMinerales = 15;
        } 
    
        var existe = false;
        
        for (var i = 0; i < obj_inventario.maximoInv; i++) {
        
            if (obj_inventario.indiceInv[i] == indiceMineral) {
            
                if (obj_inventario.cantInv[i] + cantidadMinerales <= 10000) {
                
                    // Hay lugar en slot existente
                    
                    existe = true;
                    obj_inventario.cantInv[i] += cantidadMinerales;
                    
                    if (skills[8] < skillsNaturales[nivel]) {
                        if (random(10) > 6.5) {
                            obj_skills_libres.mostrado = false;
                            skills[8]++;
                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                            idSubirSkills.indice = 8;
                        }
                    }
                    
                    break;
                    
                }
                
            }
            
        }
        
        if (!existe) {
            
            var hayLugar = false;
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (obj_inventario.indiceInv[i] == -1) {
                
                    // Hay lugar en slot nuevo
                    
                    hayLugar = true;
                    datosItem = configurarItem(indiceMineral);
                    
                    obj_inventario.indiceInv[i] = indiceMineral;
                    obj_inventario.tipoInv[i] = datosItem[0];
                    obj_inventario.cantInv[i] = cantidadMinerales;
                    obj_inventario.generoInv[i] = datosItem[1];
                    obj_inventario.razaInv[i] = datosItem[2];
                    obj_inventario.nroSkillInv[i] = datosItem[3];
                    obj_inventario.skillRequeridoInv[i] = datosItem[4];
                    obj_inventario.clase0ValidaInv[i] = datosItem[5];
                    obj_inventario.clase1ValidaInv[i] = datosItem[6];
                    obj_inventario.clase2ValidaInv[i] = datosItem[7];
                    obj_inventario.clase3ValidaInv[i] = datosItem[8];
                    obj_inventario.clase4ValidaInv[i] = datosItem[9];
                    obj_inventario.clase5ValidaInv[i] = datosItem[10];
                    obj_inventario.clase6ValidaInv[i] = datosItem[11];
                    obj_inventario.clase7ValidaInv[i] = datosItem[12];
                    obj_inventario.clase8ValidaInv[i] = datosItem[13];
                    obj_inventario.nombreInv[i] = datosItem[14];
                    
                    if (skills[8] < skillsNaturales[nivel]) {
                        if (random(10) > 6.5) {
                            obj_skills_libres.mostrado = false;
                            skills[8]++;
                            var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                            idSubirSkills.indice = 8;
                        }
                    }
                    
                    break;
                    
                }
            }  
            
            if (!hayLugar) {
                trabajando = false;
                var idINFO = instance_create(x, y, obj_INFO);
                idINFO.padre = id;
                idINFO.texto = "Dejaste de trabajar";
                obj_pj.alarm[11] = -1;
            }
            
        }
        
        reproducirSonido(snd_minar, false, false);
        
        alarm[11] = 45;
        
    } else if (trabajaFragua) {
    
        if (obj_inventario.seleccionado == 148 || obj_inventario.seleccionado == 149 || obj_inventario.seleccionado == 150) {
        
            var existe = false;
            var cantidadConsumida = 0;
            var indiceLingote = 0;
        
            switch (obj_inventario.seleccionado) {
                case 148:
                    cantidadConsumida = 6;
                    indiceLingote = 151;
                    break;
                case 149:
                    cantidadConsumida = 18;
                    indiceLingote = 152;
                    break;
                case 150:
                    cantidadConsumida = 34;
                    indiceLingote = 153;
                    break;
            }
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
            
                if (obj_inventario.indiceInv[i] == indiceLingote) {
                
                    if (obj_inventario.cantInv[i] + 1 <= 10000) {
                    
                        // Hay lugar en slot existente
                        
                        if (obj_inventario.posSeleccionado != -1) {
                            if (obj_inventario.cantInv[obj_inventario.posSeleccionado] > cantidadConsumida) {
                                obj_inventario.cantInv[obj_inventario.posSeleccionado] -= cantidadConsumida;
                                existe = true;
                                obj_inventario.cantInv[i]++;                        
                                break;
                            } else if (obj_inventario.cantInv[obj_inventario.posSeleccionado] = cantidadConsumida) {
                                obj_inventario.cantInv[obj_inventario.posSeleccionado] = 0;
                                obj_inventario.indiceInv[obj_inventario.posSeleccionado] = -1;
                                obj_inventario.tipoInv[obj_inventario.posSeleccionado] = "";
                                obj_inventario.equipadoInv[obj_inventario.posSeleccionado] = false;
                                obj_inventario.nombreInv[obj_inventario.posSeleccionado] = "Vacío";
                                existe = true;
                                obj_inventario.cantInv[i]++;                        
                                break;
                            }
                        }
                        
                    }
                    
                }
                
            }
            
            if (!existe) {
                
                var hayLugar = false;
            
                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                    if (obj_inventario.indiceInv[i] == -1) {
                    
                        // Hay lugar en slot nuevo
                        
                        var valido = false;
                        
                        if (obj_inventario.posSeleccionado != -1) {
                            if (obj_inventario.cantInv[obj_inventario.posSeleccionado] > cantidadConsumida) {
                                obj_inventario.cantInv[obj_inventario.posSeleccionado] -= cantidadConsumida;
                                valido = true;
                            } else if (obj_inventario.cantInv[obj_inventario.posSeleccionado] = cantidadConsumida) {
                                obj_inventario.cantInv[obj_inventario.posSeleccionado] = 0;
                                obj_inventario.indiceInv[obj_inventario.posSeleccionado] = -1;
                                obj_inventario.tipoInv[obj_inventario.posSeleccionado] = "";
                                obj_inventario.equipadoInv[obj_inventario.posSeleccionado] = false;
                                obj_inventario.nombreInv[obj_inventario.posSeleccionado] = "Vacío";
                                valido = true;
                            }
                        }
                        
                        if (valido) {
                        
                            hayLugar = true;
                            datosItem = configurarItem(indiceLingote);
                            
                            obj_inventario.indiceInv[i] = indiceLingote;
                            obj_inventario.tipoInv[i] = datosItem[0];
                            obj_inventario.cantInv[i] = 1;
                            obj_inventario.generoInv[i] = datosItem[1];
                            obj_inventario.razaInv[i] = datosItem[2];
                            obj_inventario.nroSkillInv[i] = datosItem[3];
                            obj_inventario.skillRequeridoInv[i] = datosItem[4];
                            obj_inventario.clase0ValidaInv[i] = datosItem[5];
                            obj_inventario.clase1ValidaInv[i] = datosItem[6];
                            obj_inventario.clase2ValidaInv[i] = datosItem[7];
                            obj_inventario.clase3ValidaInv[i] = datosItem[8];
                            obj_inventario.clase4ValidaInv[i] = datosItem[9];
                            obj_inventario.clase5ValidaInv[i] = datosItem[10];
                            obj_inventario.clase6ValidaInv[i] = datosItem[11];
                            obj_inventario.clase7ValidaInv[i] = datosItem[12];
                            obj_inventario.clase8ValidaInv[i] = datosItem[13];
                            obj_inventario.nombreInv[i] = datosItem[14];
                            
                            break;
                            
                        }
                        
                    }
                }  
                
                if (!hayLugar) {
                    trabajando = false;
                    var idINFO = instance_create(x, y, obj_INFO);
                    idINFO.padre = id;
                    idINFO.texto = "Dejaste de trabajar";
                    obj_pj.alarm[11] = -1;
                }
                
            }
            
            var intervaloFragua = 0;
                                
            if (skills[8] >= 0 && skills[8] <= 10) {
                intervaloFragua = 60;
            } else if (skills[8] >= 11 && skills[8] <= 20) {
                intervaloFragua = 55;
            }  else if (skills[8] >= 21 && skills[8] <= 30) {
                intervaloFragua = 50;
            }  else if (skills[8] >= 31 && skills[8] <= 40) {
                intervaloFragua = 45;
            }  else if (skills[8] >= 41 && skills[8] <= 50) {
                intervaloFragua = 40;
            }  else if (skills[8] >= 51 && skills[8] <= 60) {
                intervaloFragua = 35;
            }  else if (skills[8] >= 61 && skills[8] <= 70) {
                intervaloFragua = 30;
            }  else if (skills[8] >= 71 && skills[8] <= 80) {
                intervaloFragua = 25;
            }  else if (skills[8] >= 81 && skills[8] <= 90) {
                intervaloFragua = 20;
            }  else if (skills[8] >= 91 && skills[8] <= 99) {
                intervaloFragua = 15;
            }  else {
                intervaloFragua = 10;
            } 
            
            reproducirSonido(snd_minar, false, false);
            
            alarm[11] = intervaloFragua;
        
        } else {
            trabajando = false;
            var idINFO = instance_create(x, y, obj_INFO);
            idINFO.padre = id;
            idINFO.texto = "Dejaste de trabajar";
            obj_pj.alarm[11] = -1;
        }
        
    } else if (trabajaPesca) {
        if (trabajoActual == 155 || trabajoActual == 156) {
        
            // Hay agua... trabajo
            
            if (trabajoEquipado) {
                if (trabajoEnInv != -1) {  
                 
                    if (posPescaX == x && posPescaY == y) {
        
                        var cantidadMerluza = 0;
                        var cantidadPejerrey = 0;
                        var cantidadPezEspada = 0;
                        var cantidadSalmon = 0;
                        var cantidadCaballito = 0;
                             
                        // Sin barca          
                                 
                        if (skills[7] >= 0 && skills[7] <= 10) {
                            cantidadMerluza = 2;
                            cantidadPejerrey = 1;
                            cantidadPezEspada = 0;
                        } else if (skills[7] >= 11 && skills[7] <= 20) {
                            cantidadMerluza = 2;
                            cantidadPejerrey = 1;
                            cantidadPezEspada = 0;
                        }  else if (skills[7] >= 21 && skills[7] <= 30) {
                            cantidadMerluza = 2;
                            cantidadPejerrey = 1;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 31 && skills[7] <= 40) {
                            cantidadMerluza = 2;
                            cantidadPejerrey = 1;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 41 && skills[7] <= 50) {
                            cantidadMerluza = 3;
                            cantidadPejerrey = 1;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 51 && skills[7] <= 60) {
                            cantidadMerluza = 3;
                            cantidadPejerrey = 2;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 61 && skills[7] <= 70) {
                            cantidadMerluza = 3;
                            cantidadPejerrey = 2;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 71 && skills[7] <= 80) {
                            cantidadMerluza = 4;
                            cantidadPejerrey = 2;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 81 && skills[7] <= 90) {
                            cantidadMerluza = 5;
                            cantidadPejerrey = 3;
                            cantidadPezEspada = 1;
                        }  else if (skills[7] >= 91 && skills[7] <= 99) {
                            cantidadMerluza = 5;
                            cantidadPejerrey = 3;
                            cantidadPezEspada = 2;
                        }  else {
                            cantidadMerluza = 6;
                            cantidadPejerrey = 4;
                            cantidadPezEspada = 3;
                        } 
                        
                        if (skills[7] >= 71) {
                            cantidadSalmon = 1;
                            cantidadCaballito = 1;
                        }
                        
                        // Con barca
                        
                        if (navega) {
                        
                            cantidadMerluza = round(cantidadMerluza * 1.5);
                            cantidadPejerrey = round(cantidadPejerrey * 1.5);
                            cantidadPezEspada = round(cantidadPezEspada * 1.5);
                            cantidadSalmon = round(cantidadSalmon * 1.5);
                        
                            if (trabajoActual != 156) {
                                cantidadCaballito = 0;
                            } else {
                                cantidadCaballito = round(cantidadCaballito * 1.5);
                            }
                        
                        } else {
                            cantidadPezEspada = 0;
                            cantidadSalmon = 0;
                            cantidadCaballito = 0;
                        }
                        
                        // Randomizo
                        
                        if (random(10) > 7.5) {
                            cantidadPejerrey = 0;
                        }
                        if (random(10) > 5) {
                            cantidadPezEspada = 0;
                        }
                        if (random(10) > 3) {
                            cantidadSalmon = 0;
                        }
                        if (random(10) > 2) {
                            cantidadCaballito = 0;
                        }
                    
                        cantidadPeces[0] = cantidadMerluza;
                        cantidadPeces[1] = cantidadPejerrey;
                        cantidadPeces[2] = cantidadPezEspada;
                        cantidadPeces[3] = cantidadSalmon;
                        cantidadPeces[4] = cantidadCaballito;
                        
                        var indicePez = 111;
                        var iAux = 0;
                        
                        /*
                        
                            Merluza = 111;
                            Pejerrey = 112;
                            Pez Espada = 113;
                            Salmón = 114;
                            Caballito = 115;
                        
                        */
                        
                        repeat (5) {
                        
                            var existe = false;
                            
                            if (cantidadPeces[iAux] > 0) {
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    if (obj_inventario.indiceInv[i] == indicePez) {
                                        if (obj_inventario.cantInv[i] + cantidadPeces[iAux] <= 10000) {
                                        
                                            // Hay lugar en slot existente
                                            
                                            existe = true;
                                            obj_inventario.cantInv[i] += cantidadPeces[iAux];
                                            
                                            break;
                                            
                                        }
                                    }
                                }
                                
                                if (!existe) {
                            
                                    var hayLugar = false;
                                
                                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                        if (obj_inventario.indiceInv[i] == -1) {
                                        
                                            // Hay lugar en slot nuevo
                                            
                                            hayLugar = true;
                                            datosItem = configurarItem(indicePez);
                                            
                                            obj_inventario.indiceInv[i] = indicePez;
                                            obj_inventario.tipoInv[i] = datosItem[0];
                                            obj_inventario.cantInv[i] = cantidadPeces[iAux];
                                            obj_inventario.generoInv[i] = datosItem[1];
                                            obj_inventario.razaInv[i] = datosItem[2];
                                            obj_inventario.nroSkillInv[i] = datosItem[3];
                                            obj_inventario.skillRequeridoInv[i] = datosItem[4];
                                            obj_inventario.clase0ValidaInv[i] = datosItem[5];
                                            obj_inventario.clase1ValidaInv[i] = datosItem[6];
                                            obj_inventario.clase2ValidaInv[i] = datosItem[7];
                                            obj_inventario.clase3ValidaInv[i] = datosItem[8];
                                            obj_inventario.clase4ValidaInv[i] = datosItem[9];
                                            obj_inventario.clase5ValidaInv[i] = datosItem[10];
                                            obj_inventario.clase6ValidaInv[i] = datosItem[11];
                                            obj_inventario.clase7ValidaInv[i] = datosItem[12];
                                            obj_inventario.clase8ValidaInv[i] = datosItem[13];
                                            obj_inventario.nombreInv[i] = datosItem[14];
                                            
                                            break;
                                            
                                        }
                                    }  
                                    
                                    if (!hayLugar) {
                                    
                                        trabajaMineria = false;
                                        trabajaTala = false;
                                        trabajaFragua = false;
                                        trabajaPesca = false;
                                        trabajando = false;
                                        trabajando = false;
                                        var idINFO = instance_create(x, y, obj_INFO);
                                        idINFO.padre = id;
                                        idINFO.texto = "Dejaste de trabajar";
                                        obj_pj.alarm[11] = -1;
                                        
                                        break;
                                        
                                    }
                                    
                                }
                                
                            }
                                    
                            indicePez++;
                            iAux++;
                            
                        }
                        
                        if (trabajoActual == 155 || trabajoActual == 156) {
                        
                            reproducirSonido(snd_pescar, false, false);
                        
                            if (skills[7] < skillsNaturales[nivel]) {
                                if (random(10) > 6.5) {
                                    obj_skills_libres.mostrado = false;
                                    skills[7]++;
                                    var idSubirSkills = instance_create(x, y, obj_efecto_subir_skill);
                                    idSubirSkills.indice = 7;
                                }
                            }
                            
                            if (trabajoActual == 155) {
                                alarm[11] = 160;
                            } else if (trabajoActual == 156) {
                                alarm[11] = 120;
                            }
                            
                        }      
                    
                    } else {
                        trabajaMineria = false;
                        trabajaTala = false;
                        trabajaFragua = false;
                        trabajaPesca = false;
                        trabajando = false;
                        var idINFO = instance_create(x, y, obj_INFO);
                        idINFO.padre = id;
                        idINFO.texto = "Dejaste de trabajar";
                        obj_pj.alarm[11] = -1;
                    }
                    
                }   
            }
            
        }
    }

}

/* */
/*  */
