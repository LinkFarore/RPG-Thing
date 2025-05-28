var xTo,yTo;

move_towards_point(mouse_x,mouse_y,0);

if instance_exists(obj_player)
{
	xTo = obj_player.x + lengthdir_x(min(240,distance_to_point(mouse_x,mouse_y)),direction);//96
	yTo = obj_player.y + lengthdir_y(min(240,distance_to_point(mouse_x,mouse_y)),direction);
}
else
{
	xTo = x;
	yTo = y;
}


x += (xTo-x)/55;
y += (yTo-y)/55;
//x = obj_player.x;
//y = obj_player.y;

__view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 )/2) + x );
__view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 )/2) + y );

if alarm[0] = -1
{
    alarm[0] = irandom_range(1,5);
}