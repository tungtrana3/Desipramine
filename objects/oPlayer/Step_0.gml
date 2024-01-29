//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

if (key_jump) || (key_left) || (key_right)
{
	controller = 0;
}

if(abs(gamepad_button_check(0, gp_axislh))>0.2)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;

}
//Caculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x, y+1, oWall) && key_jump)
{
	vsp = -7;
}

//Horiontal Collision
if(place_meeting(x+hsp, y, oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if(!place_meeting(x, y+1, oWall))
{
	image_speed = 1;
	sprite_index = SPlayerA;	
	if(sign(vsp)>0) image_index = 1 else image_index = 7;
}else{
	image_speed = 1;
	if(hsp = 0)
	{
		sprite_index = SPlayer;
	}else
	{
		sprite_index = SPlayerR;
	}
}
if(hsp!=0) image_xscale = sign(hsp);