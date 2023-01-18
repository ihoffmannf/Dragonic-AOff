/// @description  Estado inicial

depth = 1;
image_speed = 0;
musicaActivada = true;

ini_open("opciones.ini");
musicaActivada = read("opciones", "musicaActivada", true);
ini_close(); 

if (musicaActivada) {
    image_index = 0;
} else {
    image_index = 1;
}



