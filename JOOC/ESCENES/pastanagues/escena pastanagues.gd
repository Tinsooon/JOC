extends Area2D

var pastanaga = load("res://ESCENES/pastanagues/escena pastanagues.tscn")

func ready(): 
	pass


func _on_Pastanaga_body_entered(body):
	if body.get_name() == "conill":
		self.queue_free()
		