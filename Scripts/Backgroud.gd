extends Sprite

var rect = Rect2(Vector2(0, 0), Vector2(1920, 1080))
var color = Color(0, 0, 0)

func _draw():
	draw_rect(rect, color, true)

