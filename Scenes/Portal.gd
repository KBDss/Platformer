extends Node2D


func _ready():
	$AnimationPlayer.play("idle")


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		$AnimationPlayer.play("Teleport")
		yield($AnimationPlayer,"animation_finished")
		get_tree().change_scene("res://Scenes/EndMenu.tscn")
