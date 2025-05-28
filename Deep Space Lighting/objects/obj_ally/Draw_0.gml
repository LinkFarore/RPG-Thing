draw_self();

draw_set_alpha(1);

if (hit)
{
    draw_healthbar_circular(x,y,sprite_width+4,90,hp,spr_healthbar);
}

if foe == obj_player
{
	image_blend = c_red;	
}
else
{
	image_blend = c_white;	
}