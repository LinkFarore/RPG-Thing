draw_self();

draw_set_alpha(1);

if instance_exists(obj_player)
{
	if obj_player.target = id
	{
	draw_circle_colour(x,y,sprite_width/2+4,c_red,c_red,true)//Outer Circle
	draw_circle_colour(x,y,sprite_width/2-4,c_red,c_red,true)//Inner Circle
	draw_line_colour(x-sprite_width/2-4,y,x+sprite_width/2+4,y,c_red,c_red)//horizontal
	draw_line_colour(x,y-sprite_width/2-4,x,y+sprite_width/2+4,c_red,c_red)//vertical
	}
}