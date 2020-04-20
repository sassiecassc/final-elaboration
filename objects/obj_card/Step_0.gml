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
part_emitter_region(parts, my_emitter, x - 1, x + 1, y - 1, y + 1, ps_shape_rectangle, ps_distr_linear);
if (show_trail == true) {
	//emit 1 per frame
	//tell the new emitter to stream one particle every frame
	part_emitter_stream(parts, my_emitter, cardtrail, 1); //negative number 1 in 5 chance that particle would spawn that frame
} else {
	//emit 0 per frame
	part_emitter_stream(parts, my_emitter, cardtrail, 0);
}

if(x >= target_x  - 5  and x <= target_x + 5 and y >= target_y - 5 and y <= target_y + 5){
	show_debug_message("reached target");
	show_trail = false;
}


//update the position of the emitter every frame to match this instance position
part_emitter_region(hoverpartsyst, hover_emitter, x - 30, x + 30, y - 40, y + 40, ps_shape_rectangle, ps_distr_invgaussian);
if (show_hover == true) {
	//emit 1 per frame
	//tell the new emitter to stream one particle every frame
	part_emitter_stream(hoverpartsyst, hover_emitter, hoverpart, -5); //negative number 1 in 5 chance that particle would spawn that frame
} else {
	//emit 0 per frame
	part_emitter_stream(hoverpartsyst, hover_emitter, hoverpart, 0);
}

if(x >= target_x  - 5  and x <= target_x + 5 and y >= target_y - 5 and y <= target_y + 5){
	show_hover = false;
}

//move the particle emitter to a small area around the player
//part_emitter_region(parts, emitter, topcard.target_x, topcard.target_x + 10, topcard.target_y, topcard.target_y + 10, 
//ps_shape_rectangle, ps_distr_invgaussian);