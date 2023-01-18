/// @description  hacerBackUpPartidas()
function hacerBackUpPartidas() {

	for (var i = 1; i < 10; i++) {
	    if (file_exists("partida" + string(i) + ".ini")) {
			
			dec("partida" + string(i) + ".ini");
		    ini_open("partida" + string(i) + ".ini");
		    var nombrePJGuardado = readS("obj_pj", "nombre", "RESTAURAR_PERSONAJE"); // Si devuelve "RESTAURAR_PERSONAJE" quiere decir que falló la decodificación Base64 y no se pudo leer el nombre
			ini_close();
			enc("partida" + string(i) + ".ini");
			
			if (nombrePJGuardado != "RESTAURAR_PERSONAJE") // Solamente hace el BackUp cuando la partida está íntegra y sin fallos
				file_copy("partida" + string(i) + ".ini", "partida" + string(i) + "_BackUp.ini")
			
	    }
	}

}
