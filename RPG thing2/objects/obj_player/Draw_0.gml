//Stop drawing during menus
if (spell_menu)
{exit;}

if (item_menu)
{exit;}

if (level_up)
{exit;}


draw_self();

if hurt = true
{
    image_blend = c_red;
}
else
{
    image_blend = c_white;
}