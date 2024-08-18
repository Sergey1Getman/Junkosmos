instance_destroy(other);
hp -= 50;
if hp <= 0
{
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_destroy();
}