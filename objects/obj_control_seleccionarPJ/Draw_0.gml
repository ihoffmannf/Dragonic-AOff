/// @description  Dibuja

if (room == rm_seleccionarPJ) {

    switch (elegido) {
        case 1:
            draw_sprite(spr_PJ_seleccionado, 0, 32, 66);
            break;
        case 2:
            draw_sprite(spr_PJ_seleccionado, 0, 143, 66);
            break;
        case 3:
            draw_sprite(spr_PJ_seleccionado, 0, 254, 66);
            break;
        case 4:
            draw_sprite(spr_PJ_seleccionado, 0, 365, 66);
            break;
        case 5:
            draw_sprite(spr_PJ_seleccionado, 0, 476, 66);
            break;
        case 6:
            draw_sprite(spr_PJ_seleccionado, 0, 87, 189);
            break;
        case 7:
            draw_sprite(spr_PJ_seleccionado, 0, 198, 189);
            break;
        case 8:
            draw_sprite(spr_PJ_seleccionado, 0, 309, 189);
            break;
        case 9:
            draw_sprite(spr_PJ_seleccionado, 0, 420, 189);
            break;
    }
    
    dibujarPJ(1);
    dibujarPJ(2);
    dibujarPJ(3);
    dibujarPJ(4);
    dibujarPJ(5);
    dibujarPJ(6);
    dibujarPJ(7);
    dibujarPJ(8);
    dibujarPJ(9);
    
}

