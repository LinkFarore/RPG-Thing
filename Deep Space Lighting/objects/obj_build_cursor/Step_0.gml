if !instance_exists(obj_build_menu) && keyboard_check(ord("Q"))
{
	instance_create(x,y,obj_build_menu);
}

key_right = keyboard_check_pressed(vk_right) || mouse_wheel_up();
key_left = keyboard_check_pressed(vk_left) || mouse_wheel_down();

if (key_right)
{object += 1}

if (key_left)
{object -= 1}

if object>1
{object = 0;}

if object<0
{object = 1;}

image_index = object;


if place_meeting(x,y,obj_ship) || place_meeting(x,y,obj_space_wall) || place_meeting(x,y,obj_force_field) || place_meeting(x,y,par_planetoid) || obj_player.death == true 
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
	sprite_index = spr_build_cursor
	image_index = object;
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