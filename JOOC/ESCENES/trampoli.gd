extends Area2D

func _ready():
	$AnimatedSprite.play("aturat")
	
func _on_Area2D_area_entered(area):
	$AnimatedSprite.play("saltar")
		
	
