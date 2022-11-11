if id == button_setting // settings
{
	sprite_index = spr_button_settings
	buttonText = " "
		if position_meeting(mouse_x,mouse_y,id){
		image_index=1
		if mouse_check_button(mb_left){
			audio_play_sound(aud_menu_select,1,false)
			room_goto(settingroom)
		}
	}
	else{image_index=0}
}

if id == button_0 // play button
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

if id == button_1 // gamemode button
{
	image_blend=make_colour_rgb(72,171,75)	
	buttonText = "menu_start"
	if position_meeting(mouse_x,mouse_y,id){
		image_index=1
		if mouse_check_button(mb_left){
			audio_play_sound(aud_menu_select,1,false)
			room_goto(gamemoderoom)
		}
	}
	else{image_index=0}
}

if id == button_2 // gacha
{
	image_blend=make_colour_rgb(58,114,156)
	buttonText = "menu_gacha"
	if position_meeting(mouse_x,mouse_y,id){
		image_index=1
		if mouse_check_button(mb_left){
			audio_play_sound(aud_menu_select,1,false)
			room_goto(gacharoom)
		}
	}
	else{image_index=0}
}
