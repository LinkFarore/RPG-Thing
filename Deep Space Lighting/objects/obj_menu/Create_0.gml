if file_exists("save.ini")
{
    menu_min = 0;
    menu[0] = "Continue";
}
else
{
    menu_min = 1;
}

menu[1] = "New Game";
menu[2] = "Options";
menu[3] = "Quit";


space = 42;
mpos = menu_min;

depth = -21;
sub = 0;

