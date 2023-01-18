/// @description  Control general

if (y < obj_pj.y) {
    depth = obj_pj.depth + obj_pj.y - y;
} else if (y > obj_pj.y) {
    depth = obj_pj.depth - y + obj_pj.y;
} else {
    depth = obj_pj.depth - 1;
}

if (obj_opciones.opcionArboles) {
    if (place_meeting(x, y, obj_pj)) {
        image_alpha = 0.5;
    } else {
        image_alpha = 1;
    }
}


