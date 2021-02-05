/// @description Insert description here
// You can write your code in this editor

if(menu_control)
{
	if(gamepad_is_connected(0))
	{

		b_press = gamepad_button_check_pressed(0, gp_face2); 

	}else{

		b_press = keyboard_check_pressed(vk_escape);
	}
	


	if(b_press)
	{

		menu_control = false;
		SlideTransition(TRANS_MODE.GOTO, rMenu);
}
}
