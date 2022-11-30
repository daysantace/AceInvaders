if gachaOpened{sprite_index=asset_get_index("spr_gacha_capsule_" + global.gachaSelect)}

// gacha decide
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button_pressed(mb_left)
	{
		ticketDepOffset = round(global.ticketDepped/3)+1
		randIndexer = irandom_range(ticketDepOffset*-1,ticketDepOffset)
		randIndexer = global.ticketDepped + randIndexer
		global.ticketDepped = 0
	 
	 
		ds_grid_add(ballInfo,4,ds_grid_height(ballInfo),randIndexer)
		ds_grid_add(ballInfo,6,ds_grid_height(ballInfo),1)
		ds_grid_sort(ballInfo,4,true)
		isGachaGot = 0
		gachaGotYCheck = 0
	
		do
		{
			ds_grid_get(ballInfo,6,gachaGotYCheck)
			gachaGotYCheck++
		}
		until(isGachaGot)
	
		gachaGotID = ds_grid_get(ballInfo,0,gachaGotYCheck)
		sprite_index = asset_get_index(ds_grid_get(ballInfo,1,gachaGotYCheck))
		gachaGotText = ds_grid_get(ballInfo,3,gachaGotYCheck)
	}
}
