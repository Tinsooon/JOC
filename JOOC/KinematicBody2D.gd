extends KinematicBody2D
var salt = Vector2(0,-500)
var velocitat = Vector2()
var velocitat_maxima = 200
var gravetat = Vector2(0,11)
onready var vida = get_tree().get_root().get_node('Node2D').vida
var hurt = false
var posicio = Vector2(870.571,4136.038)
var velocitat_trampoli = Vector2(0, 1000)
signal canvia_vida

func _ready():
	position = posicio
	if is_on_floor():
		velocitat += salt
		$AudioStreamPlayer.play()

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
		$AudioStreamPlayer.play()
	if position.y >= 4311.6:
		position = posicio
		hit(3)
		get_tree().change_scene("res://Game over/Game over.tscn") 
		
		
	else:
		velocitat += gravetat
	velocitat = move_and_slide(velocitat, Vector2(0, -1))
	
func anima():
	if velocitat.y > 0 and not hurt:
		$AnimatedSprite.play('Jump')
	#if _on_Area2D_area_entered:
		#$AnimatedSprite.play('hurt')
		
func actualitza_vida(damage):
	vida -= damage
	get_tree().get_root().get_node('Node2D').vida = vida
	emit_signal("canvia_vida")

func hit(damage):
	actualitza_vida(damage)
	$AnimatedSprite.play('hurt')
	hurt = true
	if vida <= 0:
		mor()
		get_tree().change_scene("res://Game over/Game over.tscn")
func mor():
	position = posicio

		
func _on_Area2D_area_entered(area):
	if not area.name.begins_with('trampoli'):
		hit(area.damage)
		print('au')
	
	
func _on_AnimatedSprite_animation_finished():
	hurt = false

func _on_trampoli_body_entered(body):
	velocitat = Vector2(0,-1000) 

