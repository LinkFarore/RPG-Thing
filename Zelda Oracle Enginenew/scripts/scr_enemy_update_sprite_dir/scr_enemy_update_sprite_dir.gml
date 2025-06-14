// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_update_sprite_dir(){
	
switch (move_dir) {
    case 0: sprite_index = sprite_normal_r; break;
    case 90: sprite_index = sprite_normal_u; break;
    case 180: sprite_index = sprite_normal_l; break;
    case 270: sprite_index = sprite_normal_d; break;
}

}