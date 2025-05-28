/// @description Initialize the players stats
//Level and EXPR.
global.level = 1;
global.expr = 0;
global.maxexpr = 10;

//Health.
global.hp = 25;
global.maxhp = global.hp;

//Mana.
global.mana = 10;
global.maxmana = global.mana;

//Spell.
global.spell_1 = obj_fire_spell;
global.spellcost_1 = 1;

global.spell_2 = obj_ice_spell;
global.spellcost_2 = 1;

global.spell_3 = obj_lightning_spell;
global.spellcost_3 = 1;

global.spell_4 = obj_leaf_spell;
global.spellcost_4 = 1;

global.spell_5 = obj_shadow_spell;
global.spellcost_5 = 1;

//Room tracker.
global.previous_room = noone;

//Set the GUI size.
display_set_gui_size(640,360);