instance_activate_object(obj_gametitle);
instance_activate_object(obj_menu);

//destroy the volume bar if it exists
if instance_exists(par_hbar)
with (par_hbar)
{instance_destroy();}

if instance_exists(par_hslider)
with (par_hslider)
{instance_destroy();}

if instance_exists(obj_credits)
with (obj_credits)
{instance_destroy();}

if instance_exists(obj_button_color)
with (obj_button_color)
{instance_destroy();}

instance_destroy();

