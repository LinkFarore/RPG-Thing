if instance_exists(target)
{
	draw_line_color(x,y,target.x,target.y,c_blue,c_blue);
}

draw_circle_color(x,y,enemy_size+border_size,c_blue,c_blue,false);
draw_circle_color(x,y,enemy_size,c_aqua,c_aqua,false);