extends Area2D

@onready var _Water = get_node("../Full_Bowl_Of_Water")
@onready var _Empty_Water = get_node("../Empty_Bowl_Of_Water")

func _ready() -> void:
	get_node(_Water).visible = true
	get_node(_Empty_Water).visible = false

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_node(_Water).visible = false
		get_node(_Empty_Water).visible = true
