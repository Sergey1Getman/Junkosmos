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