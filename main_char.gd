extends Node

var speed : float = 100.0
var direction : Vector2 = Vector2(0.0, 0.0)

@onready var body : CharacterBody2D = $CharacterBody2D

func _input(event):
	direction = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),
			Input.get_action_strength("down") - Input.get_action_strength("up"))

func _physics_process(_delta):
	body.velocity = speed * direction
	body.move_and_slide()
