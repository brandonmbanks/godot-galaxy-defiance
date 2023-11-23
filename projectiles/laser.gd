extends Node2D

@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D

func _ready() -> void:
	# when the lasers go off the screen we need to remove them from memory
	# we are can use the VisibleOnScreenNotifier2D to get a signal when they
	# go off screen
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
