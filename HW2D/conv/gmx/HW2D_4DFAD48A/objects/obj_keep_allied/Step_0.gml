if hp <= 0
{
instance_change(obj_keep_enemy,true);
effect_create_above(ef_ring,x,y,1,c_red);
}

if hp > 0
{
    if (!place_meeting(x,y,obj_warrior))
    {
        instance_create(x+-(irandom(32)),y+-(irandom(32)),obj_warrior);
    }
}

if (!place_meeting(x,y,par_enemy))
{
    if alarm[0] == -1
    {
        alarm[0] = 30*room_speed
    }
}

if (place_meeting(x,y,par_enemy))
{
    if alarm[1] == -1
    {
        alarm[0] = 3*room_speed
    }
}

if hp > 10
{
    hp = 10;
}

