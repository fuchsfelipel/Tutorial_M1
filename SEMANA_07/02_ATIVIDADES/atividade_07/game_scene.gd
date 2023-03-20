extends Node2D


func _ready():
	$thanksLabel.visible = false
	$brickLabel.visible = false
	$mirrorLabel.visible = false
	
func _on_Button_pressed():
	$thanksLabel.visible = false
	$brickLabel.visible = false
	$mirrorLabel.visible = false
	
	var routerPosition = $KinematicBody2D.get_global_position().y - 50
	if (routerPosition < $Sprite.get_global_position().y):
		$brickLabel.visible = true
	elif (routerPosition < $Sprite3.get_global_position().y):
		$mirrorLabel.visible = true
	else:
		$thanksLabel.visible = true
