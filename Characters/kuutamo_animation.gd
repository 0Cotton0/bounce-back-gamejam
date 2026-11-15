extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SceneManager.connect('move_forward', move_forward)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func move_forward():
	$AnimationPlayer.play("walking_forward")
