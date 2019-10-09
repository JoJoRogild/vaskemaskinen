if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}
// update data to cam
x += (xTo - x) / 15;
y += (yTo - y) / 15;
// shake the cam under her
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);

shake_remain = max(0,shake_remain-((1/shake_lenght)*shake_magnitude));

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);