///  @desc setup for the appearance and funcs to dry
global.ballID = 0
ballInfoTmp=load_csv("ballInfo.csv")
sprite_index=ds_grid_get(ballInfoTmp,global.ballID,1)
bulletID=ds_grid_get(ballInfoTmp,global.ballID,2)
layerid=layer_get_id("player_inst")
