extends Camera2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var conill = get_tree().get_root().get_node("Node2D/sprites/conill")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global_position.y = -100

func _process(delta):
	print('conill y: ' + str(conill.global_position.y) + '  camera y: ' + str(global_position.y))
	if conill.global_position.y < global_position.y:
		print('puja')
		global_position.y = conill.global_position.y

