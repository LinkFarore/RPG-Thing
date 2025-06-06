friction = 0.03;

player_maxhp = 10;
hp = player_maxhp;

player_size = 16;

turn_speed = 5;
dir = image_angle;
player_spd = 2;

display_set_gui_size(1280,720);//480,270

debug = false;
death = false;

//Create the camera
instance_create_layer(x,y,0,obj_camera);