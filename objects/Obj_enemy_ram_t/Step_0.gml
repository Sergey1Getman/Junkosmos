if speed > 0
	{
		speed -= 0.1
	}
	if speed < 0
	{
			motion_set(image_angle, 0)
	}
if think > 0 
{
	think -= 1;
}
else 
{
		if instance_exists(Obj_player) 
		{
			if distance_to_object(Obj_player) <= 1200 
			{
				image_angle = point_direction(x, y, Obj_player.x, Obj_player.y);
			}
			else {}
		}



	move_bounce_solid(0);

	if distance_to_object(Obj_player) <= 600 
	{
		if speed > 7.5 {}
		else {motion_add(image_angle, 0.25);}
	}
	else if distance_to_object(Obj_player) <= 1200
	{
		if speed > 5 {}
		else {motion_add(image_angle, 0.15);}
	}
}

if hp <= 0 
{
	effect_create_above(ef_explosion, x, y, 1.2, c_yellow);
	instance_create_layer(x, y, "Instances", Obj_mass);
	instance_destroy();
	audio_play_sound(explosion,0,false);
}

move_wrap(true, true, 0)