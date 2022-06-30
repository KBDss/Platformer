extends KinematicBody2D

export (int) var speed = 120
export (int) var junp_speed = -180
export (int) var gravity = 400
export (int) var slide_speed = 400

var velocity = Vector2.ZERO

export(float) var friction = 10
export(float) var acceleration = 25


enum state {Idle, Running, Pushing, Rolling, Jump, fall, Attack}


func _ready():
	$AnimationPlayer.play("Idle")
	pass
