extends Control

onready var energia = get_tree().get_root().get_node('CanvasLayer').energia
onready var s = get_tree().get_root().get_node('CanvasLayer').s

func _ready():
	energia = 100
	s = 20

func _barra_vida():
	if s == 20:
		$TextureProgress.value = 100
	elif s == 18:
		$TextureProgress.value = 90
	elif s == 16:
		$TextureProgress.value = 80
	elif s == 14:
		$TextureProgress.value = 70
	elif s == 12:
		$TextureProgress.value = 60
	elif s == 10:
		$TextureProgress.value = 50
	elif s == 8:
		$TextureProgress.value = 40
	elif s == 6:
		$TextureProgress.value = 30
	elif s == 4:
		$TextureProgress.value = 20
	elif s == 2:
		$TextureProgress.value = 10
	elif s == 0:
		get_tree().change_scene("res://Game over/Game over.tscn")
	
	

func actualitza_barra (energia):
	$TextureProgress.value = energia
	

	
	 
	
	
	