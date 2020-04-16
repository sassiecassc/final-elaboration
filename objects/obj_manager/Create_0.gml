/// @description Insert description here
// You can write your code in this editor

//particle setup
//system to hold and draw particles

parts = part_system_create();

//make new particle type so we can give it particle properties
global.cardtrail = part_type_create();
part_type_sprite(global.cardtrail, spr_card_trail_particle, 0, 0, 0);
part_type_size(global.cardtrail,0.1,0.2,0.01,0);

emitter = part_emitter_create(parts);
//tell the new emitter to stream one particle every frame
part_emitter_stream(parts, emitter, global.cardtrail, 1);
