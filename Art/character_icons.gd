extends StaticBody2D



func _ready() -> void:
	SceneManager.connect('animation', animation)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func animation(name):
	$AnimatedSprite2D.play(name)
