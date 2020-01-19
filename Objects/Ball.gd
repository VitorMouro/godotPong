extends KinematicBody2D

var velocity
var dir
var speed = 100

func _ready():
	randomize()
	dir = randi()%361
	velocity = Vector2(cos(dir), sin(dir)).normalized() * speed

func _physics_process(delta):
    position += velocity * delta

