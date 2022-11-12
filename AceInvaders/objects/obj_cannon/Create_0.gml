///  @desc setup for the appearance

global.ballID = 0

ballInfo=load_csv("ballInfo.csv")
show_debug_message(ds_grid_get(ballInfo,global.ballID+1,2))
sprite_index=asset_get_index(ds_grid_get(ballInfo,global.ballID+1,0))
bulletID=asset_get_index(ds_grid_get(ballInfo,global.ballID+1,2))
layerid=layer_get_id("player_inst")

can_fire = true

switch sprite_index
{
	case spr_cannon_ace: bullet_amt=1;fire_cooldown=30;break;
	case spr_cannon_bi: bullet_amt=2;fire_cooldown=15;break;
	case spr_cannon_nb: bullet_amt=5;fire_cooldown=60;break;
}
