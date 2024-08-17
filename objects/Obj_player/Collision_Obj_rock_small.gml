if invulnerable == true {}
else 
{
	speed = speed - 1;
	effect_create_above(ef_explosion, x, y, 0.5, c_red);
	global.hp_mass = global.hp_mass - 25;
	invul_time += 2;
}
