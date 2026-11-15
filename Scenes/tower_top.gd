extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(load('res://Dialogue.dialogue'))

	
	$AurinkoAnimation.position = Vector2(-100,-3)
	$kuutamo_animation.position = Vector2(-76,-3)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


	
