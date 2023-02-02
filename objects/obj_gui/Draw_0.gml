/// @description  Dibujo la interfaz

/// Dibujo datos PJ
draw_set_font(fnt_Vedrana_7_bold);

draw_sprite(spr_vista_previa_PJ, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
draw_sprite(obj_pj.sprCabeza, 0, __view_get( e__VW.XView, 0 )+ 18, __view_get( e__VW.YView, 0 ) + 18);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_text(__view_get( e__VW.XView, 0 )+ 34, __view_get( e__VW.YView, 0 ) + 4, string(obj_pj.nivel));
draw_text(__view_get( e__VW.XView, 0 )+ 27, __view_get( e__VW.YView, 0 ) + 18, "XP: " + string(floor(obj_pj.experiencia / obj_pj.expLvl[obj_pj.nivel] * 100)) + "%");
draw_set_halign(fa_left);
// Pausa

draw_sprite(spr_pausa, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ));

// Ayuda

draw_sprite(spr_ayuda, obj_ayuda.image_index, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 2, __view_get( e__VW.YView, 0 ) + 2);

// Opciones

draw_sprite(spr_opciones, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 2, __view_get( e__VW.YView, 0 ) + 26);

if (obj_configuracion.mostrado) {

    draw_sprite(spr_panel_opciones, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 26, __view_get( e__VW.YView, 0 ) + 36);
    
    if (obj_opciones.opcionTechos) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 11);
    }
    
    if (obj_opciones.opcionArboles) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 27);
    }
    
    if (obj_opciones.opcionVibracion) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 43);
    }
    
    if (obj_opciones.opcionAnimacionAgua) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 59);
    }
    
    if (obj_opciones.opcionParticulas) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 75);
    }
    
    if (obj_opciones.opcionNubes) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 91);
    }
    
    if (obj_opciones.opcionPeces) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 107);
    }
    
    if (obj_opciones.opcionOptimizarCiudades) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 123);
    }
    
    if (obj_opciones.opcionInsigniaPionero) {
        draw_sprite(spr_tick, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 119, __view_get( e__VW.YView, 0 ) + 139);
    }
    
}

// Oro

draw_sprite(spr_boton_oro, 0, 11, 2456);

// Seguro

draw_sprite(spr_seguro, obj_seguro.activo, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ));

// Panel items

if (obj_panel_items.mostrado) {
    
    draw_set_alpha(0.85);
    draw_sprite(spr_panel_items, obj_panel_items.image_index, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_Vedrana_5_bold);
    draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - 144 + 143, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113 + 217, obj_panel_items.campoCantidadS);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    var modPanelItemsX = 144;
    var modPanelItemsY = 113;
    draw_set_font(fnt_Vedrana_5_bold);
    
    // Ícono y datos
    
    var indicePanel = obj_panel_items.indiceItem;
    
    if (indicePanel != -1) {
    
        if (obj_panel_items.sectorPj) {
    
            var indiceInv = obj_inventario.indiceInv[indicePanel];
            if (indiceInv != -1) {
                draw_set_alpha(1);
                draw_set_color(c_white);
                if (!obj_panel_items.modoBanco) {
                    draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, "Precio: " + string(obj_panel_items.precioItem));
                } else {
                    draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, "Cantidad: " + string(obj_inventario.cantInv[indicePanel])); 
                }
                draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 20, string(obj_panel_items.validoItem));
                draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 28, obj_panel_items.descItem);
                draw_sprite(spr_items, indiceInv, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 8 + 16, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 9 + 32);
                draw_set_alpha(0.85);
            }
        
        } else if (obj_panel_items.sectorNpc) {
        
            var indiceInv = obj_panel_items.idPadre.indiceNpc[indicePanel];
            if (indiceInv != -1) {
                draw_set_alpha(1);
                draw_set_color(c_white);
                if (!obj_panel_items.modoBanco) {
                    draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, "Precio: " + string(obj_panel_items.precioItem));
                } else {
                    draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, "Cantidad: " + string(obj_panel_items.idPadre.cantNpc[indicePanel]));
                }
                draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 20, string(obj_panel_items.validoItem));
                draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 28, obj_panel_items.descItem);
                draw_sprite(spr_items, indiceInv, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 8 + 16, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 9 + 32);
                draw_set_alpha(0.85);
            }
            
        }
        
        var posX = __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - 144;
        var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
        
        var modY = 47 + posY;
        
        if (obj_panel_items.sectorPj) {
			draw_sprite(spr_panelitems_rectangle,0,posX + 150, modY + ( 8 * indicePanel) - 1)
        } else if (obj_panel_items.sectorNpc) {
			draw_sprite(spr_panelitems_rectangle,0,posX + 8, modY + ( 8 * indicePanel) - 1);
        }
        
    }
    
    
    draw_set_alpha(1);
    
    // Lista
    
    draw_set_color(c_white);
    var aux = 8;
    var i = aux;
    
    // Inventario
	
	for (var index = 0; index < 20; index++){
		//inventario user
		draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 152, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 46 + (index * 8), string(obj_inventario.nombreInv[index]));
		//inventario npc
		draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 8, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 46 + (index * 8), string(obj_panel_items.idPadre.nombreNpc[index]));
	}
    
    
    draw_set_font(fnt_Vedrana_7_bold);
    
}

