extends Timer

signal modifica_energia
#var conill = Global.Conill
func _ready():
	print('timer iniciat')
	start()


func _on_Timer_timeout():
	print('timeracabat')
	Global.energia -= 10
	emit_signal('modifica_energia', Global.energia)
	
	if Global.energia <= 0:
		#get_tree().change_scene("res://Game over/Game over.tscn")
#		Global.Conill.$AnimatedSprite/VisibilityNotifier2D.free()
		Global.Conill.mor()
