switch (mpos)
{
    case 0:
    {   
        room_goto(rm_beta1_ow);
        break;
    }
    case 1:
    {
        room_goto(rm_infinite_battle);
        break;
    }
    case 2:
    {
        room_goto(rm_costume);
        break;
    }
    case 3:
    {
        room_goto(rm_credits);
        break;
    }
    case 4:
    {
        game_end();
        break;
    }
    default: break;
}
