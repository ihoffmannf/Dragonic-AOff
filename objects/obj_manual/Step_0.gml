/// @description  Control general

if (obj_ayuda.mostrado) {
    visible = true;
    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5;
    y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5;
} else {
    visible = false;
    pagina = 0;
}

