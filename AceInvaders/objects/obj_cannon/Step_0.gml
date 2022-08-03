/// @desc movement, shooting, display
layerid = layer_get_id("player_inst")
x = mouse_x
switch(ball_id){
	case 0:bullet_id=obj_ball_ace;bullet_amt=1;cann_height=68;bullet_spray=0;fire_cooldown=30sprite_index=spr_cannon_ace;break
	case 1:bullet_id=obj_ball_bi;bullet_amt=2;cann_height=60;bullet_spray=10;fire_cooldown=15;sprite_index=spr_cannon_bi;break
	case 2:bullet_id=obj_ball_nb;bullet_amt=5;cann_height=40;bullet_spray=40;fire_cooldown=60;sprite_index=spr_cannon_nb;break
}
if mouse_check_button_pressed(mb_left) and can_fire=true{
	repeat(bullet_amt){
		ranx = random(bullet_spray)
		ranx-=round(bullet_spray)
		instance_create_layer(x+ranx,y-cann_height,layerid,bullet_id)
		}
		alarm[0]=fire_cooldown
		can_fire=false
}
if keyboard_check_pressed(vk_left){
	ball_id--
	if ball_id < 0{ball_id=2}
	switch(ball_id){
	case 0:alarm[0]=30;break //ace
	case 1:alarm[0]=15;break //bi
	case 2:alarm[0]=90;break //nb
	}
}
if keyboard_check_pressed(vk_right){
	ball_id++
	if ball_id > 2{ball_id=0}
}
