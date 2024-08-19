if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
	else
    {
    //draw_surface(paused_surf, camera_get_view_x(view_camera[0])/2.5, camera_get_view_y(view_camera[0])/2.5);
	draw_surface(paused_surf, 0, 0);
    //draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    //draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}

/*else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }*/