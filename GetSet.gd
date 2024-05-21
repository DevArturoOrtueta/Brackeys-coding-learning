extends Node2D

signal health_changed(new_health)
var health := 100:
	set(value):
		health = clamp(value, 0, 100)
		health_changed.emit(health)
		

var chance := 0.2
var chance_pct: int:
	get:
		return chance * 100
	set(value):
		chance = float(value) / 100.0

func _ready():
	print(chance_pct)
	chance = 0.6
	print(chance_pct)



func _on_health_changed(new_health):
	print(new_health)
