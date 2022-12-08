randomise()
ini_open("save.ini")
global.lat_jp=font_add("font_lat_jp.ttf",12,false,false,32,40959)
font_add_enable_aa(false)
draw_set_font(global.lat_jp)
draw_set_colour(c_white)
switch(os_get_language()){
	case "de": {global.locale=LOCALE.DE}
	default: {global.locale=LOCALE.EN}
}
global.flscr = ini_read_real("pref","flscr",0)
global.fpsEnabled = ini_read_real("pref","fps",0)
global.ticketDepped = ini_read_real("resc","sticket",0)
room_goto(titleroom)
