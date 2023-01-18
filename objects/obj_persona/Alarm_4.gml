/// @description  Remueve inmovilización

if (inmovilizado) {

    inmovilizado = false;
    
    if (obj_pj.nivel < 16) {
    
        var idINFO = instance_create(x, y, obj_INFO);
        idINFO.padre = id;
        idINFO.color = make_color_rgb(211, 90, 211);
        idINFO.texto = "¡Removido!"; 
        moviendose = false;
        
    } else {
            
        mana -= 300;
        
        // Palabras mágicas
        
        dicePalabrasMagicas = true;
        palabrasMagicas = "AN HOAX VORP";
        alarm[9] = 180;
        moviendose = false;
        alarm[5] = 1;
        
        puedeRemoverse = false;
        
    }
    
    alarm[5] = 1;
    
    if (agitando) {
        alarm[8] = random_range((2 * 60) / gradoIA, (2.5 * 60) / gradoIA);
    } else {
        alarm[8] = random_range(7 * 60, 9 * 60);
    }
    
}

