extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimatedSprite2D.play("default")


func _on_play_pressed():
	get_tree().change_scene_to_file('res://Scenes/tower_top.tscn')



func _on_controls_pressed() -> void:
	get_tree().quit()


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file('res://Characters/controls.tscn')
