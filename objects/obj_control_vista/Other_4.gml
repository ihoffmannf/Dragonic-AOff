/// @description  Tamaño pantalla

var relAspecto = 600 / 360;
var ancho = display_get_width();
var alto = display_get_height();

/*

view_xview[0] = 0;
view_yview[0] = 0;
view_xview[1] = 0;
view_yview[1] = 0;
view_wview[0] = 600;
view_hview[0] = 280;
view_wview[1] = 600;
view_hview[1] = 80;

*/

if (alto * relAspecto <= ancho) {
    surface_resize(application_surface, alto * relAspecto, alto);
} else {
    surface_resize(application_surface, ancho, ancho / relAspecto);
}

/* */
/*  */
