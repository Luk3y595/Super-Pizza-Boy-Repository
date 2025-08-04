extends Node2D

var bowl_click_count = 0

@onready var dough = $Dough
@onready var flour_bowl = $FlourBowl/Area2D
@onready var water_bowl = $WaterBowl/Area2D

func _ready():
	dough.visible = false
	flour_bowl.bowl_clicked.connect(Callable(self, "_on_bowl_clicked"))
	water_bowl.bowl_clicked.connect(Callable(self, "_on_bowl_clicked"))
	
func _on_bowl_clicked():
	if bowl_click_count < 2:
		bowl_click_count += 1
		if bowl_click_count == 2:
			await get_tree().create_timer(0.5).timeout
			dough.visible = true
