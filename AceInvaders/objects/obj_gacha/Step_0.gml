if gachaOpened{sprite_index=asset_get_index("spr_gacha_capsule_" + global.gachaSelect)}
global.ticketDepped = 1
// gacha decide
if mouse_check_button_pressed(mb_left)
{
	show_debug_message("B")
		
	tickAmt = ini_read_real("resc","sticket",0)
	ticketDepOffset = round(global.ticketDepped/3)+1
	randIndexer = irandom_range(ticketDepOffset*-1,ticketDepOffset)
	randIndexer = global.ticketDepped + randIndexer
	tickWrite = tickAmt - global.ticketDepped
	ini_write_real("resc","sticket",tickWrite)
	global.ticketDepped = 0
		
	ds_grid_add(ballInfo,4,ds_grid_height(ballInfo),randIndexer)
	ds_grid_add(ballInfo,6,ds_grid_height(ballInfo),1)
	ds_grid_sort(ballInfo,6,true)
	isGachaGot = randIndexer
	gachaGotYCheck = 0
		
	do
	{
		ds_grid_get(ballInfo,6,gachaGotYCheck)
		gachaGotYCheck++
	}
	until(gachaGotYCheck == isGachaGot)
		
	sprite_index = asset_get_index(ds_grid_get(ballInfo,2,gachaGotYCheck))
	gachaGotText = ds_grid_get(ballInfo,3,gachaGotYCheck)
		
	ini_write_real("cannon",gachaGotYCheck,0)
}
