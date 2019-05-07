extends Control

func _on_Pause_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		$Tween.interpolate_property($Buttons,'rect_position',$Buttons.rect_position,$Buttons.rect_position-Vector2(800,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Tween.start()
	else:
		get_tree().paused = true
		$Tween.interpolate_property($Buttons,'rect_position',$Buttons.rect_position,$Buttons.rect_position+Vector2(800,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Tween.start()
	
func _on_Continue_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		$Tween.interpolate_property($Buttons,'rect_position',$Buttons.rect_position,$Buttons.rect_position-Vector2(800,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Tween.start()

func _on_Exit_pressed():
	get_tree().quit()



