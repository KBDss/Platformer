extends Node2D


func _ready():
	$CanvasLayer/Label.text = GameStats.get_time()
