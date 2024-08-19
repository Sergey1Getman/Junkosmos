image_angle = point_direction(x, y, Obj_player.x, Obj_player.y);
if lock_in > 0 {lock_in -= 1}
if shot_cooldown > 0 {shot_cooldown -= 1}


if global.multishot_attack == true 
{
	if lock_in <= 0 {lock_in += 160; global.cd += 320;}
	if lock_in == 4 {global.multishot_attack = false;}
	//global.cd += 320;
	if shot_cooldown <= 0 
	{
		global.bullet_angle = image_angle - 30;
		instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss_canons);
		global.bullet_angle = image_angle;
		instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss_canons);
		global.bullet_angle = image_angle + 30;
		instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss_canons);
		shot_cooldown += 15;
	}
}
else 
{
	if shot_cooldown <= 0 
	{
		instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss_canons);
		shot_cooldown += 15;
	}
}


//instance_create_layer(x, y, "Instances", Obj_enemy_bullet);