extends KinematicBody2D
var velocitat_maxima = 200
var gravetat = Vector2(0,9.8)
var velocitat = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	velocitat.x = 0
#	if is_on_floor() and velocitat.x > 0:
#		velocitat.x = velocitat_maxima
#		$AnimatedSprite.flip_h = false
#	if is_on_floor() and velocitat.x < 0:
#		velocitat.x = 
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func mou():
	velocitat.x = 0
	if is_on_floor() and velocitat.x > 0:
		velocitat.x = velocitat_maxima
		$AnimatedSprite.flip_h = false
	if is_on_floor() and velocitat.x < 0:
		velocitat.x = -velocitat_maxima

func _on_Area2D_area_entered(area):
	pass # Replace with function body.
