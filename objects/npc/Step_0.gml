/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(Obj_player) <= 600){
	myTextbox = instance_create_layer(x,y, "Text" , textbox);
	myTextbox.text = dialoguetext;
}else instance_deactivate_object(textbox);