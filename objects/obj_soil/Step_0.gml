if (indx >= sprite_get_number(spr) - 1 && isHarvesting == false) {

	alarm[0] = 60;
	isHarvesting = true;
	
	var _chance = irandom(100);
	if (_chance == 79) {
		anim_sickle = layer_sequence_create("Instances", x - 14, y, seq_cut_gold);
	} else {
		anim_sickle = layer_sequence_create("Instances", x - 14, y, seq_cut);
	}
	
}