@tool

class_name WorldMarker
extends Marker3D
## Used to place markers and waypoints in the world, for various purposes.


@export var ref_id:StringName = ""
@export var instance:MarkerInstance = MarkerInstance.new()


func _ready() -> void:
	if not Engine.is_editor_hint():
		queue_free()


func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		instance.rotation = quaternion
		instance.position = global_position