// Panel trabajos

if (obj_panel_trabajos.mostrado) {
    
    draw_set_alpha(0.85);
    draw_sprite(spr_panel_trabajos, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5);
    
    var modPanelItemsX = 144;
    var modPanelItemsY = 113;
    draw_set_font(fnt_Vedrana_5_bold);
    
    // Ícono y datos
    
    var indicePanel = obj_panel_trabajos.indiceItem;
    
    if (indicePanel != -1) {
    
        var indiceInv = obj_panel_trabajos.listaItems[indicePanel];
        
        if (indiceInv != -1) {
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, string(obj_panel_trabajos.validoItem));
            draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 20, obj_panel_trabajos.descItem);
            draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 28, obj_panel_trabajos.elementosItem);
            draw_sprite(spr_items, indiceInv, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 8 + 16, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 9 + 32);
            draw_set_alpha(0.85);
        }        
        
        var posX = __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - 144;
        var posY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - 113;
        
        var modY = 47 + posY;
        
        //draw_set_color(c_gray);
        //draw_rectangle(posX + 8, modY + ( 8 * indicePanel) - 1, posX + 279, modY + ( 8 * (indicePanel + 1)) - 1, false);
        draw_sprite(spr_panelitems_rectangle2, 0 , posX + 8, modY + ( 8 * indicePanel) - 1)
        
    }
    
    if (obj_panel_trabajos.listaItems[0] == -1) {
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 47, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 12, "No tenés skills suficientes para fabricar ningún ítem");
    }
    
    draw_set_alpha(1);
    
    // Lista
    
    draw_set_color(c_white);
    // Inventario
    
	for (var index = 0; index < 20; index++){
		//inventario
		draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - modPanelItemsX + 8, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5 - modPanelItemsY + 46 + (index * 8), string(obj_panel_trabajos.nombreItems[index]));
	}
    
    draw_set_font(fnt_Vedrana_7_bold);
    
}


// Dopas

draw_set_color(c_white);
draw_set_halign(fa_center);
if (obj_pj.dopaAgilidad > 0) {
	draw_sprite_ext(spr_items, 218, __view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ) + 27, 0.75, 0.75, 0, -1, 1);
	draw_set_font(fnt_Vedrana_5_bold);
	draw_text_color(__view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ), string(floor(obj_pj.dopaAgilidad * 25)) + "%", c_yellow, c_yellow, c_yellow, c_yellow, 1)
	draw_set_font(fnt_Vedrana_7_bold);
	if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);
	draw_text(__view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ) + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
	if (obj_pj.dopaFuerza > 0) {
		draw_sprite_ext(spr_items, 219, __view_get( e__VW.XView, 0 )+ 114, __view_get( e__VW.YView, 0 ) + 27, 0.75, 0.75, 0, -1, 1);
		draw_set_font(fnt_Vedrana_5_bold);
		draw_text_color(__view_get( e__VW.XView, 0 )+ 114, __view_get( e__VW.YView, 0 ), string(floor(obj_pj.dopaFuerza * 25)) + "%", c_lime, c_lime, c_lime, c_lime, 1)
		draw_set_font(fnt_Vedrana_7_bold);
		if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);
		draw_text(__view_get( e__VW.XView, 0 )+ 114, __view_get( e__VW.YView, 0 ) + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
	}	
} else if (obj_pj.dopaFuerza > 0) {
	draw_sprite_ext(spr_items, 219, __view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ) + 27, 0.75, 0.75, 0, -1, 1);
	draw_set_font(fnt_Vedrana_5_bold);
	draw_text_color(__view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ), string(floor(obj_pj.dopaFuerza * 25)) + "%", c_lime, c_lime, c_lime, c_lime, 1)
	draw_set_font(fnt_Vedrana_7_bold);
	if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);		
	draw_text(__view_get( e__VW.XView, 0 )+ 88, __view_get( e__VW.YView, 0 ) + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
}
draw_set_halign(fa_left);
draw_set_color(c_white);

