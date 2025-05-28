/// @description scr_sword_control()
/// @function scr_sword_control
function scr_sword_control() {

	if ani = true{exit}
	if sprite_index = spr_link_death{exit}
	if using = true{exit}

	speed = 0;
	image_speed = .25;
	using = true;

	switch(direction)
	{
	    case 0: sprite_index = sprite_sword_r; instance_create(x,y,obj_sword_r); break;
	    case 90: sprite_index = sprite_sword_u; instance_create(x,y,obj_sword_u); break;
	    case 180: sprite_index = sprite_sword_l; instance_create(x,y,obj_sword_l); break;
	    case 270: sprite_index = sprite_sword_d; instance_create(x,y,obj_sword_d); break;
	}



}
