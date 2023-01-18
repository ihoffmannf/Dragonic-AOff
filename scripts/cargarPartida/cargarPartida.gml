/// @description  cargarPartida(partida)
/// @param partida
function cargarPartida(argument0) {

	dec("partida" + string(argument0) + ".ini");
	ini_open("partida" + string(argument0) + ".ini");

	room_goto(read("room", "room", rm_79));

	ini_close();
	enc("partida" + string(argument0) + ".ini");

	crearObjetosBasicos(argument0);





}
