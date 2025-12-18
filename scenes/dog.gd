extends CharacterBody2D

@export var speed := 120.0
var target: Node2D = null

@onready var sprite := $AnimatedSprite2D

func _on_detection_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		target = body

func _physics_process(delta):
	if target:
		var direction = (target.global_position - global_position).normalized()
		velocity = direction * speed
		move_and_slide()

		sprite.flip_h = direction.x < 0
	else:
		velocity = Vector2.ZERO
		
func _on_catch_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/lose.tscn")
