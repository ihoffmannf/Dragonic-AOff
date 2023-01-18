/// @description  Control general

// Control posición

if (visible) {
	
	if (x >= __view_get( e__VW.XView, 0 ) + anchoV) {
		x -= anchoV;
	} else if (x <= __view_get( e__VW.XView, 0 )) {
	    x += anchoV;
	}

	if (y >= __view_get( e__VW.YView, 0 ) + altoV) {
	    y -= altoV;
		instance_create(__view_get( e__VW.XView, 0 ) + random(__view_get( e__VW.WView, 0 )), __view_get( e__VW.YView, 0 ) + random(__view_get( e__VW.HView, 0 )), obj_salpicadura);
	} else if (y <= __view_get( e__VW.YView, 0 )) {
	    // y += altoV;
	}

	y += ySpd;
	x -= xSpd;

}