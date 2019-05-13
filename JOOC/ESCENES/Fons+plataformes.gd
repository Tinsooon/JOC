extends Node2D

var vida = 3

func _ready():
	$AudioStreamPlayer.play()


func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
