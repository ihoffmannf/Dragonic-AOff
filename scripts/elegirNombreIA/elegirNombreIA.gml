/// @description  elegirNombreIA()
function elegirNombreIA() {

	ini_open("nombresIA.ini");

	var i;
	var j = 0;
	var dCabeza;
	var dClase;
	var dPK;
	dNombre = "";

	do {

	    i = floor(random_range(0, 120));
	    dCabeza = asset_get_index(readS("nombresIA", "nombresIA[" + string(i) + ", 1]", "spr_cabeza_1"));
	    dClase = read("nombresIA", "nombresIA[" + string(i) + ", 2]", 0);
	    dPK = read("nombresIA", "nombresIA[" + string(i) + ", 3]", 0);
	    dNombre = readS("nombresIA", "nombresIA[" + string(i) + ", 0]", "Bot");
	    j++;
    
	    var nombreInvalido = false;
    
	    var k = 0;
	    while (k < obj_personas_mundo.totalMultiIA) {
	        var aux = obj_personas_mundo.globalIA[k];
	        if (aux[0] != -1 && aux[14] == dNombre) {
	            nombreInvalido = true;
	            break;
	        }
	        k++;
	    }
    
	    if (nombreInvalido || j == 20) {
    
	        if (nombreInvalido || obj_pj.nivel <= 12) {
        
	            if (random(10) > 5) {
	                genero = 0;
	            } else {
	                genero = 1;
	            }
            
	            clase = floor(random(3));
            
	            if (clase < 0 || clase > 2) {
	                clase = 0;
	            }
            
	            if (clase == 2) {
	                nroRaza = 1;
	            } else if (clase == 1) {
	                if (random(10) > 5) {
	                    nroRaza = 0;
	                } else {
	                    nroRaza = 4;
	                }
	            } else {
	                if (random(10) > 5) {
	                    nroRaza = 0;
	                } else {
	                    nroRaza = 2;
	                }
	            }
            
	            sprCabeza = elegirCabezaRandom(nroRaza, genero);
            
	        } else {
	            pk = !pk;
	        }        
        
	        j = 0;
        
	    }
    
	} until (dNombre != "Bot" && !nombreInvalido && dCabeza == sprCabeza && dClase == clase && dPK == pk);

	return dNombre;

	ini_close();



}
