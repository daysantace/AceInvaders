if buttonID == 0 // play button
{
	image_blend=make_colour_rgb(72,171,75)
	buttonText = "menu_start"
	if position_meeting(mouse_x,mouse_y,id){
		image_index=1
		if mouse_check_button(mb_left){
			audio_play_sound(aud_menu_select,1,false)
			room_goto(mainroom)
		}
	}
	else{image_index=0}
}

if buttonID == 1{} // go to actual play
