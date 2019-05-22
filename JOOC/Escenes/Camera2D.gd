extends Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var objectiu = get_tree().get_root().get_node("Node2D/sprites/conill")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global_position = objectiu.global_position

func _process(delta):
	if objectiu.global_position.y < global_position.y:
		global_position.y = objectiu.global_position.y

#func _on_VisibilityNotifier2D_screen_exited():
#	get_tree().change_scene("res://Game over/Game over.tscn")


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	get_tree().change_scene("res://Game over/Game over.tscn")
