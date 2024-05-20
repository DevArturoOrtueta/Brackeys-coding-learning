extends Node2D
signal leveled_up(msg)
var xp : = 0

func _ready():
	leveled_up.connect(_on_leveled_up)
func _on_timer_timeout():
	xp += 5
	print(xp)
	if xp >= 20:
		xp = 0
		leveled_up.emit("GZ")

func _on_leveled_up(msg):
	print(msg)
