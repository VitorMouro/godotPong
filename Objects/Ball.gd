extends Area2D

var velocity
var speed = 500

func _ready():
	velocity = Vector2(1, 1)

func _physics_process(delta):
	position += velocity * speed * delta

func _on_Ball_area_entered(area):
	if area.get_name() == 'Roof':
		velocity.y = 1
	elif area.get_name() == 'Floor':
		velocity.y = -1
	elif area.get_name() == 'LeftSide':
		velocity.x = 1
		get_parent().get_node('Score').scorePlayer1 += 1
		position = Vector2(1920/2, 1080/2)
	elif area.get_name() == 'RightSide':
		velocity.x = -1
		get_parent().get_node('Score').scorePlayer2 += 1
		position = Vector2(1920/2, 1080/2)
	elif area.get_name() == 'PaddleLeft':
		velocity.x = 1
	elif area.get_name() == 'PaddleRight':
		velocity.x = -1