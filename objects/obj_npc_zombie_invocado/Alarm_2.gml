/// @description  Ataque a NPCs

if (targetNPC != -1) {

    // Ataca NPCs

    var ataca = true;
    
    if (distance_to_object(targetNPC) > 250) {
        ataca = false;
    }
    
    if (ataca) {
    
        var chances = 7.25;
        chances -= targetNPC.evasion * 0.01;
        chances += evasion * 0.01;
        
        if (random(10) > chances) {
        
            ataca = false;
            
            var idINFO = instance_create(x, y + 9, obj_INFO);
            idINFO.padre = id;
            idINFO.texto = "¡Falla!";
            idINFO.color = c_red;
            
        }
    
    }
    
    if (ataca) {
    
        var dano = round(random_range(danoMeleeMin, danoMeleeMax) * 1.25);
        
        idDano = instance_create(targetNPC.x, targetNPC.y - 41, obj_efecto_dano);
        idDano.dano = dano;
        idDano.padre = targetNPC.id;
        
        var expOtorgada = 0;
                                                
        if (targetNPC.salud > 0) {
            expOtorgada = floor(targetNPC.experiencia / (targetNPC.salud / dano));
        }
               
        if (targetNPC.experiencia - expOtorgada <= 0) {
            expOtorgada = targetNPC.experiencia;
            targetNPC.experiencia = 0;
        } else {
            targetNPC.experiencia -= expOtorgada;
        }

        if (obj_pj.nivel < obj_pj.nivelMax) {
            if (obj_pj.experiencia < obj_pj.expLvl[obj_pj.nivel] - expOtorgada) {
                obj_pj.experiencia += expOtorgada;
            } else {
                subirNivel();
            }
        }
        
        reproducirSonido(snd_golpeANPC, false, false);
        
        targetNPC.salud -= dano;
        
    }
    
}
    

alarm[2] = intervaloAtaque;