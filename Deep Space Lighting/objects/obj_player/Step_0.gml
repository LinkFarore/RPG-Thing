if pause
{exit}

if death = true
{
    if (keyboard_check_pressed(vk_anykey))
    {
        /*x = 0;
        y = 0;
        speed = 0;
        xp = 0;
        hp = player_maxhp;
        energy = maxenergy;
        weapon = 0;
        defense = 0;
        repair = 3;*/
        load = true;
        game_restart();
    }
    exit;
}


key_move = keyboard_check(vk_space);
key_shoot = mouse_check_button(mb_left);
key_shield = mouse_check_button(mb_right);
key_mine = keyboard_check_pressed(vk_control);

//Set the current Chunk
current_chunk_x = floor(x / chunk_size);
current_chunk_y = floor(y / chunk_size);

//Turning
var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), turn_speed) * sign(dd);

//Get the direction the player is facing
dir = image_angle;

//camera_set_view_angle(view_camera[0], -dir+90);//This is expiramental camera code, if disabling this make sure to reenable the code inside obj_camera step event

//Movement
if key_move
{  
    motion_add(dir,.25);
    if !audio_is_playing(snd_exhaust)
    {
        audio_play_sound(snd_exhaust,0,false);
    }
	
	//Exhaust
	if !global.custom_exhaust
    {
	    part_type_direction(global.pt_player_exhaust,dir-180-18,dir-180+18,0,0);
		part_particles_create(global.ps,(x+lengthdir_x(10,image_angle+90)),(y+lengthdir_y(10,image_angle+90)),global.pt_player_exhaust,2);	
		part_particles_create(global.ps,(x+lengthdir_x(10,image_angle-90)),(y+lengthdir_y(10,image_angle-90)),global.pt_player_exhaust,2);
	}
	else
	{
		part_type_direction(global.pt_custom_exhaust,dir-180-18,dir-180+18,0,0);
		part_particles_create(global.ps,(x+lengthdir_x(10,image_angle+90)),(y+lengthdir_y(10,image_angle+90)),global.pt_custom_exhaust,2);	
		part_particles_create(global.ps,(x+lengthdir_x(10,image_angle-90)),(y+lengthdir_y(10,image_angle-90)),global.pt_custom_exhaust,2);
	}
}


//Flash
if flash == 1 && t == 0
{
t = 20; //how long you want to flash
alarm[2] = 20;
}

if t > 0
{
    if a = .5 //transparency
    {
    a = 1;
    }
    else
    {
    a = .5;
    }
    t-=1; //counts down
}

if a < 1 && !flash && !cloak
{
    a = 1;
}


//Fade the player if touching a black hole
if (place_meeting(x,y,obj_blackhole)) && !warp
{
    if a > 0
    {
        a -= .01;
    }
}
else
{
    if a < 1
    {
        a += .06
    }
}

if a < 0
{
    a = 0;
}

if a > 1
{
    a = 1;
}

if warp && alarm[1] == -1
{
    alarm[1] = room_speed*3.5;
	
	//Create a white hole when exiting balck hole
	var white_hole_tele = instance_create_depth(x,y,10,obj_whitehole);
	white_hole_tele.alarm[2] = 5*room_speed;
}

//Speed cap
if speed_boost
{
	if speed > player_spd*3
	{
		speed = player_spd*3;
	}
}
else
{
	if speed > player_spd
	{
		speed = player_spd;
	}
}

//Health
if hp <= 0
{
    death = true;
    var broken_player = instance_create(x,y,obj_broken_player);
    broken_player.image_angle = image_angle;
    audio_play_sound(snd_explosion_small,1,false);
    instance_create(x,y,obj_explosion);
}

if hp > player_maxhp
{
    hp = player_maxhp;
}

if hpfull
{
    hp = player_maxhp;
    hpfull = false;
}

//toggle the debug
if keyboard_check_pressed(vk_f3)
{
    if debug = false
    {
        debug = true;
    }
    else
    {
        debug = false;
    }
}

