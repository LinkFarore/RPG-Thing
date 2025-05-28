action_inherited();
if !(stun) && !(hurt)
{
    if distance_to_object(obj_player) < triggerDis && follow && shoot {
        instance_create(x,y,parPro);
        // space out shots
        shoot = false;
        alarm[2] = random_range(t1,t2);   
    }
}

