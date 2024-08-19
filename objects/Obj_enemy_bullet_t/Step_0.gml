step = step + 1;
if step % 60 {} else {time_of_life = time_of_life - 1;}
if time_of_life <= 0
{
	effect_create_above(ef_explosion, x, y, 0.5, c_red);
	instance_destroy();
}