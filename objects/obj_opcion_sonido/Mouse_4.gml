/// @description  Para la música

if (room == rm_menuPrincipal) {

    if (sonidoActivado) {
    
        image_index = 1;
        sonidoActivado = false;
        
    } else {
    
        image_index = 0;
        sonidoActivado = true;
        
        with (obj_sonido_mar) {
            sonidoMar =  reproducirSonido(snd_mar, true, false);
            audio_sound_gain(sonidoMar, 0, 0);       
        }
        
        with (obj_opciones) {
            if (sonidoLluvia != -1)
				audio_sound_gain(sonidoLluvia, 0, 0);    
        }
        
    }
    
    ini_open("opciones.ini");
    write("opciones", "sonidoActivado", sonidoActivado);
    ini_close(); 
    
}


