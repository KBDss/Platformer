extends Node2D


var timer = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Idle")



func _on_BirdTimer_timeout():
	timer = true
	

	if timer = false:
		$AnimationPlayer.play("Eating")


