if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)
{
    spell_menu = false;
    instance_destroy();
    instance_activate_all();
    audio_play_sound(snd_menu_open,0,false);
	with obj_player
	{
		y -= 1;
		can_pause = false;
		alarm[6] = 5;
	}
}

// Get input for cursor movement
var move_h = 0;
var move_v = 0;

// Check for horizontal movement
if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)) || gamepad_button_check_pressed(0, gp_padr) 
{
	move_h += 1;
	audio_play_sound(snd_menu_select,1,false);
}

if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)) || gamepad_button_check_pressed(0, gp_padl) 
{
	move_h -= 1;
	audio_play_sound(snd_menu_select,1,false);
}

// Check for vertical movement
if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) || gamepad_button_check_pressed(0, gp_padd) 
{
	move_v += 1;
	audio_play_sound(snd_menu_select,1,false);
}

if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) || gamepad_button_check_pressed(0, gp_padu) 
{
	move_v -= 1;
	audio_play_sound(snd_menu_select,1,false);
}

// Update cursor position
cursor_x = (cursor_x + move_h + row_length) % row_length;
cursor_y = (cursor_y + move_v + ((INVENTORY_ITEM_SLOTS - 1) div row_length + 1)) % ((INVENTORY_ITEM_SLOTS - 1) div row_length + 1);

// Handle wrapping around
if (cursor_x < 0) cursor_x = row_length - 1;
if (cursor_y < 0) cursor_y = ((INVENTORY_ITEM_SLOTS - 1) div row_length);

// Check for Enter key press to select the item

//Set item 1
if (keyboard_check_pressed(ord("J"))) || gamepad_button_check_pressed(0,gp_face3)
{
    var selected_index = cursor_y * row_length + cursor_x;
    if (inventory[selected_index] != -1)
    {
        current_item_1 = selected_index;
		
		if instance_exists(obj_player)
		{
			obj_player.item_1 = current_item_1+1;
			audio_play_sound(snd_menu_select,1,false);
		}
    }
}

//Set item 2
if (keyboard_check_pressed(ord("K"))) || gamepad_button_check_pressed(0,gp_face4)
{
    var selected_index = cursor_y * row_length + cursor_x;
    if (inventory[selected_index] != -1)
    {
        current_item_2 = selected_index;
		
		if instance_exists(obj_player)
		{
			obj_player.item_2 = current_item_2+1;
			audio_play_sound(snd_menu_select,1,false);
		}
    }
}

//Set item 3
if (keyboard_check_pressed(ord("L"))) || gamepad_button_check_pressed(0,gp_face2)
{
    var selected_index = cursor_y * row_length + cursor_x;
    if (inventory[selected_index] != -1)
    {
        current_item_3 = selected_index;
		
		if instance_exists(obj_player)
		{
			obj_player.item_3 = current_item_3+1;
			audio_play_sound(snd_menu_select,1,false);
		}
    }
}