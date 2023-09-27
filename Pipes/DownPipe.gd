extends Area2D


export var speed : int = 30



func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	position.x -= speed * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func deathPlayer():
	pass



func _on_DownPipe_body_entered(body):
	if body.is_in_group("Player"):
		position.x = 0
