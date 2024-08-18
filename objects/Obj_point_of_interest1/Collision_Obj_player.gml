if global.point1_visited == true {}
else 
{
	instance_create_layer((x), (y), "Instances", Obj_rock_ultra);
	global.point1_visited = true;
	image_alpha = 0.4
}
