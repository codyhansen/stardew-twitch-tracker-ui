indx = 0;

function get_crop_sprite() {
	
	var _cur_spr = choose(crops.turnip, crops.cauliflower, crops.potato, crops.totato);
	return obj_manager.crop_sprite[_cur_spr, 1];
	
}

spr = get_crop_sprite();
isHarvesting = false;
anim_sickle = noone;