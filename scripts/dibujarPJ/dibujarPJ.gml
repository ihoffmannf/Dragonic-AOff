/// @description  dibujarPJ(nroPJ)
/// @param nroPJ
function dibujarPJ(argument0) {

	if (file_exists("partida" + string(argument0) + ".ini")) {

	    var X;
	    var Y;
    
	    switch (argument0) {
	        case 1:        
	            X = 79;    
	            Y = 144;
	            break;    
	        case 2:        
	            X = 189;    
	            Y = 144;
	            break;    
	        case 3:        
	            X = 300;    
	            Y = 144;
	            break;    
	        case 4:        
	            X = 411;    
	            Y = 144;
	            break;    
	        case 5:        
	            X = 522;    
	            Y = 144;
	            break;    
	        case 6:        
	            X = 134;    
	            Y = 267;
	            break;    
	        case 7:        
	            X = 244;    
	            Y = 267;
	            break;    
	        case 8:        
	            X = 354;    
	            Y = 267;
	            break;    
	        case 9:        
	            X = 466;    
	            Y = 267;
	            break;            
	    }    
    
	    /*
    
	    datosPJ[argument0, 1] = nombre;
	    datosPJ[argument0, 2] = nroRaza;
	    datosPJ[argument0, 3] = sprCabeza;
	    datosPJ[argument0, 4] = pk;
	    datosPJ[argument0, 5] = imgRopa;
	    datosPJ[argument0, 6] = imgArma;
	    datosPJ[argument0, 7] = imgEscudo;
	    datosPJ[argument0, 8] = imgCasco;
    
	    */
    
	    if (datosPJ[argument0, 5] == spr_muerto) {
	        draw_set_alpha(0.5);
	    }
	    draw_sprite(datosPJ[argument0, 5], 0, X, Y);
	    draw_set_alpha(1);
            
	    if (datosPJ[argument0, 2] < 3) {
	        if (datosPJ[argument0, 3] == spr_cabeza_muerto) {
	            draw_set_alpha(0.5);
	            draw_sprite(spr_cabeza_muerto, 0, X, Y - 27); 
	            draw_set_alpha(1);
	        } else {
	            draw_sprite(datosPJ[argument0, 3], 0, X, Y - 36); 
	        }
	        if (datosPJ[argument0, 8] != -1) {
	            draw_sprite(datosPJ[argument0, 8], 0, X, Y - 36);  
	        }
	        if (datosPJ[argument0, 6] != -1) {
	            draw_sprite(datosPJ[argument0, 6], 0, X, Y);   
	        }                              
	    } else {
	        if (datosPJ[argument0, 3] == spr_cabeza_muerto) {
	            draw_set_alpha(0.5);
	            draw_sprite(spr_cabeza_muerto, 0, X, Y - 27); 
	            draw_set_alpha(1);
	        } else {
	            draw_sprite(datosPJ[argument0, 3], 0, X, Y - 28); 
	        }
	        if (datosPJ[argument0, 8] != -1) {
	            draw_sprite(datosPJ[argument0, 8], 0, X, Y - 28);  
	        }
	        if (datosPJ[argument0, 6] != -1) {
	            draw_sprite(datosPJ[argument0, 6], 0, X, Y + 4); 
	        }                                     
	    }  
    
	    if (datosPJ[argument0, 7] != -1) {
	        draw_sprite(datosPJ[argument0, 7], 0, X, Y);
	    }     
    
	    draw_set_halign(fa_center);
	    draw_set_font(fnt_Vedrana_8_bold);    
	    draw_set_color(c_black);
	    draw_text(X + 1, Y + 1, string_hash_to_newline(datosPJ[argument0, 1]));
    
	    if (!datosPJ[argument0, 4]) {
	        var color = make_color_rgb(65, 134, 175);
	    } else {
	        var color = make_color_rgb(199, 16, 26);
	    }    
    
	    draw_set_color(color);
	    draw_text(X, Y + 2, string_hash_to_newline(datosPJ[argument0, 1]));

	}



}
