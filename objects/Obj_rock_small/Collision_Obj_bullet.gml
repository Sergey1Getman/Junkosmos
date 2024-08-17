/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
hp -= 50;
//direction = image_angle.other;
instance_destroy(other);

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