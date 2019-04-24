extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	#func actualitza_vida(nou_percentatge_vida):
	#pass
	
	
	var energia = 100
	var gana = 10
	
func actualitza_barra (energia):
	energia = energia - gana
	actualitza_barra(energia)
	
func actualitzar_barra(energia):
	get_node("/root/TextureProgress").set_value(energia)