/// @description

var _color = draw_get_color();
draw_set_color(c_black)
image_xscale = (tiempo_max-tiempo)/tiempo_max;

draw_self();

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x,y-sprite_height,int64((tiempo_max-tiempo)/60));
draw_set_halign(_halign);

draw_set_color(_color);