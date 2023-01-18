/// @description  alinearPJ()
function alinearPJ() {

	switch (direccion) { // Controlo la dirección para saber si sumo/resto a la x/y
	    case 0: // Está avanzando hacia abajo  
	        while (y % 16 != 0 || y % 32 == 0) {
	            y++;
	            y = floor(y);
	        }
	        break;
	    case 1: // Está avanzando hacia arriba  
	        while (y % 16 != 0 || y % 32 == 0) {
	            y--;
	            y = floor(y);
	        }
	        break;
	    case 2: // Está avanzando hacia la izquierda  
	        while (x % 16 != 0 || x % 32 == 0) {
	            x--;
	            x = floor(x);
	        }                
	        break;
	    case 3: // Está avanzando hacia la izquierda  
	        while (x % 16 != 0 || x % 32 == 0) {
	            x++;
	            x = floor(x);
	        }
	        break;
	} 

	image_speed = 0;
	pasos = 0;
	puedeMoverse = true;
	frame = 0;

	if (armaActual != -1) {
	    obj_arma.frame = 0;   
	}
    
	if (escudoActual != -1) {
	    obj_escudo.frame = 0;    
	}



}
