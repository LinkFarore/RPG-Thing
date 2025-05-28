/// @description Control the player
key_move = keyboard_check(ord("W"));
key_move_back = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

//Set the initialization for the spell keys
spell_key_1 = keyboard_check(ord("1"));
spell_key_2 = keyboard_check(ord("2"));
spell_key_3 = keyboard_check(ord("3"));
spell_key_4 = keyboard_check(ord("4"));
spell_key_5 = keyboard_check(ord("5"));

if (spell_menu)
{exit;}

//Turning
if (key_left)
{
	dir += turn_speed;	
}

if (key_right)
{
	dir -= turn_speed;	
}

if dir > 360
{dir = 0;}

if dir < 0
{dir = 360;}

//Get the direction the player is facing
image_angle = dir;

//Movement
if key_move
{  
    motion_add(dir,move_speed);
}

if key_move_back
{
	if dir <= 180
	{
    motion_add(dir+180,move_speed);
	}
	else
	{
    motion_add(dir-180,move_speed);
	}
}

//Speed cap
if speed > player_speed
{
	speed = player_speed;
}

//Camera
preferredHeight = 480;
viewRatio = window_get_width()/window_get_height();
calculatedWidth = preferredHeight*viewRatio;

camera_set_view_pos(view_camera[0],obj_player.x-calculatedWidth/2,obj_player.y-preferredHeight/2);
camera_set_view_size(view_camera[0], floor(calculatedWidth), floor(preferredHeight));
camera_set_view_angle(view_camera[0], -dir+90);

//Fire the spell.
if spell_key_1
{
	player_spells(spell_bar[0]);
}

if spell_key_2
{
    player_spells(spell_bar[1]);
}

if spell_key_3
{
    player_spells(spell_bar[2]);
}

if spell_key_4
{
    player_spells(spell_bar[3]);
}

if spell_key_5
{
    player_spells(spell_bar[4]);
}

if !spell_key_1 && !spell_key_2 && !spell_key_3 && !spell_key_4 && !spell_key_5
{
    image_index = 0;
    if (global.mana < global.maxmana)
    {
        global.mana += global.maxmana/50;
        if (global.mana > global.maxmana)
        {
            global.mana = global.maxmana;
        }
    }
}

//set the friction
if (!key_move) and (!key_move_back)
{
    friction = 1;
}else{
    friction = 0;
}

if keyboard_check_pressed(vk_tab) && can_pause == true
{
	spell_menu = true;
	can_pause = false;
	camera_angle_saved = camera_get_view_angle(view_camera[0]);
	camera_set_view_angle(view_camera[0],0);
	instance_deactivate_all(true);
	instance_create((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3)-12,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_inventory);
	instance_create((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3)-12,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_spell_bar);
}