extends Node2D

@onready var left_cannon: Marker2D = $LeftCannon
@onready var right_cannon: Marker2D = $RightCannon
@onready var spawner_component: SpawnerComponent = $SpawnerComponent as SpawnerComponent
@onready var fire_rate_timer: Timer = $FireRateTimer

func _ready() -> void:
	fire_rate_timer.timeout.connect(fire_lasers)

func fire_lasers() -> void:
	spawner_component.spawn(left_cannon.global_position)
	spawner_component.spawn(right_cannon.global_position)
