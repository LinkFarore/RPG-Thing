if hp <= 0
{
    instance_change(obj_keep_allied,true);
    effect_create_above(ef_ring,x,y,1,c_blue);
}
if hp > 0
{
    if (!place_meeting(x,y,obj_moblin)) && instance_count < 1500
    {
        instance_create(x+-(irandom(32)),y+-(irandom(32)),obj_moblin);
    }
}

if (!place_meeting(x,y,obj_warrior))
{
    if alarm[0] == -1
    {
        alarm[0] = 90*room_speed
    }
}

if (place_meeting(x,y,obj_warrior))
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

