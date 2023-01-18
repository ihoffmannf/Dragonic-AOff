/// @description  yaHizoPedidoHerrero()
function yaHizoPedidoHerrero() {
		
	var nombreArchivo = "herrero-" + obj_pj.nombre + ".ini";
		
	if (file_exists(nombreArchivo)) {
		ini_open(nombreArchivo);
		var yaHizo = read("herrero", "yaHizoElPedido", false);
		ini_close();
		return yaHizo;
	} else {
		return false;
	}

}
