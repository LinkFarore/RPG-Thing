/// @description  Create the ship
if (global.crystals >= cost) {
    instance_create(x, y, ship);
    global.crystals -= cost;
}

image_index = 0;
image_xscale = 1;
image_yscale = 1;

with (obj_ship_creation_button_parent) {
    instance_deactivate_object(self);
}

