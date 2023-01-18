/// @description  Limpia el mundo

if (segundos > 0) {
    contando = true;
    segundos--;
    alarm[0] = 60;
} else if (segundos == 0) {
    contando = false;
    segundos = 15;
    alarm[1] = 1;
}

