/*if image_angle != point_direction(x, y, obj_player.x, obj_player.y)
{
	
}*/
if cooldown > 0 {cooldown -= 1;}
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
		if distance_to_object(Obj_player) <= 2400
		{
			if (check = false){
			audio_play_sound(alien_spaceship_6321,0,false);
			check = true;
			}
		}
	}
}

if speed > 0
{
	speed -= 0.02
}
if speed < 0
{
		motion_set(image_angle, 0)
}

move_bounce_solid(0);

if distance_to_object(Obj_player) <= 600 
{
	if cooldown = 0 
	{
		cooldown += 30;
		instance_create_layer(x, y, "Instances", Obj_enemy_bullet);
	}
	if speed > 5 {}
	else {motion_add(image_angle, 0.05);}
}
else if distance_to_object(Obj_player) <= 1200
{
	if speed > 5 {}
	else {motion_add(image_angle, 0.1);}
}


if hp <= 0 
{
	effect_create_above(ef_explosion, x, y, 1.2, c_yellow);
	instance_create_layer(x, y, "Instances", Obj_mass);
	audio_play_sound(explosion,0,false);
	instance_destroy();
	
}

move_wrap(true, true, 0)

