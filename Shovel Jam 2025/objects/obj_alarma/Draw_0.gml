/// @description Escribe ALARM en pantalla

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x,y,"ALARM");
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,color,image_alpha);
draw_set_halign(_halign);