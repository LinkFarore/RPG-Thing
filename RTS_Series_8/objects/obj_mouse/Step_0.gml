x = mouse_x;
y = mouse_y;

if !(place_snapped(32,32)) && can_build
{
move_snap(32,32);
}

if place_meeting(x,y,obj_ship)
{
	is_collision = c_red;	
	can_place = false;
}
else
{
	is_collision = c_lime;
	can_place = true;
}