menu[0] = "Attack";
menu[1] = "Atk Spd";
menu[2] = "Health";
menu[3] = "Defense";
menu[4] = "Speed"; 
menu[5] = "Energy";
menu[6] = "Reset Points";
menu[7] = "Exit";

level[0] = "Level: " + string(weapon_str_point) + "   +   " + string(weapon_str_point_temp);
level[1] = "Level: " + string(weapon_spd_point)  + "   +   " + string(weapon_spd_point_temp);
level[2] = "Level: " + string(hull_point) + "   +   " + string(hull_point_temp);
level[3] = "Level: " + string(def_point) + "   +   " + string(def_point_temp);
level[4] = "Level: " + string(engine_point) + "   +   " + string(engine_point_temp);
level[5] = "Level: " + string(energy_point) + "   +   " + string(energy_point_temp);

desc[0] = "Increases  damage  and  chance  for  critical  hits";
desc[1] = "Increases  amount  of  shots  fired  per  second";
desc[2] = "Increases  the  amount  of  max  health";
desc[3] = "Decreases  the  damage  you  take  from  enemy  lazers  but  decreases  your  speed, increased chance of enemy lazers ricocheting";
desc[4] = "Increases  your  movement  speed";
desc[5] = "Increases  the  amount  of  max  energy";
desc[6] = "Reset current points without allocating?";
desc[7] = "";

space = 18;
mpos = 0;

depth = -21;
sub = 0;