extends Node3D

var speed = 1.0
@onready var camera = $Camera3D

var SpeechBalloon = preload("res://speech_balloon.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range (10):
		var instance = SpeechBalloon.instantiate()
		add_child(instance)
		instance.position = Vector3(randf() * 3.0, randf() * 3.0, randf() * 3.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	camera.translate(Vector3(0, 0, speed * delta))
