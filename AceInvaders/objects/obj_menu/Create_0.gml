global.menu_active=false
width = room_width/3
height = room_height/3
op_border = 8
op_space = 16
pos = 0
aud_gain_master = 1
// main
option[0,0]="menu_close"
option[0,1]="menu_settings"
option[0,2]="menu_exit"
// settings
option[1,0]="menu_lang"
option[1,1]="menu_audio"
option[1,2]="menu_video"
option[1,3]="menu_back"
// langs
option[2,0]="menu_lang_en"
option[2,1]="menu_lang_de"
option[2,2]="menu_lang_jp"
option[2,3]="menu_back"
// audio
option[3,0]="menu_audio_master_+"
option[3,1]="menu_audio_master_-"
option[3,2]="menu_back"
//video
option[4,0]="menu_video_fullscreen"
option[4,1]="menu_back"
//ingame
option[5,0]="menu_game_home"
option[5,1]="menu_settings"
menu=0
op_length=array_length(option[menu])
global.menu_active = false
