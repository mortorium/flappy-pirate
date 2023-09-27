extends Area2D


export var speed : int = 30



func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	#se supone que salir del lado derecho de la pantalla
	position.x -= speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	#pa cuando salga de pantalla el pipe se destruya
	queue_free()
