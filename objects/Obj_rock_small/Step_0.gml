image_angle += 1;
move_wrap(true, true, 35);
move_bounce_solid(0);

if hp <= 0
{
	if instance_number(Obj_rock) < 24
	{
		//x_r = random(2)+1;
		//y_r = random(2)+1;
		instance_create_layer(x, y, "Instances", Obj_mass);
		instance_create_layer(spawn_point_x[2], spawn_point_y[2], "Instances", Obj_rock)
		instance_destroy();
	}
	else
	{
		instance_create_layer(x, y, "Instances", Obj_mass);
		instance_destroy();
	}
}