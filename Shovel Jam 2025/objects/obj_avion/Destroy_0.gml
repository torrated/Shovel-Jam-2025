/// @description Para el sonido

if (audio_is_playing(ruido_motor))
	audio_stop_sound(ruido_motor);

instance_create_layer(room_width/2,room_height/2,"Instances",obj_level_complete);