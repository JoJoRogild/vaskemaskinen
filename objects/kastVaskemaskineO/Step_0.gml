x = playerO.x+30;
y = playerO.y-15;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay = firingDelay - 1;
if (mouse_check_button(mb_left)) and (firingDelay < 0)
{
	firingDelay = 30;
	with (instance_create_layer(x,y,"player",vaskemaskineO))
	{
		speed = 20;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}