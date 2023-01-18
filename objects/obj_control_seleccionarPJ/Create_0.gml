/// @description  Estado inicial

modoTorneo = obj_control_notificacion_torneos.recibioNotificacion;

elegido = -1;

aux[0] = -1;

datosPJ[0] = aux;
datosPJ[1] = aux;
datosPJ[2] = aux;
datosPJ[3] = aux;
datosPJ[4] = aux;
datosPJ[5] = aux;
datosPJ[6] = aux;
datosPJ[7] = aux;
datosPJ[8] = aux;
datosPJ[9] = aux;

cargarPJs(1);
cargarPJs(2);
cargarPJs(3);
cargarPJs(4);
cargarPJs(5);
cargarPJs(6);
cargarPJs(7);
cargarPJs(8);
cargarPJs(9);

if (modoTorneo) {
    room_goto(rm_seleccionarPJ);
    obj_control_notificacion_torneos.hayPJsAptos = false;
    obj_control_notificacion_torneos.recibioNotificacion = false;
}

