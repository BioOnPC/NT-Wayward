// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_push(arr, val){
	arr[@array_length(arr)] = val;
	return array_length(arr) - 1;
}