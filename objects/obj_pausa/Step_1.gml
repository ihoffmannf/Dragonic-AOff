/// @description  Desactivo
    
with (all) {
    if (
    object_index != obj_pausa && 
    object_index != obj_opciones && 
    object_index != obj_control_vista &&
    object_index != obj_control_opciones &&
    object_index != obj_control_devices &&
    object_index != obj_control_musica &&
    object_index != obj_sonido_mar &&
    object_index != obj_borde_mapa &&
    object_index != obj_opcion_sonido &&
    object_index != obj_opcion_musica &&
    object_index != obj_control_notificacion_torneos
    ) {
        instance_deactivate_object(self);
    }
}

with (obj_nubes) {
    instance_destroy();
}

