y = playerO.y;

if (FacingRight = true)
{
	if (x < playerO.x+240)
	{
		if (x < playerO.x+150)
		{
			x += 10;
		}else
		{
			x += 5;
		}
	}
}
if (FacingRight = false)
{
	if (x > playerO.x-240)
	{
		if (x > playerO.x-150)
		{
			x -= 29;
		}else
		{
			x -= 13;
		}
	}
}
//kast vaskeMaskine
image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay = firingDelay - 1;
if (FacingRight == true)
{
	if (mouse_check_button(mb_left)) and (firingDelay < 0)
	{
		firingDelay = 30;
		with (instance_create_layer(playerO.x+30,playerO.y-15,"player",vaskemaskineO))
		{
			speed = 20;
			direction = 45;
			image_angle = direction;
		}
	}
}

else

{
	if (mouse_check_button(mb_left)) and (firingDelay < 0)
	{
		firingDelay = 30;
		with (instance_create_layer(playerO.x+30,playerO.y-15,"player",vaskemaskineO))
		{
			speed = 20;
			direction = -225;
			image_angle = direction;
		}
	}
}
//to here