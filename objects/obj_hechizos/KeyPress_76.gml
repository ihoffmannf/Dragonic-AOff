/// @description  Lanzo hechizo

if (seleccionado != -1) {

    for (var i = 0; i < maximoHechizos; i++) {
        if (seleccionado == indiceHechizos[i]) {
            break;
        }
    }
    
    if (obj_pj.puedeAtacar) {
        obj_pj.atacaConHechizo = true;
    }
    
}

keyboard_key_release(ord("L"));
obj_tecla_lanzar.alarm[0] = 2;

