extends CanvasLayer

signal start_game


func _ready():
	pass # Replace with function body.



func _on_Button_pressed():
	$MenuContainer.visible = false
	$MarginContainer.visible = false
	
	emit_signal("start_game")
