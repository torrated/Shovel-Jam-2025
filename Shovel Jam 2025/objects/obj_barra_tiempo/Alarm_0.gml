/// @description reduce el tiempo

if (tiempo < tiempo_max)
{
	tiempo += 1;
	alarm[0] = 1;
}
else
	Mostrar_you_failed();