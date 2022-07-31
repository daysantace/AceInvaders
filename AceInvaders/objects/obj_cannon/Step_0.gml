/// @desc movement, shooting, display
layerid = layer_get_id("player_inst")
x = mouse_x
if mouse_check_button_pressed(mb_left) { instance_create_layer(x,y,layerid,obj_ball_ace) }
