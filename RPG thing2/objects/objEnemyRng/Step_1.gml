action_inherited();
if !(stun) && !(hurt) && !(level_up)
{
    if distance_to_object(obj_player) < triggerDis && follow && shoot {
        instance_create(x,y,parPro);
        // space out shots
        shoot = false;
		shooting = true;
		sprite_index = sprite_shoot;
        alarm[2] = random_range(t1,t2); 
    }
}