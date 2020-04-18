/// @description Insert description here
// You can write your code in this editor

global.rock = 0;
global.scissor = 1;
global.paper = 2;

image_xscale = 1.25
image_yscale = 1.25;



//particle setup
//system to hold and draw particles

global.parts = part_system_create();

//( on the card object create)
show_trail = false; //set up a variable
my_emitter = part_emitter_create(global.parts);


//make new particle type so we can give it particle properties
global.cardtrail = part_type_create();
part_type_sprite(global.cardtrail, spr_card_trail_particle, 0, 0, 0);
part_type_size(global.cardtrail,0.1,0.2,0.01,0);







