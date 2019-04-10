extends KinematicBody2D
var salt = Vector2(0,-300)
var velocitat = Vector2()
var velocitat_maxima = 200
var gravetat = Vector2(0,9.8)
# Called when the node enters the scene tree for the first time.
func _ready():
	if is_on_floor():
		velocitat += salt

func _physics_process(delta):
	mou()
	anima()

func mou():
	velocitat.x = 0 
	if Input.is_action_pressed('ui_right'):
		velocitat.x = velocitat_maxima
	if Input.is_action_pressed('ui_left'):
		velocitat.x = -velocitat_maxima
	if is_on_floor():
		velocitat += salt
	else:
		velocitat += gravetat
		
	velocitat = move_and_slide(velocitat, Vector2(0, -1))
func anima():
	if velocitat.y > 0:
		$AnimatedSprite.play('Jump')
	
func _on_Area2D_area_entered(area):
	print('au')
	$AnimatedSprite.play('hurt')