/// @description  Manejo de posición del mensaje

cant = 0;

idDano[0] = -1;
idDano[1] = -1;

if (padre == obj_pj.id) {

    with (obj_efecto_dano) {
        if (id != other.id && padre == obj_pj.id) {
            if (other.cant <= 1) {
                other.idDano[other.cant] = id;
            }
            other.cant++;
        }
    }
    
    if (cant == 1) {
        if (idDano[0].limite == 12) {
            limite = 3;
        } else {
            limite = 12;
        }
    } else if (cant > 1) {
        if (idDano[0] < idDano[1]) {
            limite = idDano[0].limite;
            with (idDano[0]) {
                instance_destroy();
            }
        } else {
            limite = idDano[1].limite;
            with (idDano[1]) {
                instance_destroy();
            }
        }
    }

}

visible = true;

