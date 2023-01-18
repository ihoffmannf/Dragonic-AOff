/// @description  enc(archivo)
/// @param archivo
function enc(argument0) {

	var archivoOrigen = file_text_open_read(argument0);
	var archivoDestino = file_text_open_write("partidaAux.dat");

	var cadena;

	while (!file_text_eof(archivoOrigen)) {
	    cadena = file_text_read_string(archivoOrigen);
	    file_text_readln(archivoOrigen);
	    cadena = base64_encode(cadena);
	    file_text_write_string(archivoDestino, cadena);
	    file_text_writeln(archivoDestino);
	}

	file_text_close(archivoOrigen);
	file_text_close(archivoDestino);

	file_delete(argument0);
	file_rename("partidaAux.dat", argument0);





}
