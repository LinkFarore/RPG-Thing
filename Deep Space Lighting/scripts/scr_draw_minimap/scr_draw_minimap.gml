/// @description scr_draw_minimap(map_x, map_y, map_range, vis_x, vis_y, angle)
/// @function scr_draw_minimap
/// @param map_x
/// @param  map_y
/// @param  map_range
/// @param  vis_x
/// @param  vis_y
/// @param  angle
function scr_draw_minimap(argument0, argument1, argument2, argument3, argument4, argument5) {
	var vx, vy, vm;
	// push current transformation state into stack:
	d3d_transform_stack_push();
	// add transformations to rotate and translate the minimap:
	d3d_transform_add_translation(argument3, argument4, 0);
	// distance multiplier:;
	vm = argument5 / argument2;
	// draw map border:
	draw_sprite(spr_radar,0,0,0);
	// draw units:
	with (obj_station) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_blue,1,vx * vm,vy * vm);
	}

	with (obj_blackhole) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_purple,1,vx * vm,vy * vm);
	}

	with (obj_whitehole) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_cyan,1,vx * vm,vy * vm);
	}

	with (obj_planet) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_green,0,vx * vm,vy * vm);
	    //draw_circle(vx * vm, vy * vm, 3, 0);
	}
	
	with (obj_sun) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_white,0,vx * vm,vy * vm);
	    //draw_circle(vx * vm, vy * vm, 3, 0);
	}

	with (obj_asteroid) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_yellow,1,vx * vm,vy * vm);
	}

	with (obj_asteroid_small) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_yellow,0,vx * vm,vy * vm);
	}

	with (obj_asteroid_large) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_yellow,1,vx * vm,vy * vm);
	}

	with (obj_enemy_ship) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_red,0,vx * vm,vy * vm);
	}

	with (obj_enemy_boss) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_red,1,vx * vm,vy * vm);
	}
	
	with (obj_ally) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_green,0,vx * vm,vy * vm);
	}
	
	with (obj_plasma) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_plasma_icon,0,vx * vm,vy * vm);
	}
	
	with (obj_moon) 
	{
	    // find 'offset' from center:
	    vx = x - argument0;
	    vy = y - argument1;
	    // skip if too far from center:
	    if (sqrt(vx * vx + vy * vy) > argument2) continue
	    // draw actual icon:
	    draw_sprite(spr_white_small,0,vx * vm,vy * vm);
	}
	
	// draw player:
	draw_sprite_ext(spr_player_icon,0,0,0,1,1,obj_player.image_angle,c_white,1);
	//draw_set_color(c_white);
	//draw_circle(0, 0, 2, 0);
	// restore transformation to what was before running this
	d3d_transform_stack_pop();
}