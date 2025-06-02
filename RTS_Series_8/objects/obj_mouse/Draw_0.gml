// Draw self and draw selection box

if !can_build
{
	if (px != -1 && py != -1) {
	    draw_set_alpha(.25);
	    draw_rectangle_color(px, py, mouse_x, mouse_y, c_lime, c_lime, c_lime, c_lime, true);
	    draw_set_alpha(.1);
	    draw_rectangle_color(px, py, mouse_x, mouse_y, c_lime, c_lime, c_lime, c_lime, false);
	    draw_set_alpha(1);
	}
}

draw_self();

if can_build = true
{
	draw_sprite_ext(build_sprite,0,x,y,1,1,0,is_collision,1);
	draw_set_color(c_lime);
	sprite_index = build_sprite;
}
else
{
	draw_set_color(c_white);
	sprite_index = spr_mouse;
}