/// @description Insert description here
// You can write your code in this editor

global.rock = 0;
global.scissor = 1;
global.paper = 2;

image_xscale = 1.25
image_yscale = 1.25;



//particle setup
//system to hold and draw particles

parts = part_system_create();

//( on the card object create)
show_trail = false; //set up a variable
my_emitter = part_emitter_create(parts);

//make new particle type so we can give it particle properties
cardtrail = part_type_create();
part_type_sprite(cardtrail, spr_card_trail_particle, 0, 0, 0);
part_type_size(cardtrail,0.1,0.2,0.01,0);


hoverpartsyst = part_system_create();
hover_emitter = part_emitter_create(hoverpartsyst);

show_hover = false;

hoverpart = part_type_create();
part_type_shape(hoverpart, pt_shape_pixel);
part_type_size(hoverpart, 1, 1.5, 0.01, 0.5);
part_type_color1(hoverpart, c_black);





