extends KinematicBody2D
var velocitat_maxima = 200
var gravetat = Vector2(0,11)
var velocitat = Vector2()
var damage = 1
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D.damage = damage

#func _physics_process(delta):
#	mou()
#	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#func mou():
#	velocitat.x = 0
#	if is_on_floor():
#		velocitat.x = velocitat_maxima
#		#$AnimatedSprite.flip_h = false
#	#if is_on_floor() and velocitat.x < 0:
#		#velocitat.x = -velocitat_maxima
#	if not is_on_floor():
#		velocitat += gravetat
#	else:
#		velocitat += gravetat
#	velocitat = move_and_slide(velocitat, Vector2(0, -1))

func _on_Area2D_area_entered(area):
	if area.has_method('hit'):
		area.hit(damage)
	
