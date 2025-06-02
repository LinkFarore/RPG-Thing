/// @description  Create the ship
if (global.crystals >= cost) {
    with obj_mouse
	{
		alarm[0] = 5;
		object_build = obj_power_dist;
		build_sprite = spr_power_dist; 
	}
    global.crystals -= cost;
	global.refund = cost;
}

image_index = 0;
image_xscale = 1;
image_yscale = 1;

with (obj_ship_creation_button_parent) {
    instance_deactivate_object(self);
}

