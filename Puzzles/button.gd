extends Area2D

@export var single_use: bool = false
var bodies_on_top: int = 0
signal pressed
signal unpressed




func _on_body_entered(body):
	bodies_on_top += 1
	if body.is_in_group('Pushable') and bodies_on_top == 1 or body is Player and bodies_on_top == 1:
		pressed.emit()
		if bodies_on_top == 1:
			print('pressed')
			$AnimatedSprite2D.play("pressed")

#theres an issue where if there are two things on the same button it works/ FIXED

func _on_body_exited(body):
	if single_use:
		return
	
	bodies_on_top -= 1
	if body.is_in_group('Pushable') and bodies_on_top == 0 or body is Player and bodies_on_top == 0:
		unpressed.emit()
		if bodies_on_top == 0:
			print('unpressed')
			$AnimatedSprite2D.play("unpressed")
