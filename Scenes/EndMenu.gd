extends Control


func _ready():
	$CanvasLayer/Label.text = GameStats.get_time()


func _on_Quit_pressed():
	get_tree().quit()
