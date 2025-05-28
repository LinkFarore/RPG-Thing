/// @description  Set selected
if (!selected)
{
    selected = true;
    audio_play_sound(snd_select,0,false);
	exit;
}

if (selected)
{
    chunkX = 0;
    chunkY = 0;
    loadedChunks = 0;
    curSeed = 0;
    mapSize = 0;
    objectCache = 0;
    chunkMap = 0;
    chunkCache = 0;
    planetWidth = 0;
    planetHeight = 0;
    loadedChunks = 0;

    selected = false;
    finish = false;
    pause = 0;
    room_goto(rm_test_small);
	scr_load();
}