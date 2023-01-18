/// @description  Estado inicial

image_speed = 0;
indice = 0;
texto = "";
color = make_color_rgb(255, 150, 15);
padre = obj_pj.id;
modY = 0;
limite = 12;

// Manejo de posición del mensaje

cant = 0;

idMsj[0] = -1;
idMsj[1] = -1;

if (padre == obj_pj.id) {

    with (obj_msj_basic) {
        if (id != other.id && padre == obj_pj.id) {
            if (other.cant <= 1) {
                other.idMsj[other.cant] = id;
            }
            other.cant++;
        }
    }
    
    if (cant == 1) {
        if (idMsj[0].limite == 12) {
            limite = 3;
        } else {
            limite = 12;
        }
    } else if (cant > 1) {
        if (idMsj[0] < idMsj[1]) {
            limite = idMsj[0].limite;
            with (idMsj[0]) {
                instance_destroy();
            }
        } else {
            limite = idMsj[1].limite;
            with (idMsj[1]) {
                instance_destroy();
            }
        }
    }

}

