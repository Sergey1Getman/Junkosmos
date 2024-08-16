/// @description Movement
// Вы можете записать свой код в этом редакторе
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

move_wrap(true, true, 0)