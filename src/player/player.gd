@tool
class_name Player
extends CharacterBody3D
# Helper class for the Player scene's scripts to be able to have access to the
# camera and its orientation.

@onready var camera: Camera3D = %Camera3D

func _ready():
	GameState.player = self
	check_everything_is_not_null()

func check_everything_is_not_null():
	if !camera:
		print('camera is null')

func _get_configuration_warnings() -> PackedStringArray:
	if not camera:
		return PackedStringArray(["Missing camera node"])
	else:
		return []
