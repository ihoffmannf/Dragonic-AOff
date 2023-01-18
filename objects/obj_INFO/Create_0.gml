/// @description  Estado inicial

image_speed = 0;
texto = "";
color = c_white;
fuente = fnt_Vedrana_7_bold;
padre = obj_pj.id;
modY = 0;
limite = 12;
tiempo = -1;

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

} else {

    with (obj_INFO) {
        if (id != other.id && padre != obj_pj.id && padre == other.padre) {
            instance_destroy();
        }
    }

}

/*

// Persona

personaRoom = -1;

with (obj_persona) {
    if (roomOrigen == room) {
        other.personaRoom = id;
    }
}

*/

/* */
/*  */
