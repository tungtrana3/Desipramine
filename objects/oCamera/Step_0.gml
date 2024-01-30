/// @description Update camera

if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) /25;
y += (yTo - y) /25;

x = clamp(x,view_w_haft, room_width-view_w_haft);
y = clamp(y,view_h_haft, room_height - view_h_haft);
camera_set_view_pos(cam, x - view_w_haft, y - view_h_haft);