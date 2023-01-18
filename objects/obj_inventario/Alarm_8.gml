/// @description Congelamiento

if (esPolo() && !estaAbrigado() && obj_pj.salud > 0) {
	
	var frio = irandom_range(15, 30);
    var idINFO = instance_create(x, y, obj_INFO);
    idINFO.padre = obj_pj.id;
    idINFO.texto = "-" + string(frio);
    idINFO.color = make_color_rgb(125, 220, 251); 
    idINFO.fuente = fnt_Vedrana_8_bold;

    vibrarPantalla();
    
    if (obj_pj.salud > frio) {
        obj_pj.salud -= frio;
    } else {
        muertePJ();
    }
}

alarm[8] = 60
	