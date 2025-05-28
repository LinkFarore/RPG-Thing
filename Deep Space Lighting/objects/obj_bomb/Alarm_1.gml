lazer1 = instance_create(x, y, obj_lazer_ball);
lazer2 = instance_create(x, y, obj_lazer_ball);
lazer3 = instance_create(x, y, obj_lazer_ball);
lazer4 = instance_create(x, y, obj_lazer_ball);
lazer5 = instance_create(x, y, obj_lazer_ball);
lazer6 = instance_create(x, y, obj_lazer_ball);
lazer7 = instance_create(x, y, obj_lazer_ball);
lazer8 = instance_create(x, y, obj_lazer_ball);
lazer9 = instance_create(x, y, obj_lazer_ball);
lazer10 = instance_create(x, y, obj_lazer_ball);
lazer11 = instance_create(x, y, obj_lazer_ball);
lazer12 = instance_create(x, y, obj_lazer_ball);
lazer13 = instance_create(x, y, obj_lazer_ball);
lazer14 = instance_create(x, y, obj_lazer_ball);
lazer15 = instance_create(x, y, obj_lazer_ball);
lazer16 = instance_create(x, y, obj_lazer_ball);
lazer1.direction = 0;
lazer1.image_angle = direction;
lazer2.direction = 22.5;
lazer2.image_angle = direction;
lazer3.direction = 45;
lazer3.image_angle = direction;
lazer4.direction = 67.5;
lazer4.image_angle = direction;
lazer5.direction = 90;
lazer5.image_angle = direction;
lazer6.direction = 112.5;
lazer6.image_angle = direction;
lazer7.direction = 135;
lazer7.image_angle = direction;
lazer8.direction = 157.5;
lazer8.image_angle = direction;
lazer9.direction = 180;
lazer9.image_angle = direction;
lazer10.direction = 202.5;
lazer10.image_angle = direction;
lazer11.direction = 225;
lazer11.image_angle = direction;
lazer12.direction = 247.5;
lazer12.image_angle = direction;
lazer13.direction = 270;
lazer13.image_angle = direction;
lazer14.direction = 292.5;
lazer14.image_angle = direction;
lazer15.direction = 315;
lazer15.image_angle = direction;
lazer16.direction = 347.5;
lazer16.image_angle = direction;


if !audio_is_playing(snd_explosion)
{
    audio_play_sound(snd_explosion,1,false);
}

part_particles_create(global.ps,x,y,global.pt_explosion,1);

instance_destroy();

