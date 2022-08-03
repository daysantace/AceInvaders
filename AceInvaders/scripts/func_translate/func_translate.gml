enum LOCALE{EN,DE,JP}
global.locale=LOCALE.EN
translate()
function translate(){
	global.locdata=load_csv("localisation.csv")
	var locale_grid = ds_grid_height(global.locdata)
	var translation = ds_map_create()
	for (var i = 0;i<locale_grid;i++)
	{
		ds_map_add(translation,global.locdata[# 0, i], i)
	}
	global.translations = translation
}
function text(key)
{
	var textwrite = ""
	if(global.translations[?key]!=undefined){
		var textwrite=global.locdata[#1+global.locale,global.translations[?key]]
		var a=argument_count>1?argument[1]:""
		textwrite = string_replace_all(textwrite,"{a}",a)
		textwrite = string_replace_all(textwrite,"{b}",a)
	}else{var textwrite=key}
	return textwrite
}
