client = network_create_socket(network_socket_tcp);
network_connect_raw(client, "localhost", obj_manager.properties.Port);