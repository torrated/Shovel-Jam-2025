/// @description 

button_left = ord("A");
button_right = ord("D");
button_action = vk_space;
puede_moverse = true;

enum VELOCIDAD_PLAYER // velocidad a la que se desplaza
{
	NORMAL = 4,
	LENTA = 2
}

velocidad = VELOCIDAD_PLAYER.NORMAL;

accion = false;
objeto_accionable = [	obj_helice,
						obj_go,
						obj_barril,
						obj_combustible,
						obj_puerta_accion];


/// @description cambia la velocidad de desplazamiento
/// @param {VELOCIDAD_PLAYER}  vel VELOCIDAD_PLAYER
function CambiarVelocidad(vel)
{
	velocidad = vel;
}


/// @description Hace que el player no pueda moverse
function Detener()
{
	puede_moverse = false;
}



/// @description Hacer que el player pueda moverse
function Reanimar()
{
	puede_moverse = true;
}