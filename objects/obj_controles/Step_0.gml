/// @description Insert description here
// You can write your code in this editor

obj_pj.upKey = input_check("up") || obj_flecha_arriba.apretada
obj_pj.downKey = input_check("down") || obj_flecha_abajo.apretada
obj_pj.leftKey = input_check("left") || obj_flecha_izq.apretada
obj_pj.rightKey = input_check("right") || obj_flecha_der.apretada

if (obj_pj.muerto) exit;

if (input_check_pressed("tirar")){
	tirarItem()
}

if (input_check_pressed("atacar")){
	pjAtacar();
}

if (input_check_pressed("usar")){
	usarItem();
}

if (input_check_pressed("meditar")){
	meditar();
}

if (input_check_pressed("agarrar")){
	//input_vibrate_pulse(1.0,0.5,1,30)
	//input_vibrate_pulse(1.0,0.5,1,30)
	agarrar();
}

if (input_check_pressed("lanzar")){
	lanzar();
}