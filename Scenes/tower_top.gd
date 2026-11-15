extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(load('res://Dialogue.dialogue'))
	SceneManager.connect("change_scene", c)
	
	$AurinkoAnimation.position = Vector2(-100,-3)
	$kuutamo_animation.position = Vector2(-76,-3)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func c():
	get_tree().change_scene_to_file('res://Scenes/Scene1.tscn')
