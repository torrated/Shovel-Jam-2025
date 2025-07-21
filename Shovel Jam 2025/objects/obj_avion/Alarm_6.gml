/// @description Hace oscilar los rpm

if (!airborne && !despegando)
{
	rpm = rpm_ralenti * random_range(0.95,1.05);
	alarm[6] = 1;
}
