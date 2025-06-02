/// @description scr_item_toggle()
if (keyboard_check_pressed(vk_right))
{
item += 1;
}

if (keyboard_check_pressed(vk_left))
{
item -= 1;
}

if item < i_min 
{
item = i_max;
}

if item > i_max
{
item = i_min;
}
