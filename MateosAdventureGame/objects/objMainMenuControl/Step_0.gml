if gameStarted
{
	flashTimer--;
	if flashTimer mod 10 == 0 && flashTimer > 0
		objPressEnter.visible = !objPressEnter.visible
	
	if flashTimer <= 0
		room_goto(rm_f1_main_hallway1);
}