extends Area2D

func ready(): 
	pass

func _on_Area2D_area_entered(area):
	queue_free()
