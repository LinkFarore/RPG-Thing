if spell_menu = false
{
	// Reset drag state
	state = state_free;
	item_drag = -1;
	inventory_drag = -1;
	slot_drag = -1;
	exit;
}

state();