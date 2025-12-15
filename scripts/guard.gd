extends CharacterBody2D

func _on_detection_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.emit_signal("caught")
