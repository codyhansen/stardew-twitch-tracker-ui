if (array_length(can_queue) != 0) {
	var _can = instance_create_layer(-60, 32, "Instances", obj_can);
	_can.user = array_pop(can_queue);
}

alarm[0] = 300;