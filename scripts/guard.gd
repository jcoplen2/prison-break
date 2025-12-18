extends CharacterBody2D

func _on_detection_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/lose.tscn")

# NavMesh will be added once the final level is complete 
