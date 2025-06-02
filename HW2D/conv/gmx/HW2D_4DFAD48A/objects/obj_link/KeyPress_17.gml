if ani = true
{exit}

if global.focus >= 50
{
focus = true;
inv = true;
attack_power += 1;
global.focus -= 50;
alarm[4] = 10 * room_speed;
}

