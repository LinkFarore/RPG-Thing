with(par_enemy)
{instance_destroy();}

obj_player.x = target_x;
obj_player.y = target_y;
room_goto(target_r);

