extends Node2D

@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D
@onready var scale_component: ScaleComponent = $ScaleComponent as ScaleComponent
@onready var flash_component: FlashComponent = $FlashComponent as FlashComponent

func _ready() -> void:
	# make larger when created
	scale_component.tween_scale()
	# flash on spawn
	flash_component.flash()
	# when the lasers go off the screen we need to remove them from memory
	# we are can use the VisibleOnScreenNotifier2D to get a signal when they
	# go off screen
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
