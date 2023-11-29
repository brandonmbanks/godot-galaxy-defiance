extends Node2D

@onready var move_component:= $MoveComponent as MoveComponent
@onready var stats_component:= $StatsComponent as StatsComponent
@onready var scale_component := $ScaleComponent as ScaleComponent
@onready var flash_component := $FlashComponent as FlashComponent
@onready var shake_component := $ShakeComponent as ShakeComponent

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
