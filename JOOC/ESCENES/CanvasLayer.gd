extends CanvasLayer

onready var vida = get_tree().get_root().get_node('Node2D').vida

func _ready():
	pass
	

func _on_conill_canvia_vida():
	vida -=1
	if vida == 3:
		$vida.frame = 0
		$vida2.frame = 0
		$vida3.frame = 0
	
	elif vida == 2:
		$vida.frame = 0
		$vida2.frame = 0
		$vida3.frame = 1
		
	
	elif vida == 1:
		$vida.frame = 0
		$vida2.frame = 1
		$vida3.frame = 1
		