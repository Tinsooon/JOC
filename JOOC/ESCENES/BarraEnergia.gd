extends Node


func actualitza_barra (energia):
	$Control/TextureProgress.value = energia
	

	
	 
	
	
	

func _on_Timer_modifica_energia(energia):
	print(energia)
	actualitza_barra (energia)
