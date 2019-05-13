extends Camera2D

var conill = get_tree().get_root().get_node("Node2D/sprites/conill")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if conill.position.y < position.y:
		position.y = conill.position.y
571.88
4133.033