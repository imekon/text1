extends KinematicBody2D

onready var registration = $Label

func set_ship_registration(text):
	registration.text = text