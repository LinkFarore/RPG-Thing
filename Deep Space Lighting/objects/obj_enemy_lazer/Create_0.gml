ricochet = false;
//dir = point_direction(x,y,obj_player.x,obj_player.y);
motion_set(direction,10);
sound = false;
attack = 1;
wave = 0;

audio_play_sound(snd_lazer,0,false);

/*
audio_emitter = audio_emitter_create();
audio_emitter_position(audio_emitter,x,y,0);
audio_falloff_set_model(audio_falloff_linear_distance);

audio_play_sound_at(snd_enemy_lazer, x, y, 0, 1920, 5000, 10, false,1);

/*
if instance_exists(obj_player) 
{var dist_player = distance_to_object(obj_player);}
else
{var dist_player = 0;	}

var max_dist_play = 1920;
	
if dist_player > max_dist_play
{var lazer_gain = 0;}
else
{var lazer_gain = (max_dist_play/dist_player)/(max_dist_play/100);}

if lazer_gain > 1
{lazer_gain = 1;}

if lazer_gain < 0.0001
{lazer_gain = 0;}

if !audio_is_playing(snd_enemy_lazer) && distance_to_object(obj_player) <= 1000
{audio_play_sound(snd_enemy_lazer,1,false,lazer_gain);}