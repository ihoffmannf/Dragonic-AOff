/// @description  Control general

if (y < obj_pj.y) {
    depth = obj_pj.depth + obj_pj.y - y;
} else if (y > obj_pj.y) {
    depth = obj_pj.depth - y + obj_pj.y;
} else {
    depth = obj_pj.depth - 1;
}

