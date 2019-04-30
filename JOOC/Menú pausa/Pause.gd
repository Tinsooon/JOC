extends TextureButton


func _on_Pause_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
	else:
		get_tree().paused = true