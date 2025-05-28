/// @description  Initialize the ship
scr_ship_init(5,-1,3,30,1,1,180,128);
shield_mask = sprite_index;
shield = false;
cloak = false;
alarm[4] = room_speed*3;
hit = false;
crit = false;
stun = false;
direction = irandom(360);
dir = direction;

if (instance_exists(obj_ally)) && distance_to_object(obj_ally) <= chase_distance
{
    foe = instance_nearest(x, y, obj_ally);
}
else
if (instance_exists(par_player))
{
	foe = instance_nearest(x, y, par_player);		
}