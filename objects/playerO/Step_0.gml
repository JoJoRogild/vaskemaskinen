if (hascontrol == true)
{
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyJump = keyboard_check_pressed(vk_space);
}
else
{
	keyLeft = 0;
	keyRight = 0;
	keyJump = 0;
}
var move = keyRight - keyLeft;

hsp = move * walksp;

vsp = vsp + grv;
//jumping
if (place_meeting(x,y+1,wallO)) and (keyJump)
{
	vsp = -7;
}else if (!place_meeting(x,y+1,wallO)) and (keyJump) and (extraJumps > 0)
{
	extraJumps--;
	vsp = -7;
}else if (place_meeting(x,y+1,wallO))
{
	extraJumps = extraJumpsValue;
}	
//to here


if (place_meeting(x+hsp,y,wallO))
{
	while (!place_meeting(x+sign(hsp),y,wallO))
	{
		x = x + sign(hsp);
	}	
	hsp = 0;
}
x = x + hsp;


if (place_meeting(x,y+vsp,wallO))
{
	while (!place_meeting(x,y+sign(vsp),wallO))
	{
		y = y + sign(vsp);
	}	
	vsp = 0;
}

y = y + vsp;
//Animation
if (!place_meeting(x,y+1,wallO))
{
	sprite_index = playerJumpS;
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1; else image_index = 0; 
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = playerS;
	}
	else
	{
		sprite_index = playerRunS;
	}
}

if (hsp != 0)image_xscale = sign(hsp);

if (hsp > 0)
{
	with (oFollowPlayer)
	{
		FacingRight = true;
	}	
}	
if (hsp < 0)
{
	with (oFollowPlayer)
	{
		FacingRight = false;
	}	
}	

