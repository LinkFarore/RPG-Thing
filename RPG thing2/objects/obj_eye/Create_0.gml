event_inherited();
hp = 3;
weakness = GenerateWeaknesses(["lightning"]);
xp_worth = max(floor(hp/player_atk),3);
image_speed = .35;

spd = choose(1,1.5,2,2.5);
wave = choose(1,1.5,2,2.5);

dir = 0;

if obj_player.x < x+48
{
dir = -1;
}

if obj_player.x > x-48
{
dir = 1;
}

