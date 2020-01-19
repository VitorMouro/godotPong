extends Node2D

var width = 32
var height = 32
var rect = Rect2(Vector2(0, 0), Vector2(width, height))
var color = Color(255, 255, 255)

func _ready():
	var colShape = get_parent().get_node("CollisionShape2D").shape
	width = colShape.extents.x*2
	height = colShape.extents.y*2
	rect.size = Vector2(width, height)

func _draw():
	draw_rect(rect, color, true)
	
# warning-ignore:unused_argument
func _process(delta):
	var posX = position.x
	var posY = position.y
	rect.position.x = posX - width/2
	rect.position.y = posY - height/2
	update()