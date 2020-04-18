/// @description Insert description here
// You can write your code in this editor

//The card is responsible for deciding which sprite to draw,
//based on its face_up and card_type variables
if (face_up == false){
	sprite_index = spr_back;
}
else {
	//card is face up	
	if (card_type == global.rock) {
		sprite_index = spr_rock;
	}
	else if (card_type == global.scissor){
		sprite_index = spr_scissor;
	}
	else if (card_type == global.paper){
		sprite_index = spr_paper;	
	}
}

//move 10% of the way to the target x and y, every frame
//creates a smooth move
x = lerp(x, target_x, 0.15);
y = lerp(y, target_y, 0.15);


//(on the card object step function)
//update the position of the emitter every frame to match this instance position
part_emitter_region(global.parts, my_emitter, x - 10, x + 10, y-10, y+10, ps_shape_rectangle, ps_distr_linear);
if (show_trail == true) {
	//emit 10 per frame
	//tell the new emitter to stream one particle every frame
	part_emitter_stream(global.parts, my_emitter, global.cardtrail, 1);
} else {
	//emit 0 per frame
	part_emitter_stream(global.parts, my_emitter, global.cardtrail, 0);
}



//move the particle emitter to a small area around the player
//part_emitter_region(parts, emitter, topcard.target_x, topcard.target_x + 10, topcard.target_y, topcard.target_y + 10, 
//ps_shape_rectangle, ps_distr_invgaussian);