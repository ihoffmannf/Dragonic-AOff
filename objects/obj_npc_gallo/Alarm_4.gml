/// @description  Paralisis / Inmovilización

inmovilizado = false;
paralizado = false;

var idINFO = instance_create(x, y, obj_INFO);
idINFO.padre = id;
idINFO.color = make_color_rgb(211, 90, 211);
idINFO.texto = "¡Removido!"; 
idINFO.tiempo = 180;

