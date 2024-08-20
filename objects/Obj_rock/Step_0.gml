image_angle += 1;
move_wrap(true, true, 100);
move_bounce_solid(0);

if hp <= 0
{
	audio_play_sound(rockdestroy,0,false);
	instance_create_layer(x, y, "Instances", Obj_rock_small);
	instance_create_layer(x, y, "Instances", Obj_rock_small);
	instance_destroy();
}