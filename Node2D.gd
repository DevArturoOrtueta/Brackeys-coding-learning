extends Node2D

var health = 100
# Called when the node enters the scene tree for the first time.
#if whe export a variable we can changed it in the inspector.
# @export var health = 100
func _ready():
	print("Hello world")
	
	$Label.text = 'Hello World'
	$Label.modulate = Color.GREEN

func _input(event): 
	if event.is_action_pressed("MY_ACTION"):
		var result = add(1,2)
		result = add(result, 4)
		print(result)
	#if event.is_action_pressed("MY_ACTION"):
	#	$Label.modulate = Color.RED
	
	#if event.is_action_released("MY_ACTION"):
	#	$Label.modulate = Color.GREEN

func jump():
	print("JUMP!")

func add(num1: int, num2: int) -> int:
	var result = num1 + num2
	return result
