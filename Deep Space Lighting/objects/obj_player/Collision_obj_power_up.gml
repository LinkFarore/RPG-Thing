if power_take = false
{
message_powerup = true;
message2 = false;
message_life = false;
message_shield = false;
message_energy = false;
message_attack = false;
power_take = true;
heal_message2 = false;
heal_message = false;
message_build_mode = false;
message_combat_mode = false;
message_mining_mode = false;

alarm[6] = 120;

//Power up
var pwr = instance_create(x,y,obj_power_up);
pwr.power_up = weapon;
pwr.image_index = weapon;

weapon = other.power_up;

audio_play_sound(snd_pickup,1,false);

with (other)
{
    instance_destroy();
}

}
else
{
    with(other)
    {
        motion_add(point_direction(other.x, other.y, x, y), .15);
    }
}

