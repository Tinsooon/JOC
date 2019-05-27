extends Node


func actualitza_barra (energia):
	$Control/TextureProgress.value = energia
	

	
	 
	
	
	

func _on_Timer_modifica_energia(energia):
	print('timer acabat')
	actualitza_barra (energia)
