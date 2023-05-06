menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)

// set selection
menu_index += menu_move
if (menu_index < 0){menu_index = buttons-1}
if (menu_index > buttons - 1){menu_index = 0}
if (menu_index != last_selected){audio_play_sound(sfx_menu_select,1,false)}
last_selected=menu_index

if keyboard_check_pressed(vk_enter){
	audio_play_sound(sfx_menu_select,1,false)	
	switch(menu_index){
		case 0:
			// play
		case 1:
			// settings
		case 2: //exit
			game_end()
			break
	}
}
