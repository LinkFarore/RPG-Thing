event_inherited();

if distance_to_object(obj_spawner) <= 64
{
switch(state)
{
    case enemy_state.wander: scr_enemy_wander(); break;
    case enemy_state.attack: scr_enemy_attack(); break;
}
}

target = obj_player;
//instance_nearest(x,y,obj_keep_allied);

if distance_to_object(target) <= 300
{
state = enemy_state.attack;
}

