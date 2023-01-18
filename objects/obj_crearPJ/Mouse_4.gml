/// @description  Crea el PJ

if (room == rm_crearPJ) {
    if (obj_nombrePJ.nombre != "" && obj_skills.skillsLibres == 0) {
        room_goto(rm_79);
        crearObjetosBasicos(-1);
        
    }
}

