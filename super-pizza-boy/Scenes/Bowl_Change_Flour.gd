extends Area2D

signal bowl_clicked

@onready var _flour = $AnimatedSprite2D

func play_start_animation():
	_flour.pause()

func _on_input_event_flour(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_flour.play()
		emit_signal("bowl_clicked")
