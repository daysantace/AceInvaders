global.menu_active=false
width = room_width/3
height = room_height/3
op_border = 8
op_space = 16
pos = 0
aud_gain_master = 1

// settings
option[0,0]="menu_lang"
option[0,1]="menu_audio"
option[0,2]="menu_video"
// langs
option[1,0]="menu_lang_en"
option[1,1]="menu_lang_de"
option[1,2]="menu_lang_jp"
option[1,3]="menu_back"
// audio
option[2,0]="menu_audio_master_+"
option[2,1]="menu_audio_master_-"
option[2,2]="menu_back"
//video
option[3,0]="menu_video_fullscreen"
option[3,1]="menu_back"

menu=0
op_length=array_length(option[menu])
global.menu_active = false
