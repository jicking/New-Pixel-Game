#extends Node
#
#const ScreenOverlay: PackedScene = preload("res://src/UI/FX/ScreenOverlay.tscn")
##const OverlayCameraLens: PackedScene = preload("res://src/UI/FX/OverlayCamera.tscn")
##const TouchControls: PackedScene = preload("res://src/UI/TouchControls.tscn")
#const START_SCREEN_PATH = "res://src/Screens/Start.tscn"
#enum PLAYERS { MM, JEK }
#
#var player_selected = PLAYERS.MM
#var current_scene_path := ""
#var score := 0
#
#@onready var root = get_tree().get_root()
#@onready var current_scene = root.get_child(root.get_child_count() - 1)
#
#
#func _ready():
	#setup_fade_transition()
#
#
#func restart_scene():
	#switch_scene(current_scene_path)
#
#
#func switch_scene(path: String):
	#current_scene_path = path
	#call_deferred("_deferred_goto_scene", path)
#
#
#func _deferred_goto_scene(path: String):
	#if path.length() == 0:
		#path = START_SCREEN_PATH
	## It is now safe to remove the current scene
	#current_scene.free()
#
	## Load the new scene.
	#var s = ResourceLoader.load(path)
	## Instance the new scene.
	#current_scene = s.instance()
	## Add it to the active scene, as child of root.
	#get_tree().get_root().add_child(current_scene)
	#current_scene_path = path
	#setup_fade_transition()
	#setup_camera_lens_overlay()
	#setup_touch_controls()
#
#
#func setup_fade_transition():
	#var so = ScreenOverlay.instance()
	#so.set_name("ScreenOverlay")
	#current_scene.add_child(so)
#
#
#func fade_out_transition() -> void:
	#var so = current_scene.get_node_or_null("ScreenOverlay")
	#if so != null:
		#so.fade_out()
#
#
#func setup_camera_lens_overlay():
	#if current_scene_path == START_SCREEN_PATH:
		#return
	#if current_scene_path == "res://src/Game.tscn":
		#return
	#var so = OverlayCameraLens.instance()
	#so.set_name("OverlayCameraLens")
	#current_scene.add_child(so)
#
#
#func setup_touch_controls():
	#var so = TouchControls.instance()
	#so.set_name("TouchControls")
	#current_scene.add_child(so)
