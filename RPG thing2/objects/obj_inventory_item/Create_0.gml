#macro INVENTORY_ITEM_SLOTS 5
row_length = 5;
inventory = array_create(INVENTORY_ITEM_SLOTS, -1);

inventory[0] = 0;
inventory[1] = 1;
inventory[2] = 2;
inventory[3] = 3;
inventory[4] = 4;
inventory[5] = 5;

cursor_x = 0; // Initialize cursor position
cursor_y = 0;


if instance_exists(obj_player)
{
	current_item_1 = obj_player.item_1-1
	current_item_2 = obj_player.item_2-1
	current_item_3 = obj_player.item_3-1
}
else
{
	current_item_1 = 0-1;
	current_item_2 = 0-1
	current_item_3 = 0-1
}