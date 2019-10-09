if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,1023,percent*h_half,false);
	draw_rectangle(0,1000,1023,h-(percent * h_half),false);
}