/// @description  Vibra

if (caso == 0) {
    caso = 1;
} else {
    caso = 0;
}

switch (caso) {
    case 0:
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (pixHor) );
        __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (pixHor) );
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (pixVer) );
        __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (pixVer) );
        break;
    case 1:
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (pixHor) );
        __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (pixHor) );
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (pixVer) );
        __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (pixVer) );
        break;      
}

alarm[1] = intervalo;


