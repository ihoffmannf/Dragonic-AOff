/// @description  Recibo la notificación

var type = ds_map_find_value(async_load, "type");
var status = ds_map_find_value(async_load, "status");

if (status == 0) {
    // Error
    var error = ds_map_find_value(async_load, "error");
    show_debug_message("Error en el manejo de la notificación: " + string(error));
} else {
    if (type == "register") {
        ds_map_find_value(async_load, "reg_id");
    } else {
        var data = ds_map_find_value(async_load, "data");
        if (data == "invitacionTorneo" && !recibioNotificacion) {
            recibioNotificacion = true;
            buscarPJsAptosTorneo();
        }
    }
}

