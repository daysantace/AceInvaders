c_bg = #480078
c_mensel = #fcfc68

button_h = 48
button_w = 256
button_padding = 8

menu_x = (room_width/2)
menu_y = (room_height/2)-(button_h*2)

//buttons
button[0] = text("play")
button[1] = text("settings")
button[2] = text("exit")

buttons = array_length(button)

menu_index = 0
last_selected = 0
