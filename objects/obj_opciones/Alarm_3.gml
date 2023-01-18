/// @description  Control lluvia

if (!lloviendo) {
	with (obj_lluvia) {
		instance_destroy();
		break;
	}
}
	
alarm[3] = 15;

