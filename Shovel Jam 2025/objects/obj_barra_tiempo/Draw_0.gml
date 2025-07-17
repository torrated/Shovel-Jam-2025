/// @description

image_xscale = (tiempo_max-tiempo)/tiempo_max;

draw_self();

var _halign = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x,y,int64((tiempo_max-tiempo)/60));
draw_set_halign(_halign);