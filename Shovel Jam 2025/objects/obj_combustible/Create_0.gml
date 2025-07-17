image_alpha = 0;


/// @description Si se puede, vierte el combustible
function Accionar()
{
	if (obj_barril.cogido)
	{
		obj_barril.Verter();
	}
}