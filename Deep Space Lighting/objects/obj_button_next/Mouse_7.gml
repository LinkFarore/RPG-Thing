instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_sell_scrap);//scrap sell
with obj_button_health
{
    instance_destroy();
}
with obj_button_fuel
{
    instance_destroy();
}
with obj_button_energy
{
    instance_destroy();
}
with obj_button_bomb
{
    instance_destroy();
}
with obj_button_missiles
{
    instance_destroy();
}
with obj_button_next
{
    instance_destroy();
}


instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_buy_scrap);//scrap buy

instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_fuel);//fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_fuel);//fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_button_fuel);//Fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+80,obj_button_fuel);//Fuel
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,obj_button_prev);//Next arrow
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,obj_button_exit);//Exit

instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,obj_button_prev);//prev arrow

