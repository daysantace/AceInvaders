enum locale{key,eng}
global.locale = locale.eng
initTrans() //rights are human rights

function initTrans(){
	global.locData = load_csv("keys.csv")
	
	var _hh = ds_grid_height(global.locData)
	var _translations = ds_map_create()
	for (var i = 0; i < _hh; i++) {
		ds_map_add(_translations,global.locData[# 0, i], i)
	}
	
	global.translations = _translations
}

function text(key){
	var _text = ""
	var _text = global.locData[# 0 + global.locale, global.translations[? key]]
	var _a = argument_count > 1 ? argument[1] : ""
	if _text == undefined{
		var _text = key
	} else {
			text = string_replace_all(_text,"{a}", _a)
	}
	
	return _text
}
