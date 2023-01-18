/// @description  Remueve al PJ

if (obj_pj.inmovilizado) {
    obj_pj.inmovilizado = false;
    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
    idINFO.padre = obj_pj.id;
    idINFO.color = make_color_rgb(211, 90, 211);
    idINFO.texto = "¡Removido!"; 
    idINFO.tiempo = 180;
}

