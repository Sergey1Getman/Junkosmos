if global.hp_mass >= global.hp_mass_max {global.hp_mass = global.hp_mass_max}
else {global.hp_mass += 50
	audio_play_sound(pacman_chomp,0,false)}
instance_destroy();