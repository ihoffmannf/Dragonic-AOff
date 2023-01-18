/// @description  guardarPedidoHerrero(yaHizoElPedido, fechaDeTerminacion)
/// @param yaHizoElPedido
/// @param fechaDeTerminacion
function guardarPedidoHerrero(argument0, argument1) {
		
	var nombreArchivo = "herrero-" + obj_pj.nombre + ".ini";
		
	ini_open(nombreArchivo);
	write("herrero", "yaHizoElPedido", argument0);
	write("herrero", "fechaDeTerminacion", argument1);
	ini_close();
	
}
