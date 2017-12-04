///@params actorName
///@params velocity
///@params direction
///@params deceleration
///@params type
var vecName = string(argument4);
if(ds_list_size(argument0.environmentVectTyp)>0){
    var tempPos = ds_list_find_index(argument0.environmentVectTyp, vecName);
    if(tempPos != -1){
		ds_list_replace(argument0.environmentVectMag, tempPos, argument1);
		ds_list_replace(argument0.environmentVectDir, tempPos, argument2);
		ds_list_replace(argument0.environmentVectDec, tempPos, argument3);
		ds_list_replace(argument0.environmentVectTyp, tempPos, vecName);
	}
	else{
		ds_list_add(argument0.environmentVectMag, argument1);
		ds_list_add(argument0.environmentVectDir, argument2);
		ds_list_add(argument0.environmentVectDec, argument3);
		ds_list_add(argument0.environmentVectTyp, vecName);
	}
}
else{
	ds_list_add(argument0.environmentVectMag, argument1);
	ds_list_add(argument0.environmentVectDir, argument2);
	ds_list_add(argument0.environmentVectDec, argument3);
	ds_list_add(argument0.environmentVectTyp, vecName);
}