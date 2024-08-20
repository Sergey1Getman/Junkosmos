image_angle += 0.6;
step = step + 1;
move_bounce_solid(0);
if speed > 0
{
	speed -= 0.05
}
if speed < 0
{
		motion_set(image_angle, 0)
}

if step % 60 {} else {time_of_life = time_of_life - 1; if time_of_life <= 5 {flash = 0.7}}
if time_of_life <= 0
{
	effect_create_above(ef_explosion, x, y, 0.5, c_purple);
	instance_destroy();
}