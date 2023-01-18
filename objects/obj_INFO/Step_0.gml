/// @description  Control general

if (instance_exists(padre)) {

    x = padre.x;
    y = padre.y;
    
    if (padre == obj_pj.id || padre.object_index == obj_persona) {
        if (padre.dicePalabrasMagicas && padre.palabrasMagicas != "") {
            instance_destroy();
        }
    }
    
    visible = true;
    
} else {
    instance_destroy();
}

if (modY < limite) {
    modY++;
}

if (tiempo == -1) {
    image_alpha -= 0.015;
    
    if (image_alpha <= 0) {
        instance_destroy();
    }
} else {
    tiempo--;
    if (tiempo = 0) {
        instance_destroy();
    }
}








