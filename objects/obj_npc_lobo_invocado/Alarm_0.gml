/// @description  Movimiento

if (!puedeMoverse || siguiendo) {
    if (target == obj_pj && targetNPC == -1) {
    
        var mueve = false;
        
        if (obj_pj.y > y) {
            if (obj_pj.y - y > 64) {
                mueve = true;
            }
        } else if (obj_pj.y < y) {
            if (y - obj_pj.y > 64) {
                mueve = true;
            }
        }
        
        if (!mueve) {
            if (obj_pj.x < x) {
                if (x - obj_pj.x > 96) {
                    mueve = true;
                }
            } else if (obj_pj.x > x) {
                if (obj_pj.x - x > 96) {
                    mueve = true;
                }
            }
        }
        
        if (mueve) {
            puedeMoverse = true;
            siguiendo = false;
        } else {
            alarm[0] = 15.45;
        }
        
    } else {
        puedeMoverse = true;
        siguiendo = false;
    }        
    
}


