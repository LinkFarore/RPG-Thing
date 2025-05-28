// Initialize variables
xx = 0;
grab = false;
value = global.temp_r_li;  // Initial value in the middle of the 0-255 range

depth = -100;

alarm[0] = 1;

if instance_exists(obj_button)
with (obj_button)
{instance_destroy();}