/// @description  Estado inicial

image_speed = 0;
instance_create(x, y - 32, obj_bloqueo_arboles);
instance_create(x + 32, y - 32, obj_bloqueo_arboles);
instance_create(x - 32, y - 32, obj_bloqueo_arboles);
instance_create(x - 64, y - 32, obj_bloqueo_arboles);

