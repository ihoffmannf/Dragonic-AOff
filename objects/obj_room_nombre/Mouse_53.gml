/// @description  Selecciono la letra

var posX = 0;
var posY = 0;
    
if (
mouse_x >= 92 &&
mouse_x <= room_width - 92 &&
mouse_y >= 92 &&
mouse_y <= 92 + 160
) {

    var posX = mouse_x;
    var posY = mouse_y;
    
    posX = posX - 92;
    posY = posY - 92;
    
    var posLetra = 0;
    
    if (posY <= 32) {
    
        // Fila 1
        
        var i = 0;
        
        repeat (13) {
            if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                posLetra = i;
                break;
            }
            
            i++;
        }
        
    } else if (posY <= 64) {
    
        // Fila 2
        
        var i = 0;
        
        repeat (13) {
            if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                posLetra = i + 13;
                break;
            }
            
            i++;
        }
        
    } else if (posY <= 96) {
    
        // Fila 3
        
        var i = 0;
        
        repeat (13) {
            if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                posLetra = i + 26;
                break;
            }
            
            i++;
        }
        
    } else if (posY <= 128) {
    
        // Fila 4
        
        var i = 0;
        
        repeat (13) {
            if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                posLetra = i + 39;
                break;
            }
            
            i++;
        }
        
    } else {
    
        // Fila 5
        
        var i = 0;
        
        repeat (13) {
            if (posX >= 32 * (i) && posX < (i + 1) * 32) {
                posLetra = i + 52;
                break;
            }
            
            i++;
        }
        
    }
    
    if (posLetra <= 51) {
        if (string_length(nombre) < 15) {
            nombre += letras[posLetra];
        }
    } else if (posLetra <= 56) {
        if (string_length(nombre) < 15) {
            nombre += " ";
        }
    } else if (posLetra <= 61) {
        if (string_length(nombre) > 0) {
            var nombreNuevo = "";
            nombreNuevo = string_delete(nombre, string_length(nombre), 1);
            nombre = nombreNuevo;
        }
    } else if (posLetra <= 64) {
    
        while (string_char_at(nombre, 1) == " ") {
            var nombreNuevo = "";
            nombreNuevo = string_delete(nombre, 1, 1);
            nombre = nombreNuevo;
        }
    
        while (string_char_at(nombre, string_length(nombre)) == " ") {
            var nombreNuevo = "";
            nombreNuevo = string_delete(nombre, string_length(nombre), 1);
            nombre = nombreNuevo;
        }
    
        // Reviso que el nombre no esté en uso por otro PJ
        
        var nombreValido = true;
        
        for (var i = 1; i < 10; i++) {
            if (file_exists("partida" + string(i) + ".ini")) {
                dec("partida" + string(i) + ".ini");
                ini_open("partida" + string(i) + ".ini");
                if (ini_read_string("obj_pj", "nombre", " ") == nombre) {
                    nombreValido = false;
                    ini_close();
                    enc("partida" + string(i) + ".ini");
                    break;
                } else {
                    ini_close();
                    enc("partida" + string(i) + ".ini");
                }
            }
        }
		
		if (nombre == "RESTAURAR_PERSONAJE")
			nombreValido = false;
			
        // Fin revisión
        
        if (nombreValido) {
            obj_nombrePJ.nombre = nombre;
            room_goto(rm_crearPJ);
        } else {
            dibuja = true;
            alarm[0] = 80;
        }
        
    }
    
}

