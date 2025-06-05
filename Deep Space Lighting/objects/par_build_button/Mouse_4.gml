var cursor = instance_create(x,y,obj_build_cursor);
cursor.object = 0;

if instance_exists(par_build_button)
{
    with(par_build_button)
    {
        instance_destroy();
    }
}