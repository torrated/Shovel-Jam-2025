/// @description hacer desaparecer el texto

if (tiempo_desaparecer > 0)
{
	tiempo_desaparecer -= 1;
	image_alpha -= 1/tiempo_desaparecer_max;
	alarm[0] = 1;
}
else
	instance_destroy(self, true);