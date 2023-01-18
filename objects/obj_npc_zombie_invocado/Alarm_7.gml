/// @description  Se destruyen

if (instance_number(obj_npc_lobo_invocado) == 1) {
    var idINFO = instance_create(x, y, obj_INFO);
    idINFO.padre = obj_pj.id;
    idINFO.texto = "¡Tus zombies se han ido!";
}

instance_destroy();

