/// @description  Se destruyen

var idINFO = instance_create(x, y, obj_INFO);
idINFO.padre = obj_pj.id;
idINFO.texto = "¡Tu elemental se ha ido!";

instance_destroy();

