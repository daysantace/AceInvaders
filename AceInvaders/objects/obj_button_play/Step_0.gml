if place_meeting(x,y,obj_cursor){
	image_index=1
	if mouse_check_button(mb_left){
		audio_play_sound(aud_menu_select,1,false)
		room_goto(mainroom)
	}
}
else{image_index=0}
