/// @description 

#region LECTURA DE BOTONES
	var _hor =  keyboard_check(button_right) -  keyboard_check(button_left);
	var _accion = keyboard_check_pressed(button_action);
#endregion


#region MOVIMIENTO PERSONAJE
	x = min(x + (_hor * velocidad),room_width); // para que no se salga de la pantalla por la derecha
	x = max(x, obj_borda.x); // para que no caiga por la borda
#endregion


#region ACCIONES
	if (_accion)
	{
		var _objeto = instance_place(x,y,objeto_accionable);
		if (_objeto <> noone)
		{
			switch (_objeto.object_index)
			{
				case(obj_helice):	obj_avion.Arrancar(); break;
				case(obj_go):		obj_go.ComprobarCondiciones(); break;
			}
		}
		else
		{
			if (instance_exists(obj_level_complete))
				room_goto_next();
		}
	}
#endregion


#region CAMBIO DE SPRITE
	if (_hor == 0)
		image_speed = 0;
	else
	{
		image_speed = 1;
		image_xscale = _hor;
	}
#endregion