/// @description  Reproduzco

if (obj_opcion_sonido.sonidoActivado) {
    if (
    room != rm_inicio && 
    room != rm_EBGames && 
    room != rm_crearPJ && 
    room != rm_nombrePJ && 
    room != rm_creditos && 
    room != rm_menuPrincipal && 
    room != rm_opciones && 
    room != rm_seleccionarPJ &&
    instance_number(obj_pausa) == 0
    ) {
        if (obj_pj.navega) {
            audio_sound_gain(sonidoMar, 0.5, 1500);
        } else {
            if (!inicioPartida) {
                audio_sound_gain(sonidoMar, 0, 1500);
            }
        }
    }
}

