#macro INVENTORY_SLOTS 18
row_length = 6;

// Add this to the Create event of obj_inventory
icon_size = 32 * 2; // Adjusted for scaling

// Initialize the inventory slots
inventory = array_create(INVENTORY_SLOTS, -1);

// Example spells added to the inventory
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
inventory[16] = 16;
inventory[17] = 17;

// Activate mouse and spell bar objects
instance_activate_object(obj_mouse);
instance_activate_object(obj_spell_bar);