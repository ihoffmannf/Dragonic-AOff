/// @description  Quito el background 2

__background_set( e__BG.Visible, 2, false );

if (room != rm_inicio && room != rm_EBGames && room != rm_crearPJ && room != rm_nombrePJ && room != rm_creditos && room != rm_menuPrincipal && room != rm_opciones && room != rm_seleccionarPJ) {
    nombreMapa = obtenerNombreMapa(room, -1, -1);
}

