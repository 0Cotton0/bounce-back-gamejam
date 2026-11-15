extends CharacterBody2D

class_name Player

@export var move_speed: float = 100
@export var accelaration: float = 10
@export var push_strenght: float = 500
@export var is_animation: bool = false

var can_interact: bool = false



# Called when the node enters the scene tree for the first time.
func _ready():
	
	if SceneManager.player_spawn_position != Vector2(0,0):
		position = SceneManager.player_spawn_position
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_player()
	move_and_slide()
	move_block()
	
	
func move_player():
	var move_vector: Vector2 = Input.get_vector("left", "right", "up", "down")
	
	velocity = velocity.move_toward(move_vector * move_speed, accelaration)
	
	if velocity.x > 0: 
		$AnimatedSprite2D.play("move_right")
		$Interact.position = Vector2(8, 1)
	
	elif velocity.x < 0:
		$AnimatedSprite2D.play("move_left")
		$Interact.position = Vector2(-8, 1)
	
	elif velocity.y < 0:
		$AnimatedSprite2D.play("move_up")
		$Interact.position = Vector2(0, -8)
	
	elif velocity.y > 0:
		$AnimatedSprite2D.play("move_down")
		$Interact.position = Vector2(0, 8)
	
	else:
		$AnimatedSprite2D.stop()
		
func move_block():
	
	var collision: KinematicCollision2D = get_last_slide_collision()
	if collision:
		
		var collider_node = collision.get_collider()
		
		if collider_node.is_in_group("Pushable"):
			print(collider_node.name)
			var collision_normal: Vector2 = collision.get_normal()
			
			collider_node.apply_central_force(-collision_normal * push_strenght)
	
