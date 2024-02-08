extends Node

var speed : float = 100.0
var direction : Vector2 = Vector2(0.0, 0.0)

@export var startPos : Vector2

@onready var body : CharacterBody2D = $CharacterBody2D

func _ready():
	body.translate(startPos)

func _physics_process(_delta):
	body.velocity = speed * direction
	body.move_and_slide()
