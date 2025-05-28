event_inherited();
hp = 2;
weakness = GenerateWeaknesses(["lightning"]);
xp_worth = max(floor(hp/player_atk),3);
image_speed = .25;

spd = choose(1,1.5,2,2.5,3);
wave = choose(2,2.5,3,3.5);

dir = 0;

if obj_player.x < x+64
{
dir = -1;
}

if obj_player.x > x-64
{
dir = 1;
}

