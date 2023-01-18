/// @description Se destruye?

if (!obj_opciones.opcionTechos) {

    if (
    (place_meeting(obj_pj.x, obj_pj.y, obj_techo_basic)) ||
    (place_meeting(obj_pj.x, obj_pj.y - 32, obj_techo_basic))
    ) {
        visible = false;
    } else {
        visible = true;
    }

} else {

    if (
    (place_meeting(obj_pj.x, obj_pj.y, obj_techo_basic)) ||
    (place_meeting(obj_pj.x, obj_pj.y - 32, obj_techo_basic))
    ) {
		image_alpha = 0.35;
    } else {
        image_alpha = 1;
    }
    
}