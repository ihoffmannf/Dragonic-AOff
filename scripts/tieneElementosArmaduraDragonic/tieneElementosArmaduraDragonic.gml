/// @description  tieneElementosArmaduraDragonic()
function tieneElementosArmaduraDragonic() {

	var tieneLingotes = tieneItemEnInv(151, 150) && tieneItemEnInv(152, 150) && tieneItemEnInv(153, 150) && tieneItemEnInv(163, 5)
	var tieneOro = obj_pj.oro >= 1000000
	
	return tieneLingotes && tieneOro

}
