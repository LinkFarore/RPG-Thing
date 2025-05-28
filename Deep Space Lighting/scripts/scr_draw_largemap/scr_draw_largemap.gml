function scr_draw_largemap(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
    var vx, vy, vm;
    // push current transformation state into stack:
    d3d_transform_stack_push();
    // add transformations to rotate and translate the minimap:
    d3d_transform_add_translation(argument3, argument4, 0);

    // Calculate the scaling factors for x and y axes based on the minimap size:
    var scaleX = argument6 / argument2;
    var scaleY = argument5 / argument7;
	
	// Draw a semi-transparent black background:
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(-argument6, -argument5, argument6, argument5, false);
    draw_set_alpha(1);  // Reset alpha and color after drawing the background

    // draw units:
    with (obj_asteroid_small) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_brown, 0, vx * scaleX, vy * scaleY);
    }
	
	 with (obj_asteroid) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_brown, 1, vx * scaleX, vy * scaleY);
    }
	
	with (obj_sun) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_white, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_planet) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_green, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_moon) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_white_small, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_blackhole) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_purple, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_whitehole) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_cyan, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_station) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_blue, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_plasma) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_plasma_icon, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_enemy_ship) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_red, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_enemy_boss) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_red, 1, vx * scaleX, vy * scaleY);
    }
	
	with (obj_ally) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_green_small, 0, vx * scaleX, vy * scaleY);
    }
	
	with (obj_fuel_ship) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_yellow, 1, vx * scaleX, vy * scaleY);
    }
	
	with (obj_gib) {
        // find 'offset' from center:
        vx = x - argument0;
        vy = y - argument1;
        // skip if too far from center:
        if (abs(vx) > argument2 || abs(vy) > argument7) continue;
        // draw actual icon as a rectangle:
        draw_sprite(spr_gib, 0, vx * scaleX, vy * scaleY);
    }


    // Repeat the same process for other object types...

    // draw player as a rectangle:
    draw_sprite_ext(spr_player_icon, 0, 0, 0, 1, 1, obj_player.image_angle, c_white, 1);

    // restore transformation to what was before running this
    d3d_transform_stack_pop();
}