// Panel

draw_sprite(spr_skills_libres, 0, __view_get( e__VW.XView, 0 )+ 65, __view_get( e__VW.YView, 0 ) + 9);

if (obj_skills_libres.mostrado) {

    draw_sprite(spr_panel_skills, 0, __view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5);
    
    draw_set_font(fnt_Vedrana_6_bold);
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_right);
    
    var hor = (__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5) - 64 + 109;
    var ver = (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) * 0.5) - 108;
    
    draw_text((__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5) - 64 + 95, ver + 33, string(obj_pj.skillsLibres));
    
    draw_set_halign(fa_center);
    draw_set_font(fnt_Vedrana_5_bold);
    
    draw_text(hor, ver + 43, string(obj_pj.skills[0]));
    draw_text(hor, ver + 53, string(obj_pj.skills[1]));
    draw_text(hor, ver + 63, string(obj_pj.skills[2]));
    draw_text(hor, ver + 73, string(obj_pj.skills[3]));
    draw_text(hor, ver + 83, string(obj_pj.skills[4]));
    draw_text(hor, ver + 92, string(obj_pj.skills[5]));
    draw_text(hor, ver + 101, string(obj_pj.skills[6]));
    draw_text(hor, ver + 111, string(obj_pj.skills[7]));
    draw_text(hor, ver + 120, string(obj_pj.skills[8]));
    draw_text(hor, ver + 130, string(obj_pj.skills[9]));
    draw_text(hor, ver + 139, string(obj_pj.skills[10]));
    draw_text(hor, ver + 148, string(obj_pj.skills[11]));
    draw_text(hor, ver + 159, string(obj_pj.skills[12]));
    draw_text(hor, ver + 168, string(obj_pj.skills[13]));
    draw_text(hor, ver + 178, string(obj_pj.skills[14]));
    draw_text(hor, ver + 188, string(obj_pj.skills[15]));
    draw_text(hor, ver + 198, string(obj_pj.skills[16]));
    draw_text(hor, ver + 207, string(obj_pj.skills[17]));
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_font(fnt_Vedrana_7_bold);
    draw_set_color(c_silver);
    
}

if (panelActivo) {

    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34, "Experiencia: " + string(obj_pj.experiencia) + "/" + string(obj_pj.expLvl[obj_pj.nivel]));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 10, "Fuerza: " + string(obtenerAtributoFuerzaPJ()));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 20, "Agilidad: " + string(obtenerAtributoAgilidadPJ()));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 30, "Inteligencia: " + string(obj_pj.atributos[2]));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 40, "Carisma: " + string(obj_pj.atributos[3]));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 50, "Constitución: " + string(obj_pj.atributos[4]));
    
    // Clase:

    // 0 = Arquero
    // 1 = Asesino
    // 2 = Bardo
    // 3 = Cazador
    // 4 = Clerigo
    // 5 = Druida
    // 6 = Guerrero
    // 7 = Mago
    // 8 = Paladin    
    
    clase = "";
    
    switch (obj_pj.clase) {
        case 0:
            clase = "Arquero";
            break;
        case 1:
            clase = "Asesino";
            break;
        case 2:
            clase = "Bardo";
            break;
        case 3:
            clase = "Cazador";
            break;
        case 4:
            clase = "Clérigo";
            break;
        case 5:
            clase = "Druida";
            break;
        case 6:
            clase = "Guerrero";
            break;
        case 7:
            clase = "Mago";
            break;
        case 8:
            clase = "Paladín";
            break;
    }
    
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 60, "Clase: " + clase);
    
    var totalMatados = obj_pj.ciudadanosMatados + obj_pj.criminalesMatados;
    
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 70, "Personas matadas: " + string(totalMatados));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 80, "Ciudadanos matados: " + string(obj_pj.ciudadanosMatados));
    draw_text(__view_get( e__VW.XView, 0 )+ 4, __view_get( e__VW.YView, 0 ) + 34 + 90, "Criminales matados: " + string(obj_pj.criminalesMatados));
    
}

// Limpieza mundo

if (obj_limpieza_mundo.contando) {
    draw_set_halign(fa_right);
    draw_set_color(c_white);
    if (obj_limpieza_mundo.segundos > 0) {
        draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 23, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 16, "Limpieza de mundo en: " + string(obj_limpieza_mundo.segundos) + "s");
    } else {
        draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) - 23, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 16, "Limpiando mundo...");
    }
    draw_set_halign(fa_left);
} 

