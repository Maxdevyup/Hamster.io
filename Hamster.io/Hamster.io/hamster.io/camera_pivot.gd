extends Node3D
var direction = Vector3.ZERO# Doesn't have any use
@onready var cam = $Camera3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Rotate_left"):
		rotation.y -= 1.0 * delta
	if Input.is_action_pressed("Rotate_right"):
		rotation.y += 1.0 * delta
	if Input.is_action_pressed("Z_test") :
		if cam.position.z >= -1.5:
			cam.position.z -= 15 * delta
	if Input.is_action_pressed("S_test") :
		if cam.position.z <= +50:
			cam.position.z += 15 * delta
