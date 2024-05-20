extends Node2D

@onready var node_2d = get_node(".")
@export var my_node : Node #Si pongo SpriteNode por ejemplo solo salen Sprite2D

enum Alignment {ALLY, NEUTRAL, ENEMY}

@export var my_alignment : Alignment
var health = 100
# Called when the node enters the scene tree for the first time.
#if whe export a variable we can changed it in the inspector.
# @export var health = 100
func _ready():
	
	#match my_alignment:
	#	Alignment.ALLY:
	#		print("Hello, friend")
	#	Alignment.NEUTRAL:
	#		print("I come in piece")
	#	Alignment.ENEMY:
	#		print("TASTE MY WRATH")
	#	_:
	#		print("Who art thou")
	#if unity_aligment == Alignment.ENEMY:
	#	print("You are not welcome here.")
	#else:
	#	print("Welcome.")
	#Arrays
	#var item: Array[String] = ["Potion", "Feather", "Stolen harp"]
	
	#item.remove_at(1)
	#item.append("Overpowered sword")
	
	#Dictionaries
	var players = {
		"Crook": {
			"Level": 1,
			"Health": 80
		},
		"Villain": {
			"Level": 34,
			"Health": 100
		},
		"Boss": {
			"Level": 100,
			"Health": 120
		}
	}
	
	#print(players.Crook.Level)
	
	#for username in players:
	#	print(username + ": " + str(players[username]))
	#var character_height = randi_range(140,210)
	#print("Your character is " + str(character_height) + " cm")
	#print("Hello world")
	
	$Label.text = 'Hello World'
	$Label.modulate = Color.GREEN

func _input(event): 
	if event.is_action_pressed("MY_ACTION"):
		random()
		#var result = add(1,2)
		#result = add(result, 4)
		#print(result)
	#if event.is_action_pressed("MY_ACTION"):
	#	$Label.modulate = Color.RED
	
	#if event.is_action_released("MY_ACTION"):
	#	$Label.modulate = Color.GREEN

func jump():
	print("JUMP!")

func add(num1: int, num2: int) -> int:
	var result = num1 + num2
	return result


#Random number
func random():
	var roll = randf()
	if roll <= 0.8:
		print("You found a Common item")
	else:
		print("You found a Rare Item")
