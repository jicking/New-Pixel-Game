extends Node2D

@export var splash_timeout = 1 
@export var start_timeout = 1
var fade_timeout = 1

# This function is called when the node enters the scene tree for the first time
func _ready():
	await get_tree().create_timer(splash_timeout).timeout # inline timeout
	$CanvasLayer/FadeTransition.show()
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_in")
	await get_tree().create_timer(fade_timeout).timeout # inline timeout
	$CanvasLayer/Splash.visible = false
	$CanvasLayer/Start.visible = true
	await get_tree().create_timer(fade_timeout).timeout
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_out")

func _on_start_start_button_pressed():
	$CanvasLayer/FadeTransition.show()
	$CanvasLayer/FadeTransition/AnimationPlayer.play("fade_in")
	await get_tree().create_timer(start_timeout).timeout
	get_tree().change_scene_to_file("res://levels/platformer/platformer.tscn")
