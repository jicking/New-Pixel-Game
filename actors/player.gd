extends CharacterBody2D

@export var speed = 200
@export var jump_speed = -438 # jump by 48px
@export var gravity = 2000
@export_range(0.0, 1.0) var friction = 0.1
@export_range(0.0 , 1.0) var acceleration = 0.25


func _physics_process(delta):
	velocity.y += gravity * delta
	var dir = Input.get_axis("ui_left", "ui_right")
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0.0, friction)

	move_and_slide()
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_speed
