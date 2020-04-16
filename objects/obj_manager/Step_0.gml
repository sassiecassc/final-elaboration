/// @description Insert description here
// You can write your code in this editor

//move the particle emitter to a small area around the player
part_emitter_region(parts, emitter, obj_card.x - 50, obj_card.x + 50, obj_card.y - 50, obj_card.y + 50, ps_shape_line, ps_distr_linear);