/// @description  Puede removerse

puedeRemoverse = true;

if (agitando) {
    alarm[8] = random_range((2 * 60) / gradoIA, (2.5 * 60) / gradoIA) * 0.5;
} else {
    alarm[8] = random_range(7 * 60, 9 * 60) * 0.5;
}

