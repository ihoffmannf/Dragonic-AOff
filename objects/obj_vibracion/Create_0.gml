/// @description  Estado inicial
    
caso = 0;
pixHor = floor(__view_get( e__VW.WView, 0 ) / 125);
pixVer = floor(__view_get( e__VW.HView, 0 ) / 125);
maxMovimientos = floor(random_range(4, 6));
movimientos = 0;
intervalo = 2; // 1.65

alarm[0] = 1;

