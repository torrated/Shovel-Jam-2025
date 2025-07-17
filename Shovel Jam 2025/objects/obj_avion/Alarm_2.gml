/// @description cambia el pitch del motor 

if (audio_sound_get_pitch(ruido_motor) == 1)
{
	audio_sound_pitch(ruido_motor,random_range(0.85,1.15));
	alarm[2] = 30;
}
else
	audio_sound_pitch(ruido_motor,1);