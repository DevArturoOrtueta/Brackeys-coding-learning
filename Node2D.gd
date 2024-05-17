extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello world")
	$Label.text = 'Hello World'
	$Label.modulate = Color.GREEN

func _input(event):
	if event.is_action_pressed("MY_ACTION"):
		$Label.modulate = Color.RED
	
	if event.is_action_released("MY_ACTION"):
		$Label.modulate = Color.GREEN
