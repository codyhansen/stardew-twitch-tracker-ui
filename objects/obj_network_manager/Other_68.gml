var _type = async_load[? "type"];

if (_type == network_type_data) {

	var _buffer = async_load[? "buffer"];
		
	buffer_seek(_buffer, buffer_seek_start, 0);
	
	var _can_user = buffer_read(_buffer, buffer_string);
	
	array_insert(obj_manager.can_queue, 0, _can_user);

}