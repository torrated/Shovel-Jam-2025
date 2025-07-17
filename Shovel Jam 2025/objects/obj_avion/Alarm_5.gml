/// @description hace que el ruido del motor se apague poco a poco

if (tiempo_motor_fadeout < tiempo_motor_fadeout_maximo)
{
	tiempo_motor_fadeout += 1;
	audio_group_set_gain(audiogroup1,(tiempo_motor_fadeout_maximo-tiempo_motor_fadeout)/tiempo_motor_fadeout_maximo,0);
	alarm[5] = 1;
}
else
	instance_destroy(self,true);