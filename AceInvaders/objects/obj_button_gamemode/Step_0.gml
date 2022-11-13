if sprite_index == spr_button_gamemode_endless
{
	modeText = "gamemode_endless"
	if position_meeting(mouse_x,mouse_y,id){
	image_index=1
	if mouse_check_button(mb_left)
		{
		audio_play_sound(aud_menu_select,1,false)
		room_goto(playroom)
		}
	}
else{image_index=0}
}
