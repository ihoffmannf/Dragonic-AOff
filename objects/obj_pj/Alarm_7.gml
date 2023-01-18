/// @description  Veneno

if (envenenado) {

    var idINFO = instance_create(x, y, obj_INFO);
    idINFO.padre = id;
    idINFO.texto = "-" + string(veneno);
    idINFO.color = c_lime; 
    idINFO.fuente = fnt_Vedrana_8_bold;

    vibrarPantalla();
    
    if (salud > veneno) {
        salud -= veneno;
    } else {
        muertePJ();
    }
    
    alarm[7] = 300;
    
}
    

