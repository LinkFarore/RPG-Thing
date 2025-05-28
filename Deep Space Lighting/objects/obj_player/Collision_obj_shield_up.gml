message_energy = false;
message_powerup = false;
message2 = false;
message_life = false;
message_attack = false;
message_shield = true;
heal_message2 = false;
heal_message = false;
message_build_mode = false;
message_combat_mode = false;
message_mining_mode = false;

alarm[7] = 120;

player_defense += .5;

audio_play_sound(snd_pickup,1,false);
with (other)
{
    instance_destroy();
}