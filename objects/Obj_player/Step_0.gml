/// @description Movement
// Вы можете записать свой код в этом редакторе
step = step + 1;

if stage == 1
{
	global.multishot = false;
	camera_set_view_size(cam, 1600, 1200);
	camera_set_view_border(cam, 800, 600);
	image_xscale = 1;
    image_yscale = 1;
	//sprite_index = spr_player;
	global.hp_mass_max = mass_until_new_stage[stage-1];
	if global.hp_mass >= global.hp_mass_max {stage += 1;}
}
else if stage == 2
{
	global.multishot = false;
	camera_set_view_size(cam, (1600*1.25), (1200*1.25));
	camera_set_view_border(cam, (800*1.25), (600*1.25));
	//sprite_index = spr_player_1;
	image_xscale = 1.5;
    image_yscale = 1.5;
	
	global.hp_mass_max = mass_until_new_stage[stage-1];
	if global.hp_mass >= global.hp_mass_max {stage += 1;}
	else if global.hp_mass < mass_until_new_stage[stage-2] {stage -= 1}
}
else if stage == 3
{
	global.multishot = true;
	camera_set_view_size(cam, (1600*1.5), (1200*1.5));
	camera_set_view_border(cam, (800*1.5), (600*1.5));
	image_xscale = 2;
    image_yscale = 2;
	//sprite_index = spr_player_2;
	//global.hp_mass_max = mass_until_new_stage[stage-1];
	if global.hp_mass < mass_until_new_stage[stage-2] {stage -= 1}
}

if global.hp_mass >= global.hp_mass_max {global.hp_mass = global.hp_mass_max}

if invul_time > 0
{
	invulnerable = true;
	invul_time -= 1
}
else {invulnerable = false;}


if speed > 0
{
	speed -= 0.02
}
if speed < 0
{
		motion_set(image_angle, 0)
}


if keyboard_check(vk_up)
{
		if speed > 5 { if speed > 8 {} else {motion_add(image_angle, 0.05);} }
		else {motion_add(image_angle, 0.1);}
}
if keyboard_check(vk_left)
{
        image_angle += 4;
}
if keyboard_check(vk_right)
{
        image_angle -= 4;
}


// WASD controls
if keyboard_check(ord("W"))
{
		if speed > 5 { if speed > 8 {} else {motion_add(image_angle, 0.05);} }
		else {motion_add(image_angle, 0.1);}
}
if keyboard_check(ord("A"))
{
        image_angle += 4;
}
if keyboard_check(ord("D"))
{
        image_angle -= 4;
}
if mouse_check_button_pressed(mb_left)
{
		if global.multishot == true 
		{
			global.shot_angle = image_angle - 30;
			instance_create_layer(x, y, "Instances", Obj_bullet);
			global.shot_angle = image_angle
			instance_create_layer(x, y, "Instances", Obj_bullet);
			global.shot_angle = image_angle + 30
			instance_create_layer(x, y, "Instances", Obj_bullet);
		}
		else {instance_create_layer(x, y, "Instances", Obj_bullet)}
}



if keyboard_check(ord("R"))
{
        game_restart();
}

if global.hp_mass <= 0 {instance_destroy();}

move_wrap(true, true, 0)