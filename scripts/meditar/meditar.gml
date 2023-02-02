// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function meditar(){
	with(obj_tecla_f6){
	    if (!obj_pj.muerto) {

	        if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada) {
                
	            if (teclaApretada) {
	                teclaApretada = false;
	            } else if (obj_pj.mana < obj_pj.manaMax) {
	                teclaApretada = true;
	            }
                
	        } else {
	            var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	            idINFO.padre = obj_pj.id;
	            idINFO.texto = "¡No podés meditar en movimiento!";
	        }
                
	    } else {
	        var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
	        idINFO.padre = obj_pj.id;
	        idINFO.texto = "¡Estás muerto!";
	    }
	}
}