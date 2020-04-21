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

//hovering over rock card particle system
rockhover = part_system_create();
rock_hover_emitter = part_emitter_create(rockhover);

show_rock_hover = false;

rockhoverpart = part_type_create();
part_type_sprite(rockhoverpart, spr_rock_wins, 0, 0, 0);
part_type_size(rockhoverpart, 1, 1.5, 0, 0);
part_type_speed(rockhoverpart, 1, 3, 0, 0);
part_type_direction(rockhoverpart, 270, 270, 0, 0); //move only down
part_type_gravity(rockhoverpart, 0.20, 270);


//hovering over paper card particle system
paperhover = part_system_create();
paper_hover_emitter = part_emitter_create(paperhover);

show_paper_hover = false;

paperhoverpart = part_type_create();
part_type_sprite(paperhoverpart, spr_paper_wins, 0, 0, 0);
part_type_size(paperhoverpart, 1, 1.5, 0, 0);
part_type_speed(paperhoverpart, 1, 1.5, 0, 0);
part_type_direction(paperhoverpart, 0, 180, 0, 0); // move left and right


//hovering over scissor card particle system
scissorhover = part_system_create();
scissor_hover_emitter = part_emitter_create(scissorhover);

show_scissor_hover = false;

scissorhoverpart = part_type_create();
part_type_sprite(scissorhoverpart, spr_scissor_wins, 0, 0, 0);
part_type_size(scissorhoverpart, 0.7, 1, 0, 0);
part_type_speed(scissorhoverpart, 1, 1.5, 0, 0);
part_type_direction(scissorhoverpart, 90, 90, 0, 0); // move left and right



