extends Node2D

var player_near := false

@onready var chat_label := $KeyChat

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player_near = true
		chat_label.visible = true
		chat_label.text = "Press E to talk"

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		player_near = false
		chat_label.visible = false

func _process(delta):
	if player_near and Input.is_action_just_pressed("interact"):
		chat_label.text = "Be careful. The dog will chase you if you get too close."
