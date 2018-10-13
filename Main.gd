extends Node2D

onready var ship_scene = load("res://Ship.tscn")

func _ready():
	generate_ships()
	
func get_range(val):
	return randf() * val
	
func generate_ships():
	for i in range(20):
		generate_ship(ship_scene, get_range(640), get_range(300), "MNR" + str(i))
		
func generate_ship(scene, x, y, reg):
	var ship = scene.instance()
	ship.position = Vector2(x, y)
	ship.set_ship_registration(reg)
	add_child(ship)
	