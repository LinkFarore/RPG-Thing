using = false;
magicrod = false;
ani = false;

/*
if direction = 270{
    sprite_index = spr_link_d
}
if direction = 180{
    sprite_index = spr_link_l
}
if direction = 90{
    sprite_index = spr_link_u
}
if direction = 0{
    sprite_index = spr_link_r
}*/

switch (direction)
{
	case 270:
		sprite_index = spr_link_d;
	break;
	
	case 180:
		sprite_index = spr_link_l;
	break;
	
	case 90:
		sprite_index = spr_link_u
	break;
	
	case 0:
		sprite_index = spr_link_r
	break;
	
	default:
		sprite_index = spr_link_d;
	break;
}