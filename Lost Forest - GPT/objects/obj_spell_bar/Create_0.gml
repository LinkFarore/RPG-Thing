row_length = 5;

// Add this to the Create event of obj_inventory
icon_size = 32 * 2; // Adjusted for scaling


// Temporary spell bar data array
spell_bar_temp = array_create(5, -1);

// Initialize spell bar slots from the player
spell_bar_temp[0] = obj_player.spell_bar[0];
spell_bar_temp[1] = obj_player.spell_bar[1];
spell_bar_temp[2] = obj_player.spell_bar[2];
spell_bar_temp[3] = obj_player.spell_bar[3];
spell_bar_temp[4] = obj_player.spell_bar[4];