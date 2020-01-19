extends Node2D

var radius = 20
var color = Color(255, 255, 255)

func _ready():
	var colShape = get_parent().get_node("CollisionShape2D").shape
	radius = colShape.radius

func _draw():
	draw_circle(Vector2(position.x, position.y), radius, color)
	
# warning-ignore:unused_argument
func _process(delta):
	update()