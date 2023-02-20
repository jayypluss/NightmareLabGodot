extends OmniLight3D

@onready var hide_timer: Timer = $HideTimer
@onready var show_timer: Timer = $ShowTimer
@onready var re_hide_timer: Timer = $ReHideTimer
@onready var re_show_timer: Timer = $ReShowTimer

var will_blink: bool = true

func _ready():
	hide_timer.start()


func _on_blinking_timer_timeout():
	if visible:
		hide()
	hide_timer.wait_time = randf_range(3, 7)
	show_timer.start()
	will_blink = randi_range(0, 1)
	print('will_blink: ', will_blink)

func _on_show_timer_timeout():
	if !visible:
		show()
	if will_blink:
		re_hide_timer.start()

func _on_re_hide_timer_timeout():
	if visible:
		hide()
	if will_blink:
		re_show_timer.start()

func _on_re_show_timer_timeout():
	if !visible:
		show()
