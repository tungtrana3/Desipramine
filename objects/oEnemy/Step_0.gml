

//Horiontal Collision
if(place_meeting(x+hsp, y, oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

vsp = vsp + grv;
//Vertical Collision
if(place_meeting(x, y+vsp, oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + 1;
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if(!place_meeting(x, y+1, oWall))
{
	sprite_index = sEnemy;	
	image_index = 1;
}else{
	image_speed = 1;
	if(hsp = 0)
	{
		sprite_index = sEnemy;
		image_index = 0;

	}else
	{
		sprite_index = sEnemyR;
	}
}

if(hsp!=0) image_xscale = sign(hsp);