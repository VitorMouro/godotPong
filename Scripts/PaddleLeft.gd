extends Area2D

var dir = 0
var canMoveUp = true
var canMoveDown = true
var speed = 500

func _physics_process(delta):
	if Input.is_action_pressed("player1_up") and canMoveUp:
		dir = -1
	elif Input.is_action_pressed("player1_down") and canMoveDown:
		dir = 1
	else: 
		dir = 0
	position.y += speed * dir * delta

func _on_PaddleLeft_area_entered(area):
	if area.get_name() == 'Roof':
		canMoveUp = false
	elif area.get_name() == 'Floor':
		canMoveDown = false

func _on_PaddleLeft_area_exited(area):
	if area.get_name() == 'Roof':
		canMoveUp = true
	elif area.get_name() == 'Floor':
		canMoveDown = true
