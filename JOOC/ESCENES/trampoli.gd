extends Area2D
var damage = 0

func _ready():
	$AnimatedSprite.play("aturat")
	
#func _on_Area2D_area_entered(area):
	#$AnimatedSprite.play("saltar")
		
func _on_trampoli_body_entered(body):
	$AnimatedSprite.play("saltar")
	
