extends KinematicBody2D


func _physics_process(delta):
	var dislocation = Vector2(0, 0)

	# Movimento do caminhão para cima
	if Input.is_action_pressed("ui_up"):
		dislocation.y = -150

	# Movimento do caminhão para baixo
	elif Input.is_action_pressed("ui_down"):
		dislocation.y = 150

	# Faz o movimento com colisão em 2D
	move_and_slide(dislocation)
