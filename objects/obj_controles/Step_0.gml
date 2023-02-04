/// @description Insert description here
// You can write your code in this editor

obj_pj.upKey = keyboard_check(mapArriba) || obj_flecha_arriba.apretada
obj_pj.downKey = keyboard_check(mapAbajo) || obj_flecha_abajo.apretada
obj_pj.leftKey = keyboard_check(mapIzquierda) || obj_flecha_izq.apretada
obj_pj.rightKey = keyboard_check(mapDerecha) || obj_flecha_der.apretada

if (obj_pj.muerto) exit;

if (keyboard_check_pressed(mapTirar)){
	tirarItem()
}

if (keyboard_check_pressed(mapAtacar)){
	pjAtacar();
}

if (keyboard_check_pressed(mapUsar)){
	usarItem();
}

if (keyboard_check_pressed(mapMeditar)){
	meditar();
}

if (keyboard_check_pressed(mapLanzar)){
	lanzar();
}