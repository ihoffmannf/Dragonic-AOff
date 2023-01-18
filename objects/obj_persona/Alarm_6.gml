/// @description  Salud y mana suben

poteando = false;

if (!muerto) {

    if (salud < saludMax) {
    
        poteando = true;
    
        var sumaSalud = floor(10 * saludMax / 100);
    
        if (salud + sumaSalud <= saludMax) {
            salud += sumaSalud;
        } else {
            salud = saludMax;
        }
        
        reproducirSonido(snd_tomarPocion, false, false);
        
    } else if (mana < manaMax) {
    
        poteando = true;
    
        var sumaMana = floor(15 * manaMax / 100);
    
        if (mana + sumaMana <= manaMax) {
            mana += sumaMana;
        } else {
            mana = manaMax;
        }
        
        reproducirSonido(snd_tomarPocion, false, false);
        
    }

}

if (!poteando) {
    alarm[6] = floor(100 / gradoIA);
} else {
    alarm[6] = floor(15 / gradoIA);
}




