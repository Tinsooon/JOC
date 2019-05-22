extends Control

onready var energia = get_tree().get_root().get_node('CanvasLayer').energia
onready var s = get_tree().get_root().get_node('CanvasLayer').s

func _ready():
	energia = 100
	s = 20

func _barra_vida():
	if s == 20:
		$TextureProgress.value = 100
	#elif s == 

	
	
func actualitza_barra (energia):
	$TextureProgress.value = energia
	

	
	 
	
	
	