extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SceneManager.connect('move_back', move_back)
	SceneManager.connect('move_back_more', move_back_more)
	SceneManager.connect('move_back_more_more', move_back_more_more)
	SceneManager.connect('im_falling', im_falling)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func move_back():
	$AnimationPlayer.play("walking_back")
	
func move_back_more():
	$AnimationPlayer.play("walking_back_more")
	
func move_back_more_more():
	$AnimationPlayer.play("walking_back_more_more")
	
func im_falling():
	$AnimationPlayer.play("im_falling")
	await get_tree().create_timer(1.30).timeout
	get_tree().change_scene_to_file('res://Scenes/Scene1.tscn')
