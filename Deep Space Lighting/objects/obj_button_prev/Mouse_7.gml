with obj_button_missiles
{
    instance_destroy();
}
with obj_button_bomb
{
    instance_destroy();
}
with obj_sell_scrap
{
    instance_destroy();
}
with obj_buy_scrap
{
    instance_destroy();
}
with obj_button_prev
{
    instance_destroy();
}
with obj_button_fuel
{
    instance_destroy();
}

instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_health);//Health
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_energy);//Energy
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_fuel);//Fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_button_missiles);//Missiles
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_button_bomb);//Bombs
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_button_fuel);//Fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,obj_button_next);//Next arrow

