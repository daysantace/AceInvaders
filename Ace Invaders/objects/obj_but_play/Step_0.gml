// appear
if global.menupage == "MAIN"{x = room_width/2} else {x = startx}

// mouse hover and click
if point_in_rectangle(mouse_x,mouse_y,x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2)){
	sprite_index = spr_button_go_sel
	if mouse_check_button_pressed(mb_left){
		global.menupage = "PLAY"
	}
}
else{sprite_index = spr_button_go}