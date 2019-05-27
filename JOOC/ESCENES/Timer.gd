extends Timer

signal modifica_energia

func _ready():
	print('timer iniciat')
	start()


func _on_Timer_timeout():
	print('timeracabat')
	Global.energia -= 2
	emit_signal('modifica_energia', Global.energia)
	if Global.energia == 0:
		get_tree().change_scene("res://Game over/Game over.tscn")
	