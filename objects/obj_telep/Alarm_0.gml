/// @description  Lo anulo si es necesario

if (roomTP == -1) {
    var escalaX = image_xscale;
    var escalaY = image_yscale;
	idBloqueo = instance_create(x, y, obj_bloqueo);
    idBloqueo.image_xscale = escalaX;
    idBloqueo.image_yscale = escalaY;
	instance_destroy();
}

