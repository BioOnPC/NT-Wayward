// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_popup(_x, _y, _text){
	with(instance_create(_x, _y, PopupText)) {
		text    = _text;
		creator = other;
		return self;
	}
}