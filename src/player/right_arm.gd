extends Node3D

@onready var holding_item = $HoldingItem


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('click'):
		holding_item.get_child(0).trigger1()
