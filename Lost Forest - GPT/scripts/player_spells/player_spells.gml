// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_spells(SpellSlot)
{
	spell_id = SpellSlot;
	
	if (spell_id != -1) 
	{
		// Check if the spell ID corresponds to a function or script
		switch (spell_id) 
		{
		    case 0:
		        //Fireball spell
		        if (alarm[0] == -1 && global.spellcost_1 <= global.mana)
				{
					image_index = 5;
					instance_create(x,y,global.spell_1);
					global.mana -= global.spellcost_1;
				}
		        break;
		    case 1:
		        //Frostbolt spell
		        if (alarm[0] == -1 && global.spellcost_2 <= global.mana)
				{
					image_index = 5;
					instance_create(x,y,global.spell_2);
					global.mana -= global.spellcost_2;
				}
		        break;
		    case 2:
		        // Example for a Frostbolt spell
		        if (alarm[0] == -1 && global.spellcost_3 <= global.mana)
				{
					image_index = 5;
					instance_create(x,y,global.spell_3);
					global.mana -= global.spellcost_3;
				}
		        break;
			case 3:
		        // Example for a Frostbolt spell
		        if (alarm[0] == -1 && global.spellcost_4 <= global.mana)
				{
					image_index = 5;
					instance_create(x,y,global.spell_4);
					global.mana -= global.spellcost_4;
				}
		        break;
			case 4:
		        // Example for a Frostbolt spell
		        if (alarm[0] == -1 && global.spellcost_5 <= global.mana)
				{
					image_index = 5;
					instance_create(x,y,global.spell_5);
					global.mana -= global.spellcost_5;
				}
		        break;
		    default:
		        show_debug_message("No valid spell assigned to slot 1!");
		        break;
		}
	}
}