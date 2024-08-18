image_angle += 1;
move_wrap(true, true, 100);
if hp <= 0
{
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_destroy();
}