/// @description  Dibujo

if (obj_ayuda.mostrado) {
    draw_set_alpha(0.85);
    draw_sprite(sprite_index, pagina, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5);
    draw_set_alpha(1);
}

