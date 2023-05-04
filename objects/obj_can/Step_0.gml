x += vspd;
var _soil = instance_nearest(x, y, obj_soil);

if (_soil.x - x > -10 && _soil.x - x < 10) {
	image_index = 1;
	part_particles_create(global.part, x+2, y+5, global.water, 1);
	if (!isGrown) {
		_soil.indx += 1;
		isGrown = true;
	}
} else {
	image_index = 0;
	isGrown = false;
}

if (x = (room_width + 60)) {
	instance_destroy();
}