//Switch between combat/building/mining
if keyboard_check_pressed(vk_tab)// This should be repurposed to a state system
{
    if current_state != "building"
	{
		current_state = "building";
		message_build_mode = true;
		message_combat_mode = false;
		message_mining_mode = false;
		alarm[6] = 120;
	}
	else
	{
		current_state = "combat";
		message_build_mode = false;
		message_combat_mode = true;
		message_mining_mode = false;
		alarm[6] = 120;
	}
}

if key_mine
{
	if current_state != "mining"
	{
		current_state = "mining";
		message_mining_mode = true;
		message_combat_mode = false;
		message_build_mode = false;
		alarm[6] = 120;
	}
	else
	{
		current_state = "combat";
		message_mining_mode = false;
		message_combat_mode = true;
		message_build_mode = false;
		alarm[6] = 120;
	}
}

if current_state == "building" && !instance_exists(obj_build_cursor)
{
    instance_create(mouse_x,mouse_y,obj_build_cursor);
}
if instance_exists(obj_build_cursor)
{
    build = obj_build_cursor.object;
}

//Weapon change
if mouse_wheel_up() || keyboard_check_pressed(vk_up)
{
    weapon += 1;
	defense += 1;
}

if mouse_wheel_down() || keyboard_check_pressed(vk_down)
{
    weapon -= 1;
	defense -= 1;
}

if weapon > weapon_max
{
    weapon = weapon_min;
}

if weapon < weapon_min
{
    weapon = weapon_max;
}

if defense > defense_max
{
    defense = defense_min;
}

if defense < defense_min
{
    defense = defense_max;
}



