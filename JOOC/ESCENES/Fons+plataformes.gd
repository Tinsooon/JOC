extends Node2D

var vida = 3

func _ready():
	$AudioStreamPlayer.play()
	Global.energia = 100


func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
