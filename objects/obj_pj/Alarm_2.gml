/// @description  Energía

if (!muerto && !desnudo && hambre > 0 && sed > 0) {
    
    var sumaEnergia = floor(15 * energiaMax / 100);
            
    if (energia + sumaEnergia <= energiaMax) {
        energia += sumaEnergia;
    } else {
        energia = energiaMax;
    }
    
}

alarm[2] = 45;

