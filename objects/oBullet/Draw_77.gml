/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oWall))
{
	effect_create_above(ef_flare,x,y,1, 16777215);
	instance_destroy();
}

