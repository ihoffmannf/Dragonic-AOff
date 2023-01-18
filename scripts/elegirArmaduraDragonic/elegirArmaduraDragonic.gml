/// @description  elegirArmaduraDragonic()
function elegirArmaduraDragonic() {

	with (obj_pj) {
		if (claseGuerrera() || claseSemiGuerrera() || clase == 4) {
			if (nroRaza == 0 || nroRaza == 1 || nroRaza == 2) {
				if (genero == 0)
					return 222
				else 
					return 223
			} else {
				return 224
			}
		} else {
			if (nroRaza == 0 || nroRaza == 1 || nroRaza == 2) {
				return 225
			} else {
				return 226
			}
		}
	}

}
