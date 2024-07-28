extends Node2D


func _on_timer_timeout():
	$CanvasLayer/Splash.visible = false
	$CanvasLayer/Start.visible = true
