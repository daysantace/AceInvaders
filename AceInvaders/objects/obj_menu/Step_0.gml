//get input
up = keyboard_check_pressed(vk_up)
dn = keyboard_check_pressed(vk_down)
ac = keyboard_check_pressed(vk_enter)
//store no. opts
op_length=array_length(option[menu])
//move through menu
pos+=dn-up
if up or dn{audio_play_sound(aud_menu_select,1,0)} 
if pos>=op_length{pos=0}
if pos<0{pos=op_length-1}
//use opts
if ac{
	audio_play_sound(aud_menu_confirm,1,0)
	switch(menu){
		//settings
		case 0:
			switch(pos){
				case 0: menu=1;break //lang
				case 1: menu=2;break //vol
				case 2: menu=3;break //video
			}
		break
		//lang
		case 1:
			switch(pos){
				case 0: global.locale=LOCALE.EN;break //en
				case 1: global.locale=LOCALE.DE;break //de
				case 2: menu=0;break //back
			}
		break
		case 2: //vol
			switch(pos){
				case 0: aud_gain_master+=0.1;break //add vol
				case 1: aud_gain_master-=0.1;break //min vol
				case 2: menu=0;break //back
			}
			break
		case 3: //video
			switch(pos){
				case 0: global.flscr=!global.flscr;break //fullscreen
				case 1: global.fpsEnabled=!global.fpsEnabled;break // toggle fps
				case 2: menu=0;break //back
				break
			}
			break
		pos = 0
	}
}
op_length=array_length(option[menu])
audio_master_gain(aud_gain_master*2)
