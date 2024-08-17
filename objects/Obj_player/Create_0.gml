/// @description Stats
i = 0;

stage = 1;
global.hp_mass = 200;
global.hp_mass_max = 200;
global.multishot = false;
global.shot_angle = 0;
mass_until_new_stage = [400, 600, 1000]
step = 0;
invulnerable = false;
invul_time = 0;
flash = 0;

cam = view_get_camera(0);