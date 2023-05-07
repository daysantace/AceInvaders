/// @description make pages

var _arg, i = 0
repeat(argument_count){
	_arg[i] = argument[i]
	i++
}

var _ds_grid_id = ds_grid_create(5,argument_count)
i = 0
repeat(argument_count){
	var _array = _arg[i]
	var _array_len = array_length(_array)
	var _xx = 0
	repeat(_array_len){
		_ds_grid_id[# _xx, i] = _array[_xx]
		_xx++
	}
	
	i++
}

return _ds_grid_id
