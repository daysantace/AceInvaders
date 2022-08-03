draw_self()
draw_set_colour(c_white)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)
switch(bid){
	case 0: draw_text(x+50,y,text("gamemode_endless"));break;
	case 1: draw_text(x+50,y,text("menu_settings"));break;
}
if place_meeting(x,y,obj_cursor){draw_set_colour(#f8fa78)}
else{draw_set_colour(c_white)}
