/// @description 

if (instance_exists(obj_instrucciones))
	room_goto_next();
else
	instance_create_layer(0,0,"instrucciones",obj_instrucciones);