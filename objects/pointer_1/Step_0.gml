var Object_of_interest = instance_nearest(x, y, Obj_point_of_interest1);

image_angle = point_direction(x, y, Object_of_interest.x, Object_of_interest.y);

move_towards_point(Object_of_interest.x, Object_of_interest.y, 100);

x = clamp(x, camera_get_view_x(view_camera[0]) + 200, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200);
y = clamp(y, camera_get_view_y(view_camera[0]) + 200, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 200);

if (Object_of_interest.xprevious > camera_get_view_x(view_camera[0]) && Object_of_interest.x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) 
{
	if (Object_of_interest.y > camera_get_view_y(view_camera[0]) && Object_of_interest.y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) 
	{
		visible = false;
	}
	else 
	{
		visible = true;
	}
}
else 
{
	visible = true;
}