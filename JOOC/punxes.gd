extends Area2D

var damage = 1


func _ready():
	pass
	
func _on_Area2D_area_entered(area):
	if area.has_method('hit'):
		area.hit(damage)
	
	
