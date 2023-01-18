/// @description  Control general

image_angle++;

if (subiendo) {
    image_alpha += 0.005;
} else {
    image_alpha -= 0.005;
}

if (image_alpha >= 0.45 || image_alpha <= 0) {
    alarm[0] = 1;
}

// Control posición

var anchoV = __view_get( e__VW.WView, 0 );
var altoV = __view_get( e__VW.HView, 0 );

if (x >= __view_get( e__VW.XView, 0 ) + anchoV) {
    x -= anchoV;
} else if (x <= __view_get( e__VW.XView, 0 )) {
    x += anchoV;
}

if (y >= __view_get( e__VW.YView, 0 ) + altoV) {
    y -= altoV;
} else if (y <= __view_get( e__VW.YView, 0 )) {
    y += altoV;
}

