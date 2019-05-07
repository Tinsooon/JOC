extends Area2D

func ready(): 
	pass



func _on_moneda_body_entered(area):
	if area.get_name() == "conill":
		self.queue_free()
		#global_var.Pastanaga += 20