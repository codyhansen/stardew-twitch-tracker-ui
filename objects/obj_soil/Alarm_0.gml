var _dir_path = obj_manager.properties.Path;
var _file = file_text_open_append(_dir_path + "\\crops.txt");
var _crop = "";

switch (spr) {
    case spr_cauliflower:
        _crop = "cauliflower";
        break;
	case spr_potato:
        _crop = "potato";
        break;
	case spr_tomato:
        _crop = "tomato";
        break;
	case spr_turnip:
        _crop = "turnip";
        break;
    default:
        _crop = "turnip";
        break;
}

file_text_write_string(_file, _crop);
file_text_writeln(_file);
file_text_close(_file);


spr = get_crop_sprite();
indx = 0;
isHarvesting = false;
layer_sequence_destroy(anim_sickle);