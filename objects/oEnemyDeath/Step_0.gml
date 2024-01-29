
if(done == 0)
{
	vsp = vsp + grv;

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
		if(vsp > 0) {
			done = 1;
		};
		
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		image_speed = 0;
		image_index = 7;
		vsp = 0;
	}
	y = y + vsp;

	if(hsp!=0) image_xscale = sign(hsp);
}