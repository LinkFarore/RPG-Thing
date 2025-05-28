#macro INVENTORY_SLOTS 10
row_length = 5;
inventory = array_create(INVENTORY_SLOTS, -1);

inventory[0] = 0;
inventory[1] = 1;
inventory[2] = 2;
inventory[3] = 3;
inventory[4] = 4;
inventory[5] = 5;
inventory[6] = 6;
inventory[7] = 7;
inventory[8] = 8;
inventory[9] = 9;
inventory[10] = 10;
inventory[11] = 11;
inventory[12] = 12;
inventory[13] = 13;
inventory[14] = 14;
inventory[15] = 15;

cursor_x = 0; // Initialize cursor position
cursor_y = 0;

if instance_exists(obj_player)
{
	current_spell_1 = obj_player.spell_1-1
	current_spell_2 = obj_player.spell_2-1
	current_spell_3 = obj_player.spell_3-1
}
else
{
	current_spell_1 = 0-1;
	current_spell_2 = 0-1
	current_spell_3 = 0-1
}