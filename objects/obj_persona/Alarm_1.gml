/// @description  Control gráfico
    
if (moviendose && !inmovilizado && !muerto) {

    image_index = index[direccion, frame];
    
    if (frame < 4) {
        frame++;
    } else {
        frame = 0;
    }
    
    graficoArma.image_index = graficoArma.index[direccion, graficoArma.frame];
    
    if (graficoArma.frame < 3) {
        graficoArma.frame++;
    } else {
        graficoArma.frame = 0;
    }
    
    graficoEscudo.image_index = graficoEscudo.index[direccion, graficoEscudo.frame];
    
    if (graficoEscudo.frame < 3) {
        graficoEscudo.frame++;
    } else {
        graficoEscudo.frame = 0;
    }
    
} else {
    image_index = index[direccion, 0];
    graficoArma.image_index = graficoArma.index[direccion, 0];
    graficoEscudo.image_index = graficoEscudo.index[direccion, 0];
}

alarm[1] = 6.25;

