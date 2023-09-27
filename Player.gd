extends KinematicBody2D

const GRAVITY = 3
const JUMP_FORCE : int = 15

onready var motion = Vector2.ZERO
onready var screen_size = get_viewport_rect().size #tamaño de la ventana
var can_move : bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Moving")


func _process(delta):
	motion_ctrl()
	stop_move()
	

func motion_ctrl():
	
	if can_move:
		position.y += GRAVITY
		
		if Input.is_action_pressed("ui_accept"):
			position.y -= JUMP_FORCE
			set_rotation_degrees(-33.9)
		else:
			set_rotation_degrees(15.9)
		
		position.y = clamp(position.y, 0, screen_size.y)


func stop_move():
	if position.y >= 445:
		can_move = false
		$AnimatedSprite.stop()
