if inv = false
{
health -= 1;
alarm[2] = 12;
inv = true;
hurt = true;
with (other)
{
    instance_destroy();
}
}
else 
{
//
}

