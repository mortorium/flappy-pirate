extends Node2D

export (PackedScene) var Pipe
export (PackedScene) var DownPipe



func _ready():
	randomize()


func _process(delta):
	#scroll_base_offset es pa donde yo quiero que se mueva, con el Vector2
	#le indicamos la direccion, el 200 es la velocidad y el delta pa que actualice los frames
	get_node("Ground").scroll_base_offset += Vector2(-1, 0) * 200 * delta
	


func _on_HUD_start_game():
	print("Empezo el juego")
	$Player.can_move = true
	$PipeTimer.start()



func _on_PipeTimer_timeout():
	#esto es pa setear a la tuberia en la esquina
	get_node("PipePath/PipeSpawn").set_offset(226)
	get_node("DownPipePath/DownPipeSpawn").set_offset(226)
	
	pipeInstancias()
	
	$PipeTimer.start()
	
	
func pipeInstancias():
	#pa instanciarlo en la escena
	var pipe = Pipe.instance()
	var downPipe = DownPipe.instance()
	add_child(pipe)
	add_child(downPipe)
	pipe.scale.y = GLOBAL.random(1, 3)
	
	if pipe.scale.y == 2:
#		downPipe.scale.y = 1
		print("pequeño")
	else:
		downPipe.scale.y = 2
	
	print(pipe.scale.y)
	pipe.position = get_node("PipePath").position
#	downPipe.position = get_node("DownPipePath").position
	downPipe.position = Vector2(400, 413)
