extends Area2D

@onready var _water = $AnimatedSprite2D

func play_start_animation():
	_water.pause()

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_water.play()
