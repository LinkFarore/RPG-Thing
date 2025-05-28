action_inherited();
if (!stun) && (!hurt) && (grounded) && (shoot)
{
    if distance_to_object(obj_player) < triggerDis && follow
    {
        instance_create(x,y,obj_fireball);
        // space out shots
        shoot = false;
        sprite_index = spr_idle;
        alarm[2] = random_range(t1,t2);   
    }
}

