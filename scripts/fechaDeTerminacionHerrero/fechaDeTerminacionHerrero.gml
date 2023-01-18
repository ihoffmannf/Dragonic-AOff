/// @description  fechaDeTerminacionHerrero()
function fechaDeTerminacionHerrero() {
		
	var nombreArchivo = "herrero-" + obj_pj.nombre + ".ini";
		
	if (file_exists(nombreArchivo)) {
		ini_open(nombreArchivo);
		var fecha = read("herrero", "fechaDeTerminacion", -1);
		ini_close();
		return fecha;
	} else {
		return -1;
	}

}
