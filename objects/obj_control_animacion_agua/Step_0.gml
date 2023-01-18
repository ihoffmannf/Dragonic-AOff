/// @description  Cambiar dirección

if (obj_opciones.opcionAnimacionAgua) {

    if (direccionX == 0) {
        __background_set( e__BG.HSpeed, 1, __background_get( e__BG.HSpeed, 1 ) + (0.001) );
    } else {
        __background_set( e__BG.HSpeed, 1, __background_get( e__BG.HSpeed, 1 ) - (0.001) );
    }    
    if (direccionY == 0) {
        if (__background_get( e__BG.VSpeed, 1 ) < 0.15) {
            __background_set( e__BG.VSpeed, 1, __background_get( e__BG.VSpeed, 1 ) + (0.00025) );
        }
    } else {
        if (__background_get( e__BG.VSpeed, 1 ) > -0.15) {
            __background_set( e__BG.VSpeed, 1, __background_get( e__BG.VSpeed, 1 ) - (0.00025) );
        }
    }
    
} else {
    __background_set( e__BG.HSpeed, 1, 0 );
    __background_set( e__BG.VSpeed, 1, 0 );
}

