instance_destroy(other);
hp -= 50;
direction = random(360);
if hp <= 0
{
	/*if sprite_index = spr_rock_big 
	{
		sprite_index = spr_rock_small;
		instance_copy(true); hp = 50; direction = random(360); speed = random(2);
		//for (i = random(3); i <= 0; i--) {instance_copy(true); hp = 50; direction = random(360); speed = random(2);}
	}
	else if instance_number(Obj_rock) < 24
	{
		sprite_index = spr_rock_big;
		x = x-100
		//x = spawn_point_x[0];
		//y = spawn_point_y[0];
		hp = 200;
	}
	else {instance_destroy();}*/
	/*for (i = 2; i <= 0; i--) 
	{
		instance_create_layer(x, y, "Instances", Obj_rock_small);
	}*/
	instance_create_layer(x, y, "Instances", Obj_rock_small);
	instance_create_layer(x, y, "Instances", Obj_rock_small);
	instance_destroy();
}