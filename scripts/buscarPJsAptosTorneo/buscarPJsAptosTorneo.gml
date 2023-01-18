/// @description  buscarPJsAptosTorneo()
function buscarPJsAptosTorneo() {

	var i = 1;
	hayPJsAptos = false;

	PJsAptosParaTorneo[0] = false;
	PJsAptosParaTorneo[1] = false;
	PJsAptosParaTorneo[2] = false;
	PJsAptosParaTorneo[3] = false;
	PJsAptosParaTorneo[4] = false;
	PJsAptosParaTorneo[5] = false;
	PJsAptosParaTorneo[6] = false;
	PJsAptosParaTorneo[7] = false;
	PJsAptosParaTorneo[8] = false;

	while (i < 10) {
	    if (file_exists("partida" + string(i) + ".ini")) {
	        dec("partida" + string(i) + ".ini");
	        ini_open("partida" + string(i) + ".ini");
        
	        if (read("obj_pj", "nivel", 1) >= 30) {
	            hayPJsAptos = true;
	            PJsAptosParaTorneo[i - 1] = true;
	        }
        
	        ini_close();
	        enc("partida" + string(i) + ".ini");
	    } else {
	        PJsAptosParaTorneo[i - 1] = true;
	    }
	    i++;
	}






}
