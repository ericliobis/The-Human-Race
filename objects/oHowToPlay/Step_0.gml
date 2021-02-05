/// @pdescription Insert description here
// You can write your code in this editor


	numb = [keyboard_check_pressed(vk_left),  keyboard_check_pressed(vk_right), keyboard_check_pressed(vk_up), keyboard_check_pressed(vk_down)]

	for(i=0;i<array_length_1d(numb);i++)
	{
		if(i != password[currentNum] && numb[i])
		{
			currentNum = 0;
		}
	}
		if(numb[password[currentNum]])
	{
		currentNum++;
	}
	if(currentNum > array_length_1d(password)-1)
	{
		currentNum = 0;
		SlideTransition(TRANS_MODE.GOTO, rSecret);
	}