/// Dibujo flechas

draw_set_alpha(0.15);
draw_sprite(spr_flechas, 0, __view_get( e__VW.XView, 0 )+ 70, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 70); 
draw_set_alpha(1);
// Salud
dibujarBarra(__view_get( e__VW.XView, 1 ) + 12, __view_get( e__VW.YView, 1 ) + 14, obj_pj.salud, obj_pj.saludMax, colorVida);

// Maná
if (obj_pj.manaMax > 0) {
	dibujarBarra(__view_get( e__VW.XView, 1 ) + 12, __view_get( e__VW.YView, 1 ) + 24, obj_pj.mana, obj_pj.manaMax, colorMana);
}else{
	draw_sprite_ext(spr_barra_back, 0, __view_get( e__VW.XView, 1 ) + 12, __view_get( e__VW.YView, 1 ) + 24, 1, 1, 0, c_dkgray, 1 );
}

// Energía
dibujarBarra(__view_get( e__VW.XView, 1 ) + 12, __view_get( e__VW.YView, 1 ) + 34, obj_pj.energia, obj_pj.energiaMax, colorEnergia);

// Hambre

draw_set_font(fnt_Vedrana_6_bold);

dibujarBarraChica(__view_get( e__VW.XView, 1 ) + 18, __view_get( e__VW.YView, 1 ) + 44, obj_pj.hambre, obj_pj.hambreMax, colorHambre);
// Sed
dibujarBarraChica(__view_get( e__VW.XView, 1 ) + 66, __view_get( e__VW.YView, 1 ) + 44, obj_pj.sed, obj_pj.sedMax, colorSed);
// Oro

draw_set_font(fnt_Vedrana_7_bold);
draw_set_color(c_white);
draw_text(__view_get( e__VW.XView, 1 ) + 30, __view_get( e__VW.YView, 1 ) + 57, string(obj_pj.oro));

// Nombre de mapa y coordenadas

draw_set_font(fnt_Vedrana_6_bold);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_set_color(c_black);
draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 2, nombreMapa + " - " + string(floor((obj_pj.x - 608) / 32) + 9) + " - " + string(floor((obj_pj.y - 400) / 32) + 7));

if (obj_mapas_mundo.mapas[room]) {
    draw_set_color(c_green);
} else {
    draw_set_color(c_silver);
}

draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) * 0.5 - 1, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 3, nombreMapa + " - " + string(floor((obj_pj.x - 608) / 32) + 9) + " - " + string(floor((obj_pj.y - 400) / 32) + 7));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Mejora la visibilidad de los items que se tiran al piso
    
if (
(obj_inventario.tirando || itemTiradoVisible) ||
obj_inventario.tiraDeA1
) {
    
    draw_set_halign(fa_center);
    draw_set_font(fnt_Vedrana_11_bold);
    
    if (
    (itemTiradoVisible && obj_tecla_T.teclaApretada) || 
    obj_inventario.tiraDeA1
    ) {
        if (obj_inventario.posSeleccionado != -1) {
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (obj_inventario.posSeleccionado == i) {
                    break;
                }
            }
            
            draw_set_color(c_black);
            draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 30, string(obj_inventario.cantInv[i])); 
            draw_set_color(c_white);
            draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) / 2 - 1, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 31, string(obj_inventario.cantInv[i])); 
            ultimaCantItemTirado = obj_inventario.cantInv[i];    
            
        }
    } else if (!itemTiradoVisible && obj_tecla_T.teclaApretada) {
        draw_set_color(c_black);
        draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 30, string(ultimaCantItemTirado));
        draw_set_color(c_white);
        draw_text(__view_get( e__VW.XView, 0 )+ __view_get( e__VW.WView, 0 ) / 2 - 1, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 31, string(ultimaCantItemTirado));
    }
    
    
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    
    itemTiradoVisible = true;
    
    if (alarm[0] == -1 && obj_tecla_T.teclaApretada) {
        alarm[0] = 120;
    }
    
}

/*

// FPS

draw_set_font(fnt_Vedrana_8_bold);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(view_xview[0] + view_wview[0] - 24, view_yview[0] + 4, "FPS: " + string(fps_real));

if (fps_real < minFPS) {
    minFPS = fps_real;
}

draw_text(view_xview[0] + view_wview[0] - 24, view_yview[0] + 16, "Min FPS: " + string(minFPS));
draw_set_halign(fa_left);

*/


/* */
/*  */