//Attack
if key_shoot && current_state = "combat"
{
    if canshoot = true
    {
        switch(weapon)
        {
			//Single shot
            case 0:
            if energy >= 1
            {
                var lazer1 = instance_create(x+lengthdir_x(15,image_angle+90), y+lengthdir_y(15,image_angle+90), obj_lazer);
                var lazer2 = instance_create(x+lengthdir_x(15,image_angle-90), y+lengthdir_y(15,image_angle-90), obj_lazer);
                lazer1.direction = dir;
                lazer2.direction = dir;
                energy -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire/2;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Triple shot
            case 1:
            if energy >= 3
            {
				var lazer1 = instance_create(x+lengthdir_x(15,image_angle+90), y+lengthdir_y(15,image_angle+90), obj_lazer);
				var lazer1l = instance_create(x+lengthdir_x(15,image_angle+90), y+lengthdir_y(15,image_angle+90), obj_lazer);
				var lazer1r = instance_create(x+lengthdir_x(15,image_angle+90), y+lengthdir_y(15,image_angle+90), obj_lazer);
				
                var lazer2 = instance_create(x+lengthdir_x(15,image_angle-90), y+lengthdir_y(15,image_angle-90), obj_lazer);
				var lazer2l = instance_create(x+lengthdir_x(15,image_angle-90), y+lengthdir_y(15,image_angle-90), obj_lazer);
				var lazer2r = instance_create(x+lengthdir_x(15,image_angle-90), y+lengthdir_y(15,image_angle-90), obj_lazer);
                lazer1.direction = dir;
                lazer2.direction = dir;
				lazer1l.direction = dir-3;
                lazer2l.direction = dir-3;
				lazer1r.direction = dir+3;
                lazer2r.direction = dir+3;
                energy -= 3;
                canshoot = false;
                alarm[0] = rate_of_fire;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Five shot
            case 2:
            if energy >= 4
            {
                var lazer1 = instance_create(x, y, obj_lazer);
                var lazer2 = instance_create(x+lengthdir_x(7,image_angle+90), y+lengthdir_y(7,image_angle+90), obj_lazer);
                var lazer3 = instance_create(x+lengthdir_x(7,image_angle-90), y+lengthdir_y(7,image_angle-90), obj_lazer);
                var lazer4 = instance_create(x+lengthdir_x(15,image_angle+90), y+lengthdir_y(15,image_angle+90), obj_lazer);
                var lazer5 = instance_create(x+lengthdir_x(15,image_angle-90), y+lengthdir_y(15,image_angle-90), obj_lazer);
                lazer1.direction = dir;
                lazer2.direction = dir+1;
                lazer3.direction = dir-1;
                lazer4.direction = dir+2;
                lazer5.direction = dir-2;
                energy -= 4;
                canshoot = false;
                alarm[0] = rate_of_fire*1.25;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Rapid Shot
            case 3:
            if energy >= 2
            {
                var lazer = instance_create(x, y, obj_lazer2);
                energy -= 2;
                canshoot = false;
                alarm[0] = rate_of_fire/6;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Scatter Shot
            case 4:
            if energy >= 5
            {
                var lazer1 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer2 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer3 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer4 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer5 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer6 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
				var lazer7 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer8 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer9 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer10 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer11 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                var lazer12 = instance_create(x+-random_range(.5,.75),y+-random_range(.5,.75), obj_lazer_spec);
                lazer1.direction = dir+random_range(-6,6);
                lazer2.direction = dir+random_range(-6,6);
                lazer3.direction = dir+random_range(-6,6);
                lazer4.direction = dir+random_range(-6,6);
                lazer5.direction = dir+random_range(-6,6);
                lazer6.direction = dir+random_range(-6,6);
				lazer7.direction = dir+random_range(-6,6);
                lazer8.direction = dir+random_range(-6,6);
                lazer9.direction = dir+random_range(-6,6);
                lazer10.direction = dir+random_range(-6,6);
                lazer11.direction = dir+random_range(-6,6);
                lazer12.direction = dir+random_range(-6,6);
                energy -= 5;
				canshoot = false;
				alarm[0] = rate_of_fire*2;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Bounce shot
            case 5:
            if energy >= 1.3
            {
                var lazer = instance_create(x, y, obj_lazer_bounce);
                energy -= 1.3;
                canshoot = false;
                alarm[0] = rate_of_fire;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Homing Shot
            case 6:
            if energy >= 1.5
            {
                var lazer = instance_create(x, y, obj_lazer_homing);
                energy -= 1.5;
                canshoot = false;
                alarm[0] = rate_of_fire;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Charge Shot
            case 7:
            charging = true;
            break;
            
			//Omega Weapon
            case 8:
            if energy >= 1
            {
                var lazer1 = instance_create(x, y, obj_lazer_homing);
                var lazer2 = instance_create(x, y, obj_lazer_homing);
                var lazer3 = instance_create(x, y, obj_lazer_homing);
                var lazer4 = instance_create(x, y, obj_lazer_homing);
                var lazer5 = instance_create(x, y, obj_lazer_homing);
				var lazer6 = instance_create(x, y, obj_lazer_homing);
                var lazer7 = instance_create(x, y, obj_lazer_homing);
				
                lazer1.direction = dir;
                lazer2.direction = dir+5;
                lazer3.direction = dir-5;
                lazer4.direction = dir-10;
                lazer5.direction = dir+10;
				lazer6.direction = dir-15;
                lazer7.direction = dir+15;
				
                energy -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire/4;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Upsilon Weapon
            case 9:
            if energy >= 1
            {
                var lazer1 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer2 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer3 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer4 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer5 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer6 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer7 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer8 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer9 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer10 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer11 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer12 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
				var lazer13 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer14 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer15 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer16 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer17 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer18 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer19 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer20 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer21 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer22 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer23 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
                var lazer24 = instance_create(x+(random_range(.75,1.8)*choose(-1,1)),y+(random_range(.75,1.8)*choose(-1,1)), obj_lazer_spec);
				
                lazer1.direction = dir;
                lazer2.direction = dir+5;
                lazer3.direction = dir+10;
                lazer4.direction = dir+15;
                lazer5.direction = dir+20;
                lazer6.direction = dir+25;
                lazer7.direction = dir+30;
                lazer8.direction = dir-5;
                lazer9.direction = dir-10;
                lazer10.direction = dir-15;
                lazer11.direction = dir-20;
                lazer12.direction = dir-25;
				lazer13.direction = dir-30;
                lazer14.direction = dir+7;
                lazer15.direction = dir+12;
                lazer16.direction = dir+17;
                lazer17.direction = dir+22;
                lazer18.direction = dir+27;
                lazer19.direction = dir-7;
                lazer20.direction = dir-12;
                lazer21.direction = dir-17;
                lazer22.direction = dir-22;
                lazer23.direction = dir-27;
                lazer24.direction = dir;
				
                energy -= 1;
                canshoot = false;
                alarm[0] = 30;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
			//Epsilon Weapon
            case 10:
            if energy >= 1
            {
                var lazer1 = instance_create(x, y, obj_lazer_bounce);
                var lazer2 = instance_create(x, y, obj_lazer_bounce);
                var lazer3 = instance_create(x, y, obj_lazer_bounce);
				var lazer4 = instance_create(x, y, obj_lazer_bounce);
                var lazer5 = instance_create(x, y, obj_lazer_bounce);
                
                lazer1.direction = dir;
                lazer2.direction = dir+7;
                lazer3.direction = dir-7;
				lazer4.direction = dir+4;
                lazer5.direction = dir-4;
                energy -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire/4;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
			
			//Psi Weapon
			case 11:
            if energy >= 1
            {
				var lazer1 = instance_create(x+lengthdir_x(20,image_angle+90), y+lengthdir_y(20,image_angle+90), obj_lazer_homing);
				var lazer1l = instance_create(x+lengthdir_x(20,image_angle+90), y+lengthdir_y(20,image_angle+90), obj_lazer_homing);
				var lazer1r = instance_create(x+lengthdir_x(20,image_angle+90), y+lengthdir_y(20,image_angle+90), obj_lazer_homing);
				
                var lazer2 = instance_create(x+lengthdir_x(20,image_angle-90), y+lengthdir_y(20,image_angle-90), obj_lazer_homing);
				var lazer2l = instance_create(x+lengthdir_x(20,image_angle-90), y+lengthdir_y(20,image_angle-90), obj_lazer_homing);
				var lazer2r = instance_create(x+lengthdir_x(20,image_angle-90), y+lengthdir_y(20,image_angle-90), obj_lazer_homing);
				
				var lazer3 = instance_create(x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle), obj_lazer_homing);
				var lazer3l = instance_create(x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle), obj_lazer_homing);
				var lazer3r = instance_create(x+lengthdir_x(20,image_angle), y+lengthdir_y(20,image_angle), obj_lazer_homing);
				
                lazer1.direction = dir;
                lazer2.direction = dir;
				lazer3.direction = dir;
				
				lazer1l.direction = dir-5;
                lazer2l.direction = dir-5;
				lazer3l.direction = dir-5;
				
				lazer1r.direction = dir+5;
                lazer2r.direction = dir+5;
				lazer3r.direction = dir+5;
				
                energy -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire/4;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
			
			//Random Shot
            case 12:
            if energy >= 2
            {
                var lazer = instance_create(x, y, choose(obj_lazer2,obj_lazer,obj_lazer_bounce,obj_lazer_homing));
				lazer.direction = dir+irandom_range(-10,10);
                energy -= 2;
                canshoot = false;
                alarm[0] = rate_of_fire/8;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
			
			//Missile
			case 13:
			//instance_create(mouse_x,mouse_y,obj_plasma_new);
            if missile >= 1
            {
                var pro = instance_create(x, y, obj_missile);
                pro.direction = image_angle;
                pro.image_angle = image_angle;
                missile -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire;
				
				weapon_sprite = spr_weapon_shot;
				alarm[8] = rate_of_fire/5;
            }
            break;
            
            case 55:
            if bomb >= 1 && !instance_exists(obj_bomb)
            {
                instance_create(x, y, obj_bomb);
                bomb -= 1;
                canshoot = false;
                alarm[0] = rate_of_fire;
            }
            break;
        }
    }
}

//Defense
if key_shield && can_shield && current_state == "combat"
{
    switch(defense)
    {
        case 0:
        //Shield
        if energy > .1
        {
            shield = true;
            energy -= .1;
            mask_index = spr_player_mask1;
            if !audio_is_playing(snd_shield)
            {
                audio_play_sound(snd_shield,1,true);
            }
        }
        else
        {
            shield = false;
            mask_index = spr_hull_proto;
            audio_stop_sound(snd_shield);
        }
        break;
        
        case 1:
        //Cloak
        if energy > .5
        {
            cloak = true;
            energy -= .1;
        }
        else
        {
            cloak = false;
        }
        break;
        
        case 2:
        //Stun Blast
        if energy > maxenergy/2 && stun_blast == false
        {
            stun_blast = true;
            energy -= maxenergy/2;
            alarm[4] = room_speed*3;
        }
        else
        {
            //stun_blast = false;
        }
        break;
		
		case 3:
        //Speed Boost
        if energy > 1.5
        {
            speed_boost = true;
            energy -= 1.5;
        }
		else
        {
            speed_boost = false;
        }
        break;
    }
}

//Shield
if shield && !key_shield
{
    shield = false;
    mask_index = spr_hull_proto;
    audio_stop_sound(snd_shield);
}

//Cloak
if cloak && !key_shield
{
    cloak = false;
}

//Speed Boost
if speed_boost && !key_shield
{
    speed_boost = false;
}

//Stun Blast
if stun_blast && stun_radius < stun_radius_max
{
	stun_radius += 4
}

if stun_blast
{
	var stunned_enemy = collision_circle(x,y,stun_radius,obj_enemy_ship,false,true)
	if instance_exists(stunned_enemy)
	{
		with(stunned_enemy)
		{
			stun = true;	
		}
	}
}

//Healing
if mouse_check_button_pressed(mb_middle)
{
    if repair > 0
    {
        if hp < player_maxhp
        {
            hp += floor(player_maxhp/3+player_maxhp/2)
            repair -= 1;
        }
        else
        {
            heal_message = true;
            heal_message2 = false;
            message_powerup = false;
            message2 = false;
            message_energy = false;
            message_life = false;
            message_attack = false;
            message_shield = false;
            alarm[7] = 120;
        }
    }
    else
    {
        heal_message2 = true;
        heal_message = false;
        message_powerup = false;
        message2 = false;
        message_energy = false;
        message_life = false;
        message_attack = false;
        message_shield = false;
        alarm[7] = 120;
    }
}

//Star Heat Warning
if distance_to_object(obj_sun) < 128
{
	message_star = true;
	if flash == 0
	{
		//hurt event
		hp -= .1;
		flash = 1;
	}
}
else
{
	message_star = false;
	flash = 0;
}

//Charge
if mouse_check_button(mb_left)
{
    charge += .03;
}

if charging
{
    part_particles_create(global.ps,x,y,global.pt_spark,(floor(charge)*2)+1);
}

if charge > 6
{
    charge = 6;
}

if charging = true
{
    if mouse_check_button_released(mb_left)
    {
        if energy >= 5
        {
            var lazer = instance_create(x, y, obj_lazer_charge);
            lazer.charge = charge;
            energy -= 5;
            canshoot = false;
            charging = false;
            alarm[0] = rate_of_fire;
        }
    }
}

if mouse_check_button_released(mb_left)
{
    charge = 0;
}

if energy < 0
{
    energy = 0;
}

if energy > maxenergy
{
    energy = maxenergy;
}

if energy < maxenergy && !key_shoot && !key_shield
{
    energy += maxenergy/recharge;
}

if energyfull
{
    energy = maxenergy;
    energyfull = false;
}

if !instance_exists(target)
{
    target = noone;
}

if xp >= maxxp
{
    xp -= maxxp;
    maxxp = maxxp*1.1;
    levelpoint += 1;
}

if (levelup)
{
    scr_level_up();
}

// Load and Unload Chunks
var chunk_x = floor(x / chunk_size);
var chunk_y = floor(y / chunk_size);

// Check and load surrounding chunks
for (var i = -1; i <= 1; i++) {
    for (var j = -1; j <= 1; j++) {
        if (!obj_chunk_manager.chunk_exists_at(chunk_x + i, chunk_y + j)) {
            obj_chunk_manager.load_chunk(chunk_x + i, chunk_y + j);
        }
    }
}

// Unload far away chunks
obj_chunk_manager.unload_distant_chunks(chunk_x, chunk_y, 2); // 2 is the unload distance

//Music
audio_sound_gain(snd_music_wander,.75,1000);
/*if distance_to_object(obj_enemy_ship) <= 180
{
    audio_sound_gain(snd_music_wander,0,1000);
    audio_sound_gain(snd_music_battle,.75,1000);
}
else
{
    audio_sound_gain(snd_music_wander,.75,1000);
    audio_sound_gain(snd_music_battle,0,1000);
}*/
playerX = x;
playerY = y;