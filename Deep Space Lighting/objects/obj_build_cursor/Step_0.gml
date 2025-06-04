if !instance_exists(obj_build_menu) && keyboard_check(ord("Q"))
{
	instance_create(x,y,obj_build_menu);
}

key_up = keyboard_check_pressed(vk_right) || mouse_wheel_up();
key_down = keyboard_check_pressed(vk_left) || mouse_wheel_down();

key_right= keyboard_check_pressed(vk_up);
key_left = keyboard_check_pressed(vk_down);

if (key_right)
{object += 1}

if (key_left)
{object -= 1}

if object>3
{object = 0;}

if object<0
{object = 3;}

if (key_up)
{direction += 90;}

if (key_down)
{direction -= 90;}

if direction >= 359
{direction = 0;}

if object<0
{direction = 270;}

if object = 0 || object = 1
{
	sprite_index = spr_build_cursor;
	image_index = object;
}

if object = 2
{
	sprite_index = spr_solar;
	image_index = 0;
	image_angle = direction;
}

if object = 3
{
	sprite_index = spr_hangar;
	image_index = 0;
	image_angle = direction;
}

if place_meeting(x,y,obj_ship) || place_meeting(x,y,par_space_build) || place_meeting(x,y,par_planetoid) || obj_player.death == true 
{
    can_build = false;
}
else
{
    can_build = true;
}

if instance_exists(obj_build_menu)
{
	can_build = false;
	sprite_index = spr_mouse;
	image_index = 1;
}
else
{
	if object = 0 || object = 1
	{
	sprite_index = spr_build_cursor
	image_index = object;
	}
	
	if object = 2
	{
		sprite_index = spr_solar;
		image_index = 0;
		image_angle = direction;
	}
	
	if object = 3
	{
		sprite_index = spr_hangar;
		image_index = 0;
		image_angle = direction;
	}
}

if object = 2 || object = 3
{
	var dir = direction; // or however your object determines its facing direction

	// Direction checks (convert angle to dx, dy)
	var check_dist = 16; // or however far to check
	var rad = degtorad(dir);
	var dx = lengthdir_x(check_dist, dir);
	var dy = lengthdir_y(check_dist, dir);

	var dx_opposite = lengthdir_x(check_dist, dir + 180);
	var dy_opposite = lengthdir_y(check_dist, dir + 180);

	var dx_left = lengthdir_x(check_dist, dir - 90);
	var dy_left = lengthdir_y(check_dist, dir - 90);

	var dx_right = lengthdir_x(check_dist, dir + 90);
	var dy_right = lengthdir_y(check_dist, dir + 90);

	// Base checks (prevent overlap with other objects)
	if (place_meeting(x, y, obj_ship) || place_meeting(x, y, par_space_build) || place_meeting(x, y, par_planetoid) || obj_player.death == true) 
	{
	    can_build = false;
	}
	else 
	{
	    // Check that forward, left, and right are free...
	    var clear_front = !place_meeting(x + dx, y + dy, par_space_build);
	    var clear_left = !place_meeting(x + dx_left, y + dy_left, par_space_build);
	    var clear_right = !place_meeting(x + dx_right, y + dy_right, par_space_build);

	    // ...and the back (opposite direction) has a wall
	    var wall_behind = place_meeting(x + dx_opposite, y + dy_opposite, obj_space_wall);

	    if (clear_front && wall_behind) //(clear_front && clear_left && clear_right && wall_behind) 
		{
	        can_build = true;
	    }
	    else 
		{
	        can_build = false;
	    }
	}
}

if can_build && mouse_check_button(mb_left) && obj_player.current_state == "building"
{
    switch(object)
    {
        case 0: instance_create(obj_build_cursor.x,obj_build_cursor.y,obj_space_wall);
                scrap -= 5;
                break;
        case 1: instance_create(obj_build_cursor.x,obj_build_cursor.y,obj_force_field);
                crystals -= 5;
                break;
		case 2: var solar = instance_create(obj_build_cursor.x,obj_build_cursor.y,obj_solar);
				solar.direction = direction;
                crystals -= 5;
				scrap -= 5;
                break;
		case 3: var solar = instance_create(obj_build_cursor.x,obj_build_cursor.y,obj_hangar);
				solar.direction = direction;
                crystals -= 5;
				scrap -= 5;
                break;
    }
}

//movement
x = mouse_x;
y = mouse_y;

if !(place_snapped(32,32)) && !instance_exists(obj_build_menu)
{
move_snap(32,32);
}

//check to see if no longer in build mode
if instance_exists(obj_player)
{
    if obj_player.current_state != "building"
    {
		instance_create(mouse_x,mouse_y,obj_mouse);
        instance_destroy();
    }
}