image_angle += 1;
move_wrap(true, true, 100);
if hp <= 0
{
	audio_play_sound(rockdestroy,0,false);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_create_layer(x, y, "Instances", Obj_rock);
	instance_destroy();
}