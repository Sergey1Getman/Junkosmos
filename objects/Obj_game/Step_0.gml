if keyboard_check(vk_f4){
	window_set_fullscreen(!window_get_fullscreen());
}
    
if (global.showdoor1 = true) {
	instance_activate_object(Door1)
	instance_activate_object(pointer_3)
}
if (global.showdoor2 = true && global.point2_visited = true) {
	instance_activate_object(Door2)
	instance_activate_object(pointer_4)
}
if keyboard_check(ord("R"))
{
        game_restart();
}

if room == Room1 or Room_boss
{
if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        //surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    //alarm[0]++;
    //alarm[1]++;
    }
}

if global.boss_defeated = true && check = 1 {alarm[0] = 999; check -= 1;
	audio_play_sound(boss_defeat,0,false)}
if global.player_defeated = true && check = 1 {alarm[0] = 999; check -= 1;}