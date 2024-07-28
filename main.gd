extends Node2D


func _on_timer_timeout():
	$CanvasLayer/FadeTransition.show()
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_in")
	await get_tree().create_timer(1).timeout
	$CanvasLayer/Splash.visible = false
	$CanvasLayer/Start.visible = true
	await get_tree().create_timer(1).timeout
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_out")
	


func _on_start_start_button_pressed():
	$CanvasLayer/FadeTransition.show()
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_in")
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://levels/platformer/platformer.tscn")
