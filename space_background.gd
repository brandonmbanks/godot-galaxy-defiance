extends ParallaxBackground

@onready var move_component: MoveComponent = $MoveComponent as MoveComponent
@onready var space_layer: ParallaxLayer = $SpaceLayer
@onready var distant_stars_layer: ParallaxLayer = $DistantStarsLayer
@onready var stars_layer: ParallaxLayer = $StarsLayer

func _process(delta: float) -> void:
	# slightly move stars left and right during ship movement
	if move_component.velocity.x > 0:
		distant_stars_layer.motion_offset.x += 2 * delta
		stars_layer.motion_offset.x += 5 * delta
	elif move_component.velocity.x < 0:
		distant_stars_layer.motion_offset.x -= 2 * delta
		stars_layer.motion_offset.x -= 5 * delta

	# paralax scrolling effect
	space_layer.motion_offset.y += 2 * delta
	distant_stars_layer.motion_offset.y += 5 * delta
	stars_layer.motion_offset.y += 20 * delta
