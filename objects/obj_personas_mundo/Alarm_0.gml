/// @description Viste de ropa invernal a los bots

with (obj_persona) {
	if (salud > 0 && esMapaPolo() && eqRopa != 68 && eqRopa != 69 && eqRopa != 70) {
		abrigaIA()
		other.alarm[0] = irandom_range(90, 120)
		break
	}
}

alarm[0] = irandom_range(90, 120)