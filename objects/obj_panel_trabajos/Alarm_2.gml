/// @description  Fabricar rápidamente

if (clicMantenido) {
    if (deviceMantenido != -1) {
    
        var device = deviceMantenido;
    
        var posX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5 - 144;
        var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
        
        if (
        (device_mouse_x(device) >= posX + 122 && device_mouse_x(device) <= posX + 178) &&
        (device_mouse_y(device) >= posY + 211 && device_mouse_y(device) <= posY + 221)
        ) {
        
            // Fabricar
            
            if (indiceItem != -1) {
            
                if (modo == 0 || modo == 2) {
                    
                    // Carpintería / Sastrería
                
                    var indiceMaterial = 146;
                    var indiceSkill = 9;
                
                    if (modo == 2) {
                        indiceMaterial = 28;
                        indiceSkill = 15;
                    }
                
                    var materialesAcumulados = 0;
                
                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                        if (obj_inventario.indiceInv[i] == indiceMaterial) {
                            materialesAcumulados += obj_inventario.cantInv[i];
                        }    
                    }
                    
                    var datosItem = datosTrabajo(listaItems[indiceItem]);
                    
                    if (materialesAcumulados >= datosItem[2]) {
            
                        var totalMeterialesNecesarios = datosItem[2];
                        var valido = false;
                        var existe = false;
                    
                        for (var i = 0; i < obj_inventario.maximoInv; i++) {
                            if (obj_inventario.indiceInv[i] == listaItems[indiceItem]) {
                                if (obj_inventario.cantInv[i] + 1 <= 10000) {
                                
                                    // Hay lugar en slot existente
                                    
                                    existe = true;
                                    obj_inventario.cantInv[i]++;
                                    valido = true;
                                    break;
                                    
                                }
                            }
                        }
                        
                        if (!existe) {
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == -1) {
                                
                                    // Hay lugar en slot nuevo
                                    
                                    datosItem = configurarItem(listaItems[indiceItem]);
                                    
                                    obj_inventario.indiceInv[i] = listaItems[indiceItem];
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
                                    
                                    valido = true;
                                    
                                    break;
                                    
                                }
                            }  
                        }
                        
                        if (valido) {
                        
                            if (modo == 2 || random(10) > 6.5) {
                                if (obj_pj.skills[indiceSkill] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                    obj_skills_libres.mostrado = false;
                                    obj_pj.skills[indiceSkill]++;
                                    var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                    idSubirSkills.indice = indiceSkill;
                                    alarm[0] = 1;
                                }
                            }
                        
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == indiceMaterial) {
                                    if (obj_inventario.cantInv[i] > totalMeterialesNecesarios) {
                                    
                                        obj_inventario.cantInv[i] -= totalMeterialesNecesarios;
                                        totalMeterialesNecesarios = 0;
                                        break;
                                        
                                    } else if (obj_inventario.cantInv[i] == totalMeterialesNecesarios) {
                                        
                                        obj_inventario.cantInv[i] -= totalMeterialesNecesarios;
                                        totalMeterialesNecesarios = 0;
                                    
                                        if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                            obj_inventario.seleccionado = -1;
                                        }
                                        
                                        if (i == obj_inventario.posSeleccionado) {
                                            obj_inventario.posSeleccionado = -1;
                                        }
                                    
                                        obj_inventario.cantInv[i] = 0;
                                        obj_inventario.indiceInv[i] = -1;
                                        obj_inventario.tipoInv[i] = "";
                                        obj_inventario.equipadoInv[i] = false;
                                        obj_inventario.nombreInv[i] = "Vacío";              
                                        
                                        break;
                                        
                                    } else {
                                    
                                        totalMeterialesNecesarios -= obj_inventario.cantInv[i];
                                    
                                        if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                            obj_inventario.seleccionado = -1;
                                        }
                                        
                                        if (i == obj_inventario.posSeleccionado) {
                                            obj_inventario.posSeleccionado = -1;
                                        }
                                    
                                        obj_inventario.cantInv[i] = 0;
                                        obj_inventario.indiceInv[i] = -1;
                                        obj_inventario.tipoInv[i] = "";
                                        obj_inventario.equipadoInv[i] = false;
                                        obj_inventario.nombreInv[i] = "Vacío";  
                                        
                                    }
                                }    
                            }
                        
                        }
                        
                    }
                    
                } else {
                
                    // Herrería
                    
                    /*
                    
                        Lingotes:
                    
                        Hierro = 151;
                        Plata = 152;
                        Oro = 153;
                        
                    */
                
                    var lingotesHAcumulados = 0;
                    var lingotesPAcumulados = 0;
                    var lingotesOAcumulados = 0;
                
                    for (var i = 0; i < obj_inventario.maximoInv; i++) {
                        if (obj_inventario.indiceInv[i] == 151 || obj_inventario.indiceInv[i] == 152 || obj_inventario.indiceInv[i] == 153) {
                            switch (obj_inventario.indiceInv[i]) {
                                case 151:                    
                                    lingotesHAcumulados += obj_inventario.cantInv[i];
                                    break;
                                case 152:                    
                                    lingotesPAcumulados += obj_inventario.cantInv[i];
                                    break;
                                case 153:                    
                                    lingotesOAcumulados += obj_inventario.cantInv[i];
                                    break;
                            }
                        }    
                    }
                    
                    var datosItem = datosTrabajo(listaItems[indiceItem]);
                    
                    if (
                    lingotesHAcumulados >= datosItem[2] && 
                    lingotesPAcumulados >= datosItem[3] && 
                    lingotesOAcumulados >= datosItem[4]
                    ) {
            
                        var totalMaterialesNecesarios;
                        totalMaterialesNecesarios[0] = datosItem[2];
                        totalMaterialesNecesarios[1] = datosItem[3];
                        totalMaterialesNecesarios[2] = datosItem[4];
                        
                        var iAux = 0;
                        var indiceMaterial = 151;
                        var valido = false;
                        var existe = false;
                    
                        for (var i = 0; i < obj_inventario.maximoInv; i++) {
                            if (obj_inventario.indiceInv[i] == listaItems[indiceItem]) {
                                if (obj_inventario.cantInv[i] + 1 <= 10000) {
                                
                                    // Hay lugar en slot existente
                                    
                                    existe = true;
                                    obj_inventario.cantInv[i]++;
                                    valido = true;
                                    break;
                                    
                                }
                            }
                        }
                        
                        if (!existe) {
                            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                if (obj_inventario.indiceInv[i] == -1) {
                                
                                    // Hay lugar en slot nuevo
                                    
                                    datosItem = configurarItem(listaItems[indiceItem]);
                                    
                                    obj_inventario.indiceInv[i] = listaItems[indiceItem];
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
                                    
                                    valido = true;
                                    
                                    break;
                                    
                                }
                            }  
                        }
                        
                        if (valido) {
                        
                            if (random(10) > 4.5) {
                                if (obj_pj.skills[10] < obj_pj.skillsNaturales[obj_pj.nivel]) {
                                    obj_skills_libres.mostrado = false;
                                    obj_pj.skills[10]++;
                                    var idSubirSkills = instance_create(obj_pj.x, obj_pj.y, obj_efecto_subir_skill);
                                    idSubirSkills.indice = 10;
                                    alarm[0] = 1;
                                }
                            }
                            
                            repeat (3) {
                            
                                for (var i = 0; i < obj_inventario.maximoInv; i++) {
                                    if (obj_inventario.indiceInv[i] == indiceMaterial) {
                                        if (obj_inventario.cantInv[i] > totalMaterialesNecesarios[iAux]) {
                                        
                                            obj_inventario.cantInv[i] -= totalMaterialesNecesarios[iAux];
                                            totalMaterialesNecesarios[iAux] = 0;
                                            break;
                                            
                                        } else if (obj_inventario.cantInv[i] == totalMaterialesNecesarios[iAux]) {
                                            
                                            obj_inventario.cantInv[i] -= totalMaterialesNecesarios[iAux];
                                            totalMaterialesNecesarios[iAux] = 0;
                                        
                                            if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                obj_inventario.seleccionado = -1;
                                            }
                                            
                                            if (i == obj_inventario.posSeleccionado) {
                                                obj_inventario.posSeleccionado = -1;
                                            }
                                        
                                            obj_inventario.cantInv[i] = 0;
                                            obj_inventario.indiceInv[i] = -1;
                                            obj_inventario.tipoInv[i] = "";
                                            obj_inventario.equipadoInv[i] = false;
                                            obj_inventario.nombreInv[i] = "Vacío";              
                                            
                                            break;
                                            
                                        } else {
                                        
                                            totalMaterialesNecesarios[iAux] -= obj_inventario.cantInv[i];
                                        
                                            if (obj_inventario.indiceInv[i] == obj_inventario.seleccionado) {
                                                obj_inventario.seleccionado = -1;
                                            }
                                            
                                            if (i == obj_inventario.posSeleccionado) {
                                                obj_inventario.posSeleccionado = -1;
                                            }
                                        
                                            obj_inventario.cantInv[i] = 0;
                                            obj_inventario.indiceInv[i] = -1;
                                            obj_inventario.tipoInv[i] = "";
                                            obj_inventario.equipadoInv[i] = false;
                                            obj_inventario.nombreInv[i] = "Vacío";  
                                            
                                        }
                                    }    
                                }
                                
                                iAux++;
                                indiceMaterial++;
                            
                            }
                        
                        }
                        
                    }
                
                }
            
            }
            
        }
    
        alarm[2] = 2;
        
    }
}

/* */
/*  */
