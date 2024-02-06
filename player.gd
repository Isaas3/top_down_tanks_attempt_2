extends "res://Tank.gd"

var drive_speed = 100  # move speed in pixels/sec
var rot_speed = 1.5  # turning speed in radians/sec

func _process(delta):
	$Turret.look_at(get_global_mouse_position())
#	var rot_dir = 0
#	if Input.is_action_pressed("ui_right"):
#		rot_dir += 1
#	if Input.is_action_pressed("ui_right"):
#		rot_dir -= 1
#	rotation += rotation_speed * rot_dir * delta
#	velocity = Vector2()
#	if Input.is_action_pressed("ui_up"):
#		velocity = Vector2(speed, 0).rotated(rotation)
#	if Input.is_action_pressed("ui_down"):
#		velocity = Vector2(-speed/2, 0).rotated(rotation)
	var move_input = Input.get_axis("ui_down", "ui_up")
	var rotation_direction = Input.get_axis("ui_left", "ui_right")
	velocity = transform.x * move_input * drive_speed
	rotation += rotation_direction * rot_speed * delta
	move_and_slide()
	
