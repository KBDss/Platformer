extends Node2D


func _ready():
	$AnimationPlayerDoor.play("ButtonUp")
	$AnimationPlayer.play("DoorClosed")


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		$AnimationPlayerDoor.play("ButtonDown")
		$AnimationPlayer.play("DoorOpen")
		
