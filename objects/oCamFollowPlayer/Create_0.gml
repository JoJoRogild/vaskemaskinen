follow = oFollowPlayer;
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
// shake cam
shake_lenght = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 2.7;