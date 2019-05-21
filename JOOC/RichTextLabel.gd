extends RichTextLabel

var s = 2

func _ready():
	pass

func _process(delta):
	if s == 0:
		get_tree().change_scene("res://Game over/Game over.tscn")
	

func _on_Timer_timeout():
	s -= 1
		
