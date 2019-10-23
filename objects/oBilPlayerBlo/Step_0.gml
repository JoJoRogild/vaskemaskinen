if (hasControl = false)
{
	keyRight = 0;
	keyLeft = 0;
	keyUp = 0;
	keyDown = 0;
}
else
{
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
}
var moveHor = keyRight - keyLeft;
var moveVer = keyDown - keyUp;

hsp = moveHor * carSpeedHor;
vsp = moveVer * carSpeedVer;

if (hsp > 0)
{
	if (carSpeedHor < maxHsp)
	{
		carSpeedHor += 0.3;
	}
}

if (vsp > 0)
{
	if (carSpeedVer < maxVsp)
	{
		carSpeedVer += 0.3;
	}
}
//collision
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
// to here