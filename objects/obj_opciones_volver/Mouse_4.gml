/// @description  Vuelve al menú

// Guardar cambios

ini_open("opciones.ini");
write("opciones", "dificultad", obj_control_opciones.dificultad);
write("opciones", "simularHorarios", obj_control_opciones.simularHorarios);
ini_close(); 
 
// Volver

room_goto(rm_menuPrincipal);

