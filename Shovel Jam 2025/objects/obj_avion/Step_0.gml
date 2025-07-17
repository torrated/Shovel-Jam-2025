/// @description 

#region SONIDOS
	if (arrancado && irandom_range(0,100) <= 10 && alarm_get(2) == -1)
		alarm[2] = 1;
#endregion