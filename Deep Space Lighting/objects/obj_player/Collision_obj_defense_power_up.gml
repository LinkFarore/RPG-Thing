if defense_take = false
{
message2 = true;
message = false;
message_life = false;
message_shield = false;
message_energy = false;
message_attack = false;
defense_take = true;
heal_message2 = false;
heal_message = false;

alarm[6] = 120;

cloak = false;
shield = false;

//Power up
var pwr = instance_create(x,y,obj_defense_power_up);
pwr.power_up = defense;
pwr.image_index = defense;

defense = other.power_up;

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

