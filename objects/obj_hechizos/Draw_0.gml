/// @description  Dibujo los hechizos

if (visible) {
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_sprite(spr_fondo_hechizos, 0, __view_get( e__VW.XView, 1 ) + 121, __view_get( e__VW.YView, 1 ) + 8);
    draw_set_alpha(1);
    
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    
    if (primerPanel) {
    
        var i = 0;
        var i2 = 0;
        var i3 = 0;
        
        repeat (maximoHechizos / 2) {
            if (indiceHechizos[i] != -1) {
                if (i >= 0 && i <= 4) {
            
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_middle);
                                     
                    draw_text_ext(__view_get( e__VW.XView, 1 ) + 120 + 33 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 12, string_hash_to_newline(nombreHechizos[i]), 9, 64);
                    
                    draw_set_valign(fa_top);
                    draw_set_halign(fa_left);
                    
                    if (!moviendoHechizo) {
                    
                        if (obj_pj.skills[0] < skillHechizos[i]) {
                                draw_sprite(spr_hechizo_invalido, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                        }
                        
                        if (seleccionado != -1) {
                            if (seleccionado == indiceHechizos[i]) {
                                draw_sprite(spr_borde_hechizos, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                            }
                        }
                    
                    } else if (posHechizoAMover == i) {
                        draw_sprite(spr_moviendo_hechizo, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                    }
                    
                    i2++;
                    
                } else if (i >= 5 && i <= 9) {
            
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_middle);
                    
                    draw_text_ext(__view_get( e__VW.XView, 1 ) + 120 + 33 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 44, string_hash_to_newline(nombreHechizos[i]), 9, 64);
                    
                    draw_set_valign(fa_top);
                    draw_set_halign(fa_left);
                    
                    if (!moviendoHechizo) {
                    
                        if (obj_pj.skills[0] < skillHechizos[i]) {
                                draw_sprite(spr_hechizo_invalido, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                        }
                        
                        if (seleccionado != -1) {
                            if (seleccionado == indiceHechizos[i]) {
                                draw_sprite(spr_borde_hechizos, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                            }
                        }
                        
                    } else if (posHechizoAMover == i) {
                        draw_sprite(spr_moviendo_hechizo, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                    }
                    
                    i3++;
                    
                }
            } else {
        
                if (i >= 0 && i <= 4) {
                    i2++;
                } else if (i >= 5 && i <= 9) {
                    i3++;
                }
                    
            }
            
            i++;
        }
        
    } else {
    
        var i = 10;
        var i2 = 0;
        var i3 = 0;
        
        repeat (maximoHechizos / 2) {
            if (indiceHechizos[i] != -1) {
                if (i >= 10 && i <= 14) {
            
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_middle);
                                     
                    draw_text_ext(__view_get( e__VW.XView, 1 ) + 120 + 33 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 12, string_hash_to_newline(nombreHechizos[i]), 9, 64);
                    
                    draw_set_valign(fa_top);
                    draw_set_halign(fa_left);
                    
                    if (!moviendoHechizo) {
                    
                        if (obj_pj.skills[0] < skillHechizos[i]) {
                                draw_sprite(spr_hechizo_invalido, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                        }
                        
                        if (seleccionado != -1) {
                            if (seleccionado == indiceHechizos[i]) {
                                draw_sprite(spr_borde_hechizos, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                            }
                        }
                    
                    } else if (posHechizoAMover == i) {
                        draw_sprite(spr_moviendo_hechizo, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i2, __view_get( e__VW.YView, 1 ) + 8 + 16);
                    }
                    
                    i2++;
                    
                } else if (i >= 15 && i <= 19) {
            
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_middle);
                    
                    draw_text_ext(__view_get( e__VW.XView, 1 ) + 120 + 33 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 44, string_hash_to_newline(nombreHechizos[i]), 9, 64);
                    
                    draw_set_valign(fa_top);
                    draw_set_halign(fa_left);
                    
                    if (!moviendoHechizo) {        
            
                        if (obj_pj.skills[0] < skillHechizos[i]) {
                                draw_sprite(spr_hechizo_invalido, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                        }
                        
                        if (seleccionado != -1) {
                            if (seleccionado == indiceHechizos[i]) {
                                draw_sprite(spr_borde_hechizos, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                            }
                        }
                    
                    } else if (posHechizoAMover == i) {
                        draw_sprite(spr_moviendo_hechizo, 0, __view_get( e__VW.XView, 1 ) + 120 + 34 + 64 * i3, __view_get( e__VW.YView, 1 ) + 8 + 48);
                    }
                    
                    i3++;
                    
                }
            } else {
        
                if (i >= 10 && i <= 14) {
                    i2++;
                } else if (i >= 15 && i <= 19) {
                    i3++;
                }
                    
            }
            
            i++;
        }
        
    }
    
    draw_set_halign(fa_left);

}




