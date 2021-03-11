extends KinematicBody2D

var motion = Vector2()
const SPEED = 350
const GRAVITY = 10
const JUMP_POWER = -400
const FLOOR = Vector2(0,-1)

func _physics_process(_delta):
	if Input.is_action_pressed("ui_left"):
		$sprite.play("walk")
		get_node("sprite").set_flip_h(false)
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		$sprite.play("walk")
		get_node("sprite").set_flip_h(true)
		motion.x = SPEED
	elif Input.is_action_pressed("ui_down"):
		$sprite.play("sit")
		motion.x = 0
	else:
		$sprite.play("stop")
		motion.x = 0
		
	
		
	if Input.is_action_pressed("ui_up") && is_on_floor():
		motion.y = JUMP_POWER
		
	if !is_on_floor():
		$sprite.play("jump")
			
	motion.y += GRAVITY
	motion = move_and_slide(motion, FLOOR)
pass

