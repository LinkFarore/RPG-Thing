if instance_exists(target)
{
	draw_line_color(x,y,target.x,target.y,c_blue,c_blue);
}

draw_circle_color(x,y,enemy_size+border_size,c_maroon,c_maroon,false);
draw_circle_color(x,y,enemy_size,c_red,c_red,false);