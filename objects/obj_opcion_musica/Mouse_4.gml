/// @description  Para la música

if (room == rm_menuPrincipal) {

    if (musicaActivada) {
    
        image_index = 1;
        musicaActivada = false;
        audio_pause_all();
        
    } else {
    
        image_index = 0;
        musicaActivada = true;
        audio_resume_all();
        
    }
    
    ini_open("opciones.ini");
    write("opciones", "musicaActivada", musicaActivada);
    ini_close(); 
    
}


