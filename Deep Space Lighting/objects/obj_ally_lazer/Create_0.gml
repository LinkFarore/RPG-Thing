motion_set(direction,10);
image_angle = direction;

attack = 1;
wave = 0;
ricochet = false;

audio_emitter = audio_emitter_create();
audio_emitter_position(audio_emitter,x,y,0);
audio_falloff_set_model(audio_falloff_linear_distance);

audio_play_sound_at(snd_lazer, x, y, 0, 1920, 5000, 10, false,1);

/*if instance_exists(obj_player) 
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