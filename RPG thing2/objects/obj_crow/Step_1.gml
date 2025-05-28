/// @description Health and death
if hp <= 0
{
scr_enemydeath();
}

if (stun)
{
image_speed = 0;
}
else
{
image_speed = .35;
}

