/// @description Insert description here
// You can write your code in this editor


//Movement

//Horizonal Collision
if !place_free(x+dx,y)
{
	if abs(dx)>=2
	{
		dx = -dx*bounce_factor;	
	}
	else
	{
		move_contact_solid((dx > 0)? 0 : 180, abs(dx));
		dx = 0;
	}
}

//Friction
if !place_free(x,y+1)
{
	dx *= fr;	
}

//Gravity
dy += grav;

//Vertical Collision
if !place_free(x,y+dy)
{
	if abs(dy)>=2
	{
		dy = -dy*bounce_factor;	
	}
	else
	{
		move_contact_solid((dy > 0)? 270 : 90, abs(dy));
		dy = 0;
	}
}

//Apply movement
x += dx;
y += dy;