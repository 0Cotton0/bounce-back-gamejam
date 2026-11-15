extends StaticBody2D

@export var buttons_needed: int = 1

var buttons_pressed: int = 0


func _on_button_pressed():
	buttons_pressed += 1
	
	if buttons_pressed >= buttons_needed:
		$AudioStreamPlayer2D.play()
		visible = false
		$CollisionShape2D.set_deferred("disabled", true)


func _on_button_unpressed():
	buttons_pressed -= 1
	
	if buttons_pressed < buttons_needed:
		visible = true
		$CollisionShape2D.set_deferred("disabled", false)
