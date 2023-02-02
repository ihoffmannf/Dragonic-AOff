/// @description  Dibujo el inventario

if (visible) {
    
	draw_sprite(spr_inventario_back,0,__view_get( e__VW.XView, 1 ) + 120,__view_get( e__VW.YView, 1 ) + 8)
    
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    
    dibujarItemInv(0, 0, 0);
    dibujarItemInv(1, 0, 32);
    dibujarItemInv(2, 0, 64);
    dibujarItemInv(3, 0, 96);
    dibujarItemInv(4, 0, 128);
    dibujarItemInv(5, 0, 160);
    dibujarItemInv(6, 0, 192);
    dibujarItemInv(7, 0, 224);
    dibujarItemInv(8, 0, 256);
    dibujarItemInv(9, 0, 288);
    dibujarItemInv(10, 32, 0);
    dibujarItemInv(11, 32, 32);
    dibujarItemInv(12, 32, 64);
    dibujarItemInv(13, 32, 96);
    dibujarItemInv(14, 32, 128);
    dibujarItemInv(15, 32, 160);
    dibujarItemInv(16, 32, 192);
    dibujarItemInv(17, 32, 224);
    dibujarItemInv(18, 32, 256);
    dibujarItemInv(19, 32, 288);
    
    draw_set_halign(fa_left);

}




