//resets projectile timing

if sprite_index = spr_bow
{
	if image_index = 8
	{
		sprite_index = spr_player_idle;
	}
}

if sprite_index = spr_bow_crouch
{
	if image_index = 8
	{
		sprite_index = spr_player_crouch;
	}
}