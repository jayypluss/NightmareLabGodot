extends Node3D

@onready var light: SpotLight3D = $SpotLight3D

func trigger1():
	if light and light.visible:
		light.hide()
	elif light and !light.visible:
		light.show()
