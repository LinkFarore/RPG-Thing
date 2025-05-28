instance_activate_object(obj_mouse);

depth = -9999;

var exit_button = instance_create_depth(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,1000,obj_button_exit);
exit_button.image_xscale = 2;
exit_button.image_yscale = 2;

var hull_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button);
hull_button.image_xscale = 2;
hull_button.image_yscale = 2;
hull_button.type = "Hull";

var engine_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button);
engine_button.image_xscale = 2;
engine_button.image_yscale = 2;
engine_button.type = "Engine";

var weapon_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3+(426),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-160,obj_button);
weapon_button.image_xscale = 2;
weapon_button.image_yscale = 2;
weapon_button.type = "Weapon";

var engine_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-252,obj_button);
engine_button.image_xscale = 2;
engine_button.image_yscale = 2;
engine_button.type = "Color";