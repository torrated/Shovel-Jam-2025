/// @description 

#region LECTURA DE BOTONES
	var _hor =  keyboard_check(button_right) -  keyboard_check(button_left);
	var _accion = keyboard_check_pressed(button_action);
#endregion


#region MOVIMIENTO PERSONAJE
	if (puede_moverse)
	{
		x = min(x + (_hor * velocidad),room_width); // para que no se salga de la pantalla por la derecha
		x = max(x, obj_borda.x); // para que no caiga por la borda
	}
#endregion


#region ACCIONES
	if (_accion)
	{
		var _dslist = ds_list_create();
		var _objetos = instance_place_list(x,y,objeto_accionable,_dslist,false);
		
		if (_objetos > 0)
		{
			for (var _i = 0; _i < _objetos; _i++)
			{
				switch (_dslist[| _i].object_index)
				{
					case(obj_helice):		 obj_avion.Arrancar(); break;
					case(obj_go):			 obj_go.ComprobarCondiciones(); break;
					case(obj_combustible): 	obj_combustible.Accionar(); break;
					case(obj_barril):		 obj_barril.Accionar(); break;
					case(obj_puerta_accion): obj_puerta.Cerrar(); obj_avion.CambiarAlarmaApagada(true); break;
				}
			}
		}
		else
		{
			if (instance_exists(obj_level_complete))
			{
				obj_juego.IncrementaFase();
				room_goto_next();
			}
		}
		ds_list_destroy(_dslist);
	}
#endregion


#region CAMBIO DE SPRITE
	if (puede_moverse)
	{
		if (_hor == 0)
			image_speed = 0;
		else
		{
			image_speed = 1;
			image_xscale = _hor;
		}
	}
#endregion