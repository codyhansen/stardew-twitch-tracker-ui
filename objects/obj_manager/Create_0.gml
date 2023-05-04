//Thank you for using the Stardew Twitch Tracker!
//I hope you enjoy.

//All art credit to ConcernedApe, of course!
//Have a great day, everyone.

//-- Cody

game_set_speed(60, gamespeed_fps);

var _file = file_text_open_read("properties.json");
properties = json_parse(file_text_readln(_file));
file_text_close(_file);


enum crops {
	
	turnip,
	cauliflower,
	potato,
	totato
	
}

randomize();

//Sprite Map
crop_sprite[crops.turnip, 0] = spr_seed_turnip;
crop_sprite[crops.turnip, 1] = spr_turnip;

crop_sprite[crops.cauliflower, 0] = spr_seed_cauliflower;
crop_sprite[crops.cauliflower, 1] = spr_cauliflower;

crop_sprite[crops.potato, 0] = spr_seed_potato;
crop_sprite[crops.potato, 1] = spr_potato;

crop_sprite[crops.totato, 0] = spr_seed_tomato;
crop_sprite[crops.totato, 1] = spr_tomato;

room_goto(rm_main);


global.part = part_system_create();
part_system_depth(global.part, -1000);
global.water = part_type_create();
part_type_sprite(global.water, spr_water_part, 0, 0, 0);
part_type_scale(global.water, 0.25, 0.25);
part_type_speed(global.water, 1, 2, -0.1, 0);
part_type_gravity(global.water, 0.5, 270);
part_type_life(global.water, 13, 13);

can_queue = [];

alarm[0] = 300;