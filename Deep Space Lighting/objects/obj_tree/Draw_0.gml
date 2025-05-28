draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

//these render the chunks the player can see, so it doesnt need to render all 3x3 chunks at once
if(playerPlanetPos == 0){
draw_sprite_ext(sprite_index,image_index,x-planetWidth,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x-planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if(playerPlanetPos == 1){
draw_sprite_ext(sprite_index,image_index,x,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if(playerPlanetPos == 2){
draw_sprite_ext(sprite_index,image_index,x-planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x-planetWidth,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if(playerPlanetPos == 3){
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}

/*Please keep this, it's a refrence of how to draw the 3x3 chunk area around the loaded planet.
draw_sprite_ext(sprite_index,image_index,x-planetWidth,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y-planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

draw_sprite_ext(sprite_index,image_index,x-planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

draw_sprite_ext(sprite_index,image_index,x-planetWidth,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x+planetWidth,y+planetHeight,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
*/


/* */
/*  */