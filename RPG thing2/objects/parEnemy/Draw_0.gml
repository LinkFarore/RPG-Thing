draw_self();

if stun = true
{
    image_blend = c_blue;
}

if hurt || hurt_aoe
{
	switch(alarm[5])
	{
	case -1:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_red,image_alpha);
			alarm[5] = 7;
			break;
	case 0:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_red,image_alpha);
			break;
	case 1:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_red,image_alpha);
			break;
	case 2:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_aqua,image_alpha);
			break;
	case 3:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_aqua,image_alpha);
			break;
	case 4:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_aqua,image_alpha);
			break;
	case 5:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_yellow,image_alpha);
			break;
	case 6:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_yellow,image_alpha);
			break;
	case 7:	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_yellow,image_alpha);
			break;
	}
}

if !(hurt) && (!stun) && (!hurt_aoe)
{
    image_blend = c_white;
